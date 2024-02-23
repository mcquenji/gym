import 'package:advanced_icon/advanced_icon.dart';
import 'package:flutter/material.dart';
import 'package:gym/shared/shared.dart';

class FilterOption<T> extends StatefulWidget {
  const FilterOption({
    super.key,
    required this.context,
    required this.values,
    required this.selectedValue,
    required this.onChanged,
    required this.localize,
    required this.title,
    required this.icon,
  });

  final BuildContext context;
  final List<T> values;
  final T? selectedValue;
  final void Function(T?) onChanged;
  final String Function(T) localize;
  final String title;
  final IconData icon;

  @override
  State<FilterOption<T>> createState() => _FilterOptionState<T>();
}

class _FilterOptionState<T> extends State<FilterOption<T>> {
  T? selected;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return DropdownMenu<T?>(
        label: Text(widget.title),
        onSelected: (value) {
          setState(() {
            selected = value;
          });

          widget.onChanged(value);
        },
        leadingIcon: AdvancedIcon(
          icon: widget.icon,
          gradient: context.theme.gradients.primaryGradient.linear,
        ),
        initialSelection: widget.selectedValue,
        width: constraints.maxWidth,
        dropdownMenuEntries: [
          DropdownMenuEntry(
            value: null,
            label: context.l10n.searchExercises_filterOption_none,
          ),
          for (var value in widget.values)
            DropdownMenuEntry(
              value: value,
              label: widget.localize(value),
            ),
        ],
      );
    });
  }
}
