import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:helpeaze/widgets/widgets.dart';
import '../widgets/widgets.dart';
import 'package:beamer/beamer.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormBuilderState>();
  bool agrement = false;
  final List<DropdownMenuItem<String>> _bloodGroup = const [
    DropdownMenuItem(value: 'A+', child: Text("A+")),
    DropdownMenuItem(value: 'O+', child: Text("O+")),
    DropdownMenuItem(value: 'B+', child: Text("B+")),
    DropdownMenuItem(value: 'AB+', child: Text("AB+")),
    DropdownMenuItem(value: 'A-', child: Text("A-")),
    DropdownMenuItem(value: 'O-', child: Text("O-")),
    DropdownMenuItem(value: 'B-', child: Text("B-")),
    DropdownMenuItem(value: 'AB-', child: Text("AB-")),
  ];
  onLogIn() {
    if (_formKey.currentState?.saveAndValidate() ?? false) {}
    context.beamToNamed('/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.h,
        actions: [
          Container(
            padding: EdgeInsets.all(10.w),
            width: 150.w,
            child: Image.asset('assets/icons/logo-01.png'),
          )
        ],
        bottom: const ButtomBar(
          title: "Login",
        ),
      ),
      body: FormBuilder(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 500.h,
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Column(
                  children: [
                    SizedBox(height: 100.h),
                    CustomTextField(
                      hintText: "Phone No.",
                      name: "phone",
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                        FormBuilderValidators.integer()
                      ]),
                      prefixIcon: const Icon(Icons.phone),
                      keyboardType: TextInputType.phone,
                    ),
                    CustomTextField(
                      hintText: "Otp",
                      prefixIcon: const Icon(Icons.mail),
                      name: "otp",
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                        FormBuilderValidators.numeric()
                      ]),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    // const Spacer(),
                    SizedBox(
                      width: 150.w,
                      child: ElevatedButton(
                        onPressed: onLogIn,
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                        child: const Text("Login"),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
