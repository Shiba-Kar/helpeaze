import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:helpeaze/widgets/custom_text_field.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../../core/core.dart';
import '../../auth/widgets/buttom_bar.dart';
import '../providers/providers.dart';
import '../widgets/widgets.dart';

class BookAmbulanceView extends StatefulWidget {
  const BookAmbulanceView({Key? key}) : super(key: key);

  @override
  State<BookAmbulanceView> createState() => _BookAmbulanceViewState();
}

class _BookAmbulanceViewState extends State<BookAmbulanceView> {
  final _formKey = GlobalKey<FormBuilderState>();
  bool fetchingLocation = false;
  fetchLocation() async {
    try {
      setState(() => fetchingLocation = true);
      var address = await LocationService.getNameOftheLocation();
      _formKey.currentState?.fields['location']?.didChange(
          "${address.subAdministrativeArea ?? ""}, ${address.postalCode ?? ""}");
    } catch (e) {
      showT(msg: e.toString(), type: "error", gravity: ToastGravity.BOTTOM);
    }

    setState(() => fetchingLocation = false);
  }

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
        bottom: const ButtomBar(title: "Book Ambulance"),
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
                  hintText: "Location",
                  name: "location",
                  suffixIcon: !fetchingLocation
                      ? IconButton(
                          onPressed: fetchLocation,
                          icon: const Icon(Icons.place),
                        )
                      : SizedBox(
                          width: 0,
                          height: 0,
                          child: SpinKitThreeBounce(
                            size: 15.w,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                ),
                Row(
                  children: const [
                    Expanded(
                      child: DateTimePickerField(
                        hintText: "Start Date",
                        name: "sdate",
                        suffixIcon: Icon(Icons.calendar_month_outlined),
                      ),
                    ),
                    Expanded(
                      child: DateTimePickerField(
                        hintText: "Start Time",
                        name: "stime",
                        suffixIcon: Icon(Icons.timer),
                        inputType: InputType.time,
                      ),
                    )
                  ],
                ),
                CustomTextField(
                  hintText: "Appartment Name / Home no.",
                  name: "appName",
                  suffixIcon: IconButton(
                    onPressed: fetchLocation,
                    icon: const Icon(Icons.home),
                  ),
                ),
                CustomTextField(
                  hintText: "Phone no.",
                  name: "phone",
                  suffixIcon: IconButton(
                    onPressed: fetchLocation,
                    icon: const Icon(Icons.phone),
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
                    child: const Text("Book"),
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
