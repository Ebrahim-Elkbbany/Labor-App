import 'package:flutter/material.dart';
import 'package:labor_app/features/select_language/presentation/views/widgets/select_language_view_body.dart';

class SelectLanguageView extends StatelessWidget {
  const SelectLanguageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SelectLanguageViewBody(),
    );
  }
}
