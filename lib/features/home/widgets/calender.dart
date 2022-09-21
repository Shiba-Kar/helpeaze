import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Calender extends StatelessWidget {
  final String hintText;
  final String name;
  final String? Function(DateTime?)? validator;
  final TextInputType keyboardType;
  final String? initialValue;
  final void Function(dynamic value)? onChanged;
  final dynamic Function(String? value)? valueTransformer;
  final double radius;
  final void Function()? onTap;
  final bool readOnly;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  const Calender({
    Key? key,
    required this.hintText,
    required this.name,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.initialValue,
    this.onChanged,
    this.valueTransformer,
    this.radius = 20,
    this.onTap,
    this.readOnly = false,
    this.suffixIcon,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderDateTimePicker(
      //   hintText: "Medicine Name",
      //  suffixIcon: const Icon(Icons.mail),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.w),
          borderSide: BorderSide.none,
        ),
        prefixIcon: prefixIcon ?? const SizedBox(width: 0, height: 0),
        // hoverColor: Colors.white,

        // focusedBorder: InputBorder.none,
        // enabledBorder: InputBorder.none,
        // errorBorder: InputBorder.none,
        // disabledBorder: InputBorder.none,
        contentPadding: const EdgeInsets.only(top: 15, bottom: 0, right: 10),
        counterStyle: TextStyle(fontSize: 10.w),
        counter: const SizedBox(height: 0.0, width: 0.0),
        isDense: true,
        // labelText: hintText,
        suffixIcon: suffixIcon,
        hintText: hintText,
      ),
      name: name,
      inputType: InputType.date,
      validator: validator,

      keyboardType: keyboardType,
    );
  }
}
