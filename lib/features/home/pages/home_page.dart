import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:helpeaze/animations/animations.dart';
import 'package:helpeaze/features/features.dart';
import 'package:helpeaze/providers/theme_provider.dart';

import '../models/models.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final themeP = ref.read(themeProvider.notifier);
    const List<Item> items = [
      Item(
          name: "Book Amulance",
          image: 'ambulance.png',
          page: '/bookAmbulance'),
      Item(
          name: "Medicine Remainder",
          image: 'medicine.png',
          page: '/medicineReminder'),
      Item(
        name: "My Doctor",
        image: 'stethoscope.png',
        page: '/myDoctor',
      ),
      Item(
        name: "My Emergency Contract",
        image: 'emergency-call.png',
        page: '/myEmergencyContact',
      ),
      Item(
        name: "Hospitals Nearby",
        image: 'apartment.png',
        page: '/hospitalsNearby',
      ),
      Item(
        name: "My Medical History",
        image: 'medical-history.png',
        page: '/myMediacalHistory',
      ),
      Item(
        name: "Blood Donation",
        image: 'health-care.png',
        page: '/bloodDonation',
      ),
      Item(
        name: "Organ Donation",
        image: 'health-care.png',
        page: '/organDonation',
      ),
    ];
    return GridView.builder(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.all(20.w),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 1 / 0.8,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: items.length,
        itemBuilder: (BuildContext ctx, index) {
          return DelayedAnimtion(
            delay: 500 + (100 * index),
            child: SizedBox(
              width: ScreenUtil().screenWidth,
              height: ScreenUtil().screenHeight,
              child: Card(
                elevation: 10.0,
                child: InkWell(
                  onTap: () => context.beamToNamed(items[index].page),
                  child: Padding(
                    padding: EdgeInsets.all(6.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 50.w,
                          width: 50.w,
                          child:
                              Image.asset('assets/icons/${items[index].image}'),
                        ),
                        Text(
                          items[index].name,
                          style: TextStyle(fontSize: 11.w),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
