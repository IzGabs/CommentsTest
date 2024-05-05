// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../app_text_form_field.dart';

class BSheetFieldSection extends StatelessWidget {
  final String title;
  final String hint;
  final void Function(String?)? onSaved;

  const BSheetFieldSection({
    Key? key,
    this.onSaved,
    required this.title,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.bodyLarge),
        AppTextFormField(hint: hint, onSaved: onSaved),
      ],
    );
  }
}
