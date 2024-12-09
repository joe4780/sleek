import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextFieldWithTitle extends StatelessWidget {
  final TextStyle? textStyle;
  final TextStyle? hintTextStyle;
  final TextStyle? labelStyle;
  final TextStyle? titleStyle;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final String? labelText;
  final String? title;
  final bool obscured;
  final bool hasPrefixIcon;
  final bool hasSuffixIcon;
  final bool hasTitle;
  final bool hasTitleIcon;
  final bool enabled;
  final bool readOnly;
  final Widget? titleIcon;
  final TextInputType? textInputType;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final InputBorder border;
  final InputBorder enabledBorder;
  final InputBorder focusedBorder;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry contentPadding;
  final EdgeInsetsGeometry? textFormFieldMargin;
  final TextEditingController? controller;
  final int minLines;
  final int maxLines;

  const AppTextFieldWithTitle({
    this.prefixIcon,
    this.suffixIcon,
    this.textStyle,
    this.hintTextStyle,
    this.labelStyle,
    this.titleStyle,
    this.titleIcon,
    this.hasTitleIcon = false,
    this.title,
    this.contentPadding = const EdgeInsets.all(0),
    this.textFormFieldMargin,
    this.hasTitle = false,
    this.border = const OutlineInputBorder(
      borderSide: BorderSide(
        // color: AppColors.lightGray,
        width: 0.75,
        style: BorderStyle.solid,
        color: Colors.white,
      ),
    ),
    this.focusedBorder = const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.blue,
        width: 1.2,
        style: BorderStyle.solid,
      ),
    ),
    this.enabledBorder = const OutlineInputBorder(
      borderSide: BorderSide(
        width: 0.75,
        style: BorderStyle.solid,
        color: Colors.white,
      ),
    ),
    this.hintText,
    this.labelText,
    this.hasPrefixIcon = false,
    this.hasSuffixIcon = false,
    this.obscured = false,
    this.textInputType,
    this.onChanged,
    this.validator,
    this.inputFormatters,
    this.width,
    this.height,
    this.controller,
    this.minLines = 1,
    this.maxLines = 1,
    this.enabled = true,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              hasTitleIcon
                  ? titleIcon ?? const UnconstrainedBox()
                  : Container(),
              hasTitle ? Text(title!, style: titleStyle) : Container(),
            ],
          ),
          hasTitle
              ? const SizedBox(
                  height: 5,
                )
              : Container(),
          Container(
            width: width,
            height: height,
            margin: textFormFieldMargin,
            child: TextFormField(
              cursorColor: Colors.white,
              readOnly: readOnly,
              style: textStyle,
              controller: controller,
              keyboardType: textInputType,
              onChanged: onChanged,
              validator: validator,
              enabled: enabled,
              minLines: minLines,
              maxLines: obscured ? 1 : maxLines,
              inputFormatters: inputFormatters,
              textAlignVertical: TextAlignVertical.center,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                contentPadding: contentPadding,
                labelText: labelText,
                labelStyle: labelStyle,
                border: border,
                enabledBorder: enabledBorder,
                focusedBorder: focusedBorder,
                prefixIcon: hasPrefixIcon ? prefixIcon : null,
                suffixIcon: hasSuffixIcon ? suffixIcon : null,
                hintText: hintText,
                hintStyle: hintTextStyle,
                fillColor: Colors.white
              ),
              obscureText: obscured,
            ),
          ),
        ],
      );
}
