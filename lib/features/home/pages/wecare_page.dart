import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../auth/widgets/buttom_bar.dart';

class WecarePage extends StatefulWidget {
  const WecarePage({Key? key}) : super(key: key);

  @override
  State<WecarePage> createState() => _WecarePageState();
}

class _WecarePageState extends State<WecarePage> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FormBuilder(
        key: _formKey,
        child: Column(
          children: const [Text("data")],
        ),
      ),
    );
  }
}
