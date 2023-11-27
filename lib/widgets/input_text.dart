import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  const InputText({
    required this.onChanged,
    this.hintText = 'Грн.',
    this.initialValue,
    this.labelText,
    this.icon,
    this.cursorColor = Colors.deepPurple,
    super.key,
  });

  final Function(String) onChanged;
  final String? hintText;
  final String? labelText;
  final Widget? icon;
  final String? initialValue;
  final Color? cursorColor;

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white10.withOpacity(0.02),
        ),
        child: TextFormField(
          initialValue: initialValue,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            icon: icon,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            hintStyle: Theme.of(context).textTheme.bodySmall,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          strutStyle: const StrutStyle(
            fontSize: 14,
            height: 1.5,
          ),
          cursorColor: cursorColor,
          style: Theme.of(context).textTheme.bodyMedium,
          keyboardType: TextInputType.multiline,
          maxLines: null,
        ),
      );
}
