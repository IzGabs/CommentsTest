import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  final String hint;
  final void Function(String?)? onSaved;

  const AppTextFormField({
    super.key,
    this.onSaved,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: TextFormField(
        onSaved: onSaved,
        validator: (value) {
          return (value ?? '').isEmpty ? 'Fill all fields' : null;
        },
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: Theme.of(context).textTheme.bodyMedium,
          border: const OutlineInputBorder(
            borderSide: BorderSide(width: 1),
          ),
        ),
      ),
    );
  }
}
