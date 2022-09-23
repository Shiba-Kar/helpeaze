import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../auth/widgets/buttom_bar.dart';

class OrganDonationView extends StatefulWidget {
  const OrganDonationView({Key? key}) : super(key: key);

  @override
  State<OrganDonationView> createState() => _OrganDonationViewState();
}

class _OrganDonationViewState extends State<OrganDonationView> {
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
        bottom: const ButtomBar(title: "Organ Donation"),
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
        child: const Center(
          child: Text("comming soon"),
        ),
      ),
    );
  }
}
