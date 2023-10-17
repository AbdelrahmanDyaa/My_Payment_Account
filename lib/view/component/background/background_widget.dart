import 'package:flutter/material.dart';
class BackGroundWidget extends StatelessWidget {

  final Widget? child;
  final Color? color;
  final BoxBorder? border;
  final BorderRadiusGeometry? borderRadius;
  final  EdgeInsetsGeometry? padding;
      const BackGroundWidget({ this.border, this.color,required this.padding,  this.borderRadius,required this.child,super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(

      child:  Container(
        padding: padding,
        decoration: BoxDecoration(
          color: color,
          borderRadius:  borderRadius,
          border:   border,
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: child,
      ) ,
    );

  }
}
