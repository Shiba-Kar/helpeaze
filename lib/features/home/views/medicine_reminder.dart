import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../../widgets/widgets.dart';
import '../../auth/widgets/widgets.dart';
import '../widgets/widgets.dart';

class MedicineReminder extends StatefulWidget {
  const MedicineReminder({Key? key}) : super(key: key);

  @override
  State<MedicineReminder> createState() => _MedicineReminderState();
}

class _MedicineReminderState extends State<MedicineReminder> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  build(BuildContext context) {
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
        bottom: const ButtomBar(title: "Add Medicine Reminder"),
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
                  hintText: "Medicine Name",
                  name: "mname",
                  suffixIconConstraints: BoxConstraints(
                    minHeight: 20.w,
                    maxWidth: 20.w,
                  ),
                  suffixIcon: Image.asset('assets/icons/medicine.png'),
                ),
                Row(
                  children: [
                    const Expanded(
                      child: DateTimePickerField(
                        hintText: "Start Date",
                        name: "sdate",
                        suffixIcon: Icon(Icons.calendar_month_outlined),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    const Expanded(
                      child: DateTimePickerField(
                        hintText: "Start Time",
                        name: "stime",
                        suffixIcon: Icon(Icons.timer),
                        inputType: InputType.time,
                      ),
                    )
                  ],
                ),
                ListTile(
                  trailing: SizedBox(
                    // color: Colors.red,
                    height: 20.w,
                    width: 80.w,
                    child: Row(
                      //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/icons/plus.png'),
                        const Spacer(),
                        const Text("Add Time"),
                      ],
                    ),
                  ),
                ),
                const CustomTextField(
                  hintText: "No. of days",
                  name: "appName",
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
