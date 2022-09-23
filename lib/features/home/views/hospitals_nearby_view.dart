import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:helpeaze/widgets/custom_text_field.dart';

import '../../auth/widgets/buttom_bar.dart';
import '../widgets/widgets.dart';

class HospitalsNearbyView extends StatefulWidget {
  const HospitalsNearbyView({Key? key}) : super(key: key);

  @override
  State<HospitalsNearbyView> createState() => _HospitalsNearbyViewState();
}

class _HospitalsNearbyViewState extends State<HospitalsNearbyView> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> hosp = [
      {"title": "Hospital 1", "subtitle": "Hospital 1"},
      {"title": "Hospital 2", "subtitle": "Hospital 2"},
      {"title": "Hospital 3", "subtitle": "Hospital 3"},
      {"title": "Hospital 1", "subtitle": "Hospital 1"},
      {"title": "Hospital 2", "subtitle": "Hospital 2"},
      {"title": "Hospital 3", "subtitle": "Hospital 3"},
      {"title": "Hospital 1", "subtitle": "Hospital 1"},
      {"title": "Hospital 2", "subtitle": "Hospital 2"},
      {"title": "Hospital 3", "subtitle": "Hospital 3"},
      {"title": "Hospital 1", "subtitle": "Hospital 1"},
      {"title": "Hospital 2", "subtitle": "Hospital 2"},
      {"title": "Hospital 3", "subtitle": "Hospital 3"},
      {"title": "Hospital 1", "subtitle": "Hospital 1"},
      {"title": "Hospital 2", "subtitle": "Hospital 2"},
      {"title": "Hospital 3", "subtitle": "Hospital 3"},
      {"title": "Hospital 1", "subtitle": "Hospital 1"},
      {"title": "Hospital 2", "subtitle": "Hospital 2"},
      {"title": "Hospital 3", "subtitle": "Hospital 3"}
    ];

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
        bottom: const ButtomBar(title: "Hospitals Nearby"),
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
      body: CustomScrollView(
        slivers: [
          /* SliverPersistentHeader(
                pinned: true,
                floating: true,
                delegate: HeaderDelegate(
                  child: const Text("shiva"),
                  maxHeight: 50.h,
                  minHeight: 0.h,
                ),
              ), */
          SliverAppBar(
            // pinned: true,
            leading: const SizedBox(),
            leadingWidth: 0.0,
            toolbarHeight: 70.h,
            floating: true,
            backgroundColor: Theme.of(context).canvasColor,
            title: Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomTextField(
                hintText: "Search",
                name: "name",
                fillColor: Theme.of(context).cardColor,
                suffixIcon: const Icon(Icons.search),
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 80.h, // I'm forcing item heights
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(hosp[index]['title']),
                    subtitle: Text(hosp[index]['subtitle']),
                    trailing: Container(
                      height: 20.w,
                      width: 20.w,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icons/emergency-call.png'),
                        ),
                      ),
                    ),
                  ),
                );
              },
              childCount: hosp.length,
            ),
          ),
        ],
      ),
    );
  }
}
