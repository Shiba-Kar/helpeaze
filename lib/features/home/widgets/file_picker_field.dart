import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_file_picker/form_builder_file_picker.dart';

class FilePickerField extends StatelessWidget {
  final String hintText;
  final String name;
  final String? Function(List<PlatformFile>?)? validator;
  final String? initialValue;
  final void Function(dynamic value)? onChanged;
  final dynamic Function(String? value)? valueTransformer;
  final double radius;
  final void Function()? onTap;
  final bool readOnly;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  const FilePickerField({
    Key? key,
    required this.hintText,
    required this.name,
    this.validator,
    this.initialValue,
    this.onChanged,
    this.valueTransformer,
    this.radius = 10,
    this.onTap,
    this.readOnly = false,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderFilePicker(
      name: name,
      maxFiles: 3,
      previewImages: true,
      validator: validator,
      onChanged: onChanged,
      allowedExtensions: const ['jpeg', 'png', 'pdf', 'jpg'],
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.w),
          borderSide: BorderSide.none,
        ),
        prefixIcon: prefixIcon,
        // hoverColor: Colors.white,

        // focusedBorder: InputBorder.none,
        // enabledBorder: InputBorder.none,
        // errorBorder: InputBorder.none,
        // disabledBorder: InputBorder.none,
        //  contentPadding: const EdgeInsets.only(top: 15, bottom: 0, right: 10),
        counterStyle: TextStyle(fontSize: 10.w),
        counter: const SizedBox(height: 0.0, width: 0.0),
        isDense: false,
        // labelText: hintText,
        suffixIcon: suffixIcon,
        hintText: hintText,
      ),
      typeSelectors: [
        TypeSelector(
          type: FileType.custom,
          selector: Row(
            children: const [
              Icon(Icons.add_circle),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text("Add documents"),
              ),
            ],
          ),
        )
      ],
      onFileLoading: (val) {
        print(val);
      },
    );
  }
}
