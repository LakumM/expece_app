import 'package:flutter/material.dart';
class CusEx_TextField extends StatefulWidget {
  String? hText;
  String? lText;
  dynamic? sIcon;
  String? sufixText;
  bool obSecureText;
  dynamic kebType;
  dynamic brColor;
  dynamic suicColor;



  CusEx_TextField({this.suicColor=Colors.black87,this.obSecureText=false,this.kebType,this.sufixText,this.hText,required this.lText,this.sIcon,this.brColor=Colors.black87});

  @override
  State<CusEx_TextField> createState() => _GetRRCTextFieldState();
}

class _GetRRCTextFieldState extends State<CusEx_TextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.kebType,
      obscureText: widget.obSecureText,
       decoration: InputDecoration(

          hintText: widget.hText,
          labelText: widget.lText,
          suffixText: widget.sufixText,
          suffixIcon: widget.sIcon,
          suffixIconColor: widget.suicColor,
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: widget.brColor,),borderRadius: BorderRadius.circular(11)),

         ),
    );
  }
}


