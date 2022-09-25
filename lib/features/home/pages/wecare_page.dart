import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/widgets.dart';
import '../../auth/widgets/buttom_bar.dart';
import '../widgets/widgets.dart';

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
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(9.w),
            child: Column(
              children: [
                const CustomTextField(
                  hintText: "Email",
                  name: "email",
                  keyboardType: TextInputType.emailAddress,
                  suffixIcon: Icon(Icons.mail),
                ),
                const CustomTextField(
                  hintText: "Comments",
                  suffixIcon: Icon(Icons.message),
                  maxLines: 8,
                  name: "comments",
                ),
                SizedBox(
                  width: 100.w,
                  child: ElevatedButton(
                    onPressed: () => {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                    child: const Text("Submit"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
