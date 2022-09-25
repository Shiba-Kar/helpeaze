import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:helpeaze/features/home/widgets/widgets.dart';
import 'package:helpeaze/widgets/widgets.dart';

import '../../auth/widgets/buttom_bar.dart';

class MyMedicalHistoryView extends StatefulWidget {
  const MyMedicalHistoryView({Key? key}) : super(key: key);

  @override
  State<MyMedicalHistoryView> createState() => _MyMedicalHistoryViewState();
}

class _MyMedicalHistoryViewState extends State<MyMedicalHistoryView> {
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
        bottom: const ButtomBar(title: "My Medical History"),
        actions: [
          IconButton(
            onPressed: null,
            icon: SizedBox(
              height: 20.w,
              width: 20.w,
              child: Image.asset('assets/icons/notifications.png'),
            ),
          )
        ],
      ),
      body: FormBuilder(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              children: [
                const SizedBox(height: 20.0),
                CustomTextField(
                  hintText: "Ilness Name",
                  validator: FormBuilderValidators.compose(
                      [FormBuilderValidators.required()]),
                  name: "fname",
                  suffixIcon: Image.asset('assets/icons/illness.png'),
                ),
                CustomTextField(
                  hintText: "Doctor name",
                  name: "phone",
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.integer()
                  ]),
                  suffixIcon: Image.asset('assets/icons/stethoscope.png'),
                  keyboardType: TextInputType.phone,
                ),
                CustomTextField(
                  hintText: "Medicine Name",
                  suffixIcon: Image.asset('assets/icons/medicine.png'),
                  name: "email",
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.email()
                  ]),
                  keyboardType: TextInputType.emailAddress,
                ),
                DateTimePickerField(
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                  name: "ldvd",
                  suffixIcon: Image.asset('assets/icons/calendar.png'),
                  hintText: "Last Doctor Visit Date",
                ),
                //  const Spacer(),
                // SizedBox(height: 20.h),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.w),
                    child: const Text("Upload medical reports"),
                  ),
                  subtitle: const FilePickerField(
                    hintText: "Attachments",
                    name: "files",
                    suffixIcon: Icon(Icons.file_copy),
                  ),
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
