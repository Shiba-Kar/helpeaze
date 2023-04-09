# helpeaze

Hospital management Flutter application only ui/ux .

![ScreenShot 1](https://github.com/Shiba-Kar/helpeaze/blob/master/screenshots/flutter_01.png) ![ScreenShot 2](https://github.com/Shiba-Kar/helpeaze/blob/master/screenshots/flutter_02.png)

![ScreenShot 3](https://github.com/Shiba-Kar/helpeaze/blob/master/screenshots/flutter_03.png) ![ScreenShot 4](https://github.com/Shiba-Kar/helpeaze/blob/master/screenshots/flutter_04.png)
![ScreenShot 5](https://github.com/Shiba-Kar/helpeaze/blob/master/screenshots/flutter_05.png)

# File structure 

```cmd
|   main.dart
|   router.dart
|   
+---animations
|       animations.dart
|       delayed_animation.dart
|       
+---core
|       const.dart
|       core.dart
|       theme.dart
|       utils.dart
|       
+---features
|   |   features.dart
|   |   
|   +---auth
|   |   |   auth.dart
|   |   |   
|   |   +---providers
|   |   +---views
|   |   |       login_view.dart
|   |   |       registration_view.dart
|   |   |       views.dart
|   |   |       
|   |   \---widgets
|   |           buttom_bar.dart
|   |           widgets.dart
|   |           
|   \---home
|       |   home.dart
|       |   
|       +---models
|       |       item_model.dart
|       |       item_model.freezed.dart
|       |       models.dart
|       |       nav_model.dart
|       |       nav_model.freezed.dart
|       |       
|       +---pages
|       |       home_page.dart
|       |       membership_page.dart
|       |       more_page.dart
|       |       pages.dart
|       |       wecare_page.dart
|       |       
|       +---providers
|       |       buttom_navigation_provider.dart
|       |       location_service.dart
|       |       providers.dart
|       |       
|       +---views
|       |       add_doctor_view.dart
|       |       blood_donation_view.dart
|       |       book_ambulance_view.dart
|       |       home_view.dart
|       |       hospitals_nearby_view.dart
|       |       medicine_reminder.dart
|       |       my_doctor_view.dart
|       |       my_emergency_contract_view.dart
|       |       my_medical_history_view.dart
|       |       organ_donation_view.dart
|       |       views.dart
|       |       
|       \---widgets
|               app_drawer.dart
|               date_time_pickerfield.dart
|               file_picker_field.dart
|               header_deligate.dart
|               item_card.dart
|               widgets.dart
|               
+---models
+---providers
|       providers.dart
|       theme_provider.dart
|       
+---services
|       local_storage_service.dart
|       services.dart
|       
\---widgets
        custom_group_radio_buttons.dart
        custom_text_field.dart
        theme_switch.dart
        widgets.dart

```