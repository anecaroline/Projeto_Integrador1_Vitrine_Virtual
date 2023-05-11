import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(child: SizedBox(width: 80, height: 80, child: CircularProgressIndicator()));
  }
}
