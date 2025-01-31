import 'package:flutter/material.dart';
import 'package:hadar/services/authentication/validators.dart';

class Custom_Text_feild extends StatefulWidget {
  Icon icon;
  String hint;
  Color text_color;
  Color border_color;
  Color on_tap_color;
  var Validtor;
  var Controller;
  bool is_pw;
  Custom_Text_feild(this.hint,this.icon,this.border_color,this.on_tap_color,this.Validtor,this.Controller,this.is_pw,this.text_color);
  @override
  _Custom_Text_feildState createState() => _Custom_Text_feildState(hint,icon,border_color,on_tap_color,Validtor,Controller,is_pw,text_color);
}

class _Custom_Text_feildState extends State<Custom_Text_feild> {

  Icon icon;
  String hint;
  Color text_color;
  Color border_color;
  Color on_tap_color;
  bool is_pw;

  var Validtor;
  var Controller;
  _Custom_Text_feildState(this.hint,this.icon,this.border_color,this.on_tap_color,this.Validtor,this.Controller,this.is_pw,this.text_color);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(65, 0, 65, 0),
      child: TextFormField(
        style: TextStyle(
          color: text_color == Colors.grey ? Colors.black : text_color,
        ),
          obscureText: is_pw,
          autocorrect: !is_pw,
          enableSuggestions: !is_pw,
          controller: Controller,
          validator: Validtor,
          textAlign:TextAlign.right,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: border_color),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: on_tap_color),
            ),
            suffixIcon: icon,
            hintText: hint,
            hintStyle: TextStyle(
              color: text_color,
            )
          ),
        ),
    );

  }

}