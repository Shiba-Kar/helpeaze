import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:helpeaze/widgets/widgets.dart';

import '../widgets/widgets.dart';

class RegistrationView extends StatefulWidget {
  const RegistrationView({Key? key}) : super(key: key);

  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
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
  onRegister() {
    if (_formKey.currentState?.saveAndValidate() ?? false) {}
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
        bottom: const ButtomBar(),
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
                    CustomTextField(
                      hintText: "Full Name",
                      validator: FormBuilderValidators.compose(
                          [FormBuilderValidators.required()]),
                      name: "fname",
                      prefixIcon: const Icon(Icons.person),
                    ),
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
                      hintText: "Email",
                      prefixIcon: Icon(Icons.mail),
                      name: "email",
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                        FormBuilderValidators.email()
                      ]),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    CustomGroupRadioButtons(
                      hintText: "Blood Group",
                      prefixIcon: const Icon(Icons.bloodtype),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                      ]),
                      name: "bloodG",
                      items: _bloodGroup,
                    ),
                    CustomTextField(
                      hintText: "City",
                      prefixIcon: Icon(Icons.location_city),
                      name: "city",
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                      ]),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      leading: Checkbox(
                        onChanged: (value) =>
                            setState(() => agrement = value ?? false),
                        value: agrement,
                      ),
                      title: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  "By registring, I agree to the terms and conditions",
                              style: TextStyle(
                                fontSize: 10.sp,
                              ),
                            ),
                            TextSpan(
                              text: " Help Eaze",
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary),
                            )
                          ],
                          style: TextStyle(
                            fontSize: 11.sp,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: onRegister,
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                      ),
                      child: const Text("Pay & Register"),
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
