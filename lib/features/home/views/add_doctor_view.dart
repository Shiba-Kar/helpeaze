import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/widgets.dart';
import '../../auth/widgets/widgets.dart';
import '../widgets/widgets.dart';

class AddDoctorView extends StatefulWidget {
  const AddDoctorView({Key? key}) : super(key: key);

  @override
  State<AddDoctorView> createState() => _AddDoctorViewState();
}

class _AddDoctorViewState extends State<AddDoctorView> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.beamBack(),
        ),
        toolbarHeight: 100.h,
        centerTitle: true,
        title: SizedBox(
          width: 150.w,
          child: Image.asset('assets/icons/logo-01.png'),
        ),
        bottom: const ButtomBar(title: "Add Doctor"),
        actions: [
          IconButton(
              onPressed: null,
              icon: SizedBox(
                height: 20.w,
                width: 20.w,
                child: Image.asset('assets/icons/notifications.png'),
              ))
        ],
      ),
      body: FormBuilder(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(9.w),
            child: Column(
              children: [
                CustomTextField(
                  hintText: "Doctor Name",
                  name: "dname",
                  suffixIcon: Image.asset('assets/icons/stethoscope.png'),
                ),
                CustomTextField(
                  hintText: "Mobile No.",
                  name: "mno",
                  suffixIcon: Image.asset('assets/icons/smartphone.png'),
                ),
                CustomTextField(
                  hintText: "Landline No.",
                  suffixIcon: Image.asset('assets/icons/smartphone.png'),
                  name: '',
                ),
                CustomTextField(
                  hintText: "Pression",
                  name: "profession",
                  suffixIcon: Image.asset('assets/icons/health-care.png'),
                ),
                CustomTextField(
                  hintText: "Address",
                  name: "address",
                  suffixIcon: Image.asset('assets/icons/apartment.png'),
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
                    child: const Text("Add"),
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
