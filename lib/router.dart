import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:helpeaze/features/auth/auth.dart';
import 'package:helpeaze/features/home/views/my_emergency_contract_view.dart';
import 'package:helpeaze/main.dart';
import 'features/home/home.dart';

class RouterLocation extends BeamLocation<BeamState> {
  RouterLocation(RouteInformation routeInformation) : super(routeInformation);
  @override
  List<String> get pathPatterns => [
        '/birdge',
        '/login',
        '/home',
        /////////////////////////////
        '/bookAmbulance',
        '/medicineReminder',
        '/myDoctor',
        '/myEmergencyContact',
        '/myMedicineHistory',
        '/bloodDonation', '/organDonation', '/hospitalsNearby',
      ];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    containsKey(String key) => state.uri.pathSegments.contains(key);

    return [
      if (containsKey('login'))
        const BeamPage(
          key: ValueKey('login'),
          title: 'Login',
          type: BeamPageType.noTransition,
          child: LoginView(),
        ),
      if (containsKey('birdge'))
        const BeamPage(
          key: ValueKey('birdge'),
          title: 'Bridge',
          type: BeamPageType.noTransition,
          child: Bridge(),
        ),
      if (containsKey('registration'))
        const BeamPage(
          key: ValueKey('registration'),
          title: 'Registration',
          type: BeamPageType.slideTopTransition,
          child: RegistrationView(),
        ),
      if (containsKey('home'))
        const BeamPage(
          key: ValueKey('home'),
          title: 'Home',
          type: BeamPageType.noTransition,
          child: HomeView(),
        ),
      ///////////////////////////////////////////////////////////
      if (containsKey('bookAmbulance'))
        const BeamPage(
          key: ValueKey('bookAmbulance'),
          title: 'Book Ambulance',
          type: BeamPageType.slideRightTransition,
          child: BookAmbulanceView(),
        ),
      if (containsKey('medicineReminder'))
        const BeamPage(
          key: ValueKey('medicineReminder'),
          title: 'medicine Reminder',
          type: BeamPageType.slideRightTransition,
          child: MedicineReminder(),
        ),
      if (containsKey('myDoctor'))
        const BeamPage(
          key: ValueKey('myDoctor'),
          title: 'My Doctor',
          type: BeamPageType.slideRightTransition,
          child: MyDoctorView(),
        ),
      if (containsKey('myEmergencyContact'))
        const BeamPage(
          key: ValueKey('myEmergencyContact'),
          title: 'My Emergency Contact',
          type: BeamPageType.slideRightTransition,
          child: MyEmergencyContactView(),
        ),
      if (containsKey('myMedicineHistory'))
        const BeamPage(
          key: ValueKey('myMedicineHistory'),
          title: 'My Medicine History',
          type: BeamPageType.slideRightTransition,
          child: MyMedicineHistoryView(),
        ),
      if (containsKey('bloodDonation'))
        const BeamPage(
          key: ValueKey('bloodDonation'),
          title: 'Blood Donation',
          type: BeamPageType.slideRightTransition,
          child: BloodDonationView(),
        ),
      if (containsKey('organDonation'))
        const BeamPage(
          key: ValueKey('organDonation'),
          title: 'Organ Donation',
          type: BeamPageType.slideRightTransition,
          child: OrganDonationView(),
        ),
      if (containsKey('hospitalsNearby'))
        const BeamPage(
          key: ValueKey('hospitalsNearby'),
          title: 'Hospitals Nearby',
          type: BeamPageType.slideRightTransition,
          child: HospitalsNearbyView(),
        )
    ];
  }
}
