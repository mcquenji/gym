import 'package:advanced_icon/advanced_icon.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym/features/exercises/exercises.dart';
import 'package:gym/shared/shared.dart';
import 'package:flutter/material.dart';

@RoutePage<Exercise?>()
class SearchExercisesScreen extends ConsumerStatefulWidget {
  const SearchExercisesScreen({super.key, this.title});

  final String? title;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SearchExercisesScreenState();
}

class _SearchExercisesScreenState extends ConsumerState<SearchExercisesScreen> {
  final searchController = TextEditingController();

  @override
  void initState() {
    super.initState();

    searchController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    var exercises = ref.watch(exercisesProvider);

    return Scaffold(
      appBar: widget.title != null ? TitleBar(title: widget.title!) : null,
      body: exercises.when(
        data: (exercises) {
          final matchingExercises = exercises.filterBy(
            name: searchController.text.toLowerCase(),
          );

          return Column(
            children: [
              Padding(
                padding:
                    const PaddingAll().Top(widget.title != null ? null : 50),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: context.theme.shadows.defaultShadow,
                  ),
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: context.l10n.searchExercises_placeholder,
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: AdvancedIcon(
                        icon: IconlyLight.filter,
                        gradient:
                            context.theme.gradients.primaryGradient.linear,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.separated(
                  padding: const PaddingLeft().Right().Bottom(),
                  itemCount: matchingExercises.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 16),
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      context.router.pop(matchingExercises[index]);
                    },
                    child: ExerciseCard(
                      exercise: matchingExercises[index],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
        loading: () => const Center(
          child: CircularProgressIndicator(
            strokeCap: StrokeCap.round,
          ),
        ),
        error: (_, __) => Center(
          child: Icon(
            IconlyBroken.danger,
            color: context.theme.colorScheme.error,
          ),
        ),
      ),
    );
  }
}
