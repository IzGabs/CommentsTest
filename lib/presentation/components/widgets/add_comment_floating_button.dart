import 'package:dev_test_1/presentation/components/add_comment_bsheet.dart';
import 'package:dev_test_1/presentation/cubit/home_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddCommentFloatingButton extends StatelessWidget {
  const AddCommentFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomePageCubit>();

    return FloatingActionButton(
      shape: const CircleBorder(),
      backgroundColor: const Color(0xFF4b39ef),
      child: const Icon(Icons.add, color: Colors.white),
      onPressed: () {
        showModalBottomSheet(
          isDismissible: true,
          isScrollControlled: true,
          context: context,
          builder: (context) => AddCommentBSheet(cubit),
        );
      },
    );
  }
}
