import 'package:advanced_icon/advanced_icon.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym/features/exercises/exercises.dart';
import 'package:gym/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

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

  MuscleGroup? primaryMuscle;
  MuscleGroup? secondaryMuscle;
  ExerciseEquipment? equipment;
  ExerciseCategory? category;
  ExerciseForce? force;
  ExerciseLevel? level;
  ExerciseMechanic? mechanic;

  @override
  void initState() {
    super.initState();

    searchController.addListener(() {
      setState(() {});
    });
  }

  void showFilterOptions() {
    showModalBottomSheet(
      isScrollControlled: true,
      showDragHandle: true,
      context: context,
      builder: (context) => Container(
        width: double.infinity,
        padding: const PaddingHorizontal().Bottom(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FilterOption(
                context: context,
                values: MuscleGroup.values,
                onChanged: (value) {
                  setState(() {
                    primaryMuscle = value;
                  });
                },
                selectedValue: primaryMuscle,
                localize: (value) => value.localize(context),
                title: context.l10n.searchExercises_primaryMuscle,
                icon: IconlyBroken.category,
              ),
              const SizedBox(height: 10),
              FilterOption(
                context: context,
                values: MuscleGroup.values,
                onChanged: (value) {
                  setState(() {
                    secondaryMuscle = value;
                  });
                },
                selectedValue: secondaryMuscle,
                localize: (value) => value.localize(context),
                title: context.l10n.searchExercises_secondaryMuscle,
                icon: IconlyLight.moreSquare,
              ),
              const SizedBox(height: 10),
              FilterOption(
                context: context,
                values: ExerciseEquipment.values,
                onChanged: (value) {
                  setState(() {
                    equipment = value;
                  });
                },
                selectedValue: equipment,
                localize: (value) => value.localize(context),
                title: context.l10n.searchExercises_equipment,
                icon: Ionicons.barbell,
              ),
              const SizedBox(height: 10),
              FilterOption(
                context: context,
                values: ExerciseCategory.values,
                onChanged: (value) {
                  setState(() {
                    category = value;
                  });
                },
                selectedValue: category,
                localize: (value) => value.localize(context),
                title: context.l10n.searchExercises_category,
                icon: Ionicons.fitness,
              ),
              const SizedBox(height: 10),
              FilterOption(
                context: context,
                values: ExerciseForce.values,
                onChanged: (value) {
                  setState(() {
                    force = value;
                  });
                },
                selectedValue: force,
                localize: (value) => value.localize(context),
                title: context.l10n.searchExercises_force,
                icon: IconlyLight.discovery,
              ),
              const SizedBox(height: 10),
              FilterOption(
                context: context,
                values: ExerciseLevel.values,
                onChanged: (value) {
                  setState(() {
                    level = value;
                  });
                },
                selectedValue: level,
                localize: (value) => value.localize(context),
                title: context.l10n.searchExercises_level,
                icon: IconlyLight.heart,
              ),
              const SizedBox(height: 10),
              FilterOption(
                context: context,
                values: ExerciseMechanic.values,
                onChanged: (value) {
                  setState(() {
                    mechanic = value;
                  });
                },
                selectedValue: mechanic,
                localize: (value) => value.localize(context),
                title: context.l10n.searchExercises_mechanic,
                icon: IconlyLight.show,
              ),
            ],
          ),
        ),
      ),
    );
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
            mechanic: mechanic,
            level: level,
            force: force,
            category: category,
            equipment: equipment,
            primaryMuscle: primaryMuscle,
            secondaryMuscle: secondaryMuscle,
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
                      suffixIcon: GestureDetector(
                        onTap: showFilterOptions,
                        child: AdvancedIcon(
                          icon: IconlyLight.filter,
                          gradient:
                              context.theme.gradients.primaryGradient.linear,
                        ),
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
