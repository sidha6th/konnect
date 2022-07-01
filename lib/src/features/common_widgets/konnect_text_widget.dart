import 'package:flutter/cupertino.dart';

class KonnectTextWidget extends StatelessWidget {
  const KonnectTextWidget({
    this.text,
    this.textColor,
    this.fontSize,
    this.fontStyle,
    this.overflow,
    this.fontWeight,
    Key? key,
  }) : super(key: key);
  final String? text;
  final Color? textColor;
  final double? fontSize;
  final FontStyle? fontStyle;
  final TextOverflow? overflow;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) => Text(
        text ?? '',
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
          fontStyle: fontStyle,
          overflow: overflow,
          fontWeight: fontWeight,
        ),
      );
}
