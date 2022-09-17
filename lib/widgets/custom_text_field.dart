import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String name;
  final String? Function(String?)? validator;
  final bool obscureText;
  final bool autoValidate;
  final TextInputType? keyboardType;
  final int? maxLength;
  final Icon? prefixIcon;
  final String? initialValue;
  final int maxLines;
  final void Function(dynamic value)? onChanged;
  final dynamic Function(String? value)? valueTransformer;
  final double radius;
  final void Function()? onTap;
  final bool readOnly;
  final Widget? suffixIcon;
  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.name,
    this.validator,
    this.obscureText = false,
    this.autoValidate = false,
    this.keyboardType,
    this.maxLength,
    this.prefixIcon,
    this.initialValue,
    this.onChanged,
    this.radius = 20.0,
    this.valueTransformer,
    this.maxLines = 1,
    this.readOnly = false,
    this.onTap,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      validator: validator,
      obscureText: obscureText,
      maxLines: maxLines,
      autocorrect: true,
      enableSuggestions: true,
      // scrollPadding: EdgeInsets.all(10.0),
      // cursorColor: Theme.of(context).colorScheme.primary,
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
      keyboardType: keyboardType,
      maxLength: maxLength,
      valueTransformer: valueTransformer,
      initialValue: initialValue,
      onTap: onTap,

      onChanged: onChanged,
      readOnly: readOnly,
    );
  }
}
