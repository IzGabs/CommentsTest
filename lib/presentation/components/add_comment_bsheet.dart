import 'package:dev_test_1/domain/comment.dart';
import 'package:dev_test_1/presentation/components/widgets/bsheet_field_section.dart';
import 'package:dev_test_1/presentation/cubit/home_page_cubit.dart';
import 'package:flutter/material.dart';

class AddCommentBSheet extends StatefulWidget {
  final HomePageCubit cubit;
  const AddCommentBSheet(this.cubit, {super.key});

  @override
  State<AddCommentBSheet> createState() => _AddCommentBSheetState();
}

class _AddCommentBSheetState extends State<AddCommentBSheet> {
  final formKey = GlobalKey<FormState>();
  String? title;
  String? description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: BottomSheet(
        onClosing: () {},
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Add Comment',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 20),
                  BSheetFieldSection(
                    title: 'Comment Title',
                    hint: 'Enter your comment here',
                    onSaved: (p0) => title = p0,
                  ),
                  BSheetFieldSection(
                    title: 'Description',
                    hint: 'Enter your comment description here',
                    onSaved: (p0) => description = p0,
                  ),
                  _bsheetActionButton(context),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Center _bsheetActionButton(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .5,
          child: FilledButton(
            style: Theme.of(context).elevatedButtonTheme.style,
            child: const Text('Add'),
            onPressed: () {
              if (formKey.currentState?.validate() ?? false) {
                formKey.currentState?.save();

                final newComment = Comment(
                  title: title!,
                  description: description!,
                );

                widget.cubit.add(newComment);
                Navigator.of(context).pop();
              }
            },
          ),
        ),
      ),
    );
  }
}
