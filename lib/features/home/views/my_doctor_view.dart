import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/widgets.dart';
import '../../auth/widgets/buttom_bar.dart';

class MyDoctorView extends StatefulWidget {
  const MyDoctorView({Key? key}) : super(key: key);

  @override
  State<MyDoctorView> createState() => _MyDoctorViewState();
}

class _MyDoctorViewState extends State<MyDoctorView> {
  final List<Map<String, dynamic>> hosp = [
    {"title": "Doctor 1", "subtitle": "Doctor 1"},
    {"title": "Doctor 2", "subtitle": "Doctor 2"},
    {"title": "Doctor 3", "subtitle": "Doctor 3"},
    {"title": "Doctor 1", "subtitle": "Doctor 1"},
    {"title": "Doctor 2", "subtitle": "Doctor 2"},
    {"title": "Doctor 3", "subtitle": "Doctor 3"},
    {"title": "Doctor 1", "subtitle": "Doctor 1"},
    {"title": "Doctor 2", "subtitle": "Doctor 2"},
    {"title": "Doctor 3", "subtitle": "Doctor 3"},
    {"title": "Doctor 1", "subtitle": "Doctor 1"},
    {"title": "Doctor 2", "subtitle": "Doctor 2"},
    {"title": "Doctor 3", "subtitle": "Doctor 3"},
    {"title": "Doctor 1", "subtitle": "Doctor 1"},
    {"title": "Doctor 2", "subtitle": "Doctor 2"},
    {"title": "Doctor 3", "subtitle": "Doctor 3"},
    {"title": "Doctor 1", "subtitle": "Doctor 1"},
    {"title": "Doctor 2", "subtitle": "Doctor 2"},
    {"title": "Doctor 3", "subtitle": "Doctor 3"}
  ];
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
        bottom: const ButtomBar(title: "Call Doctor"),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.beamToNamed('/addDoctor'),
        child: const Icon(Icons.add),
      ),
    );
  }
}
