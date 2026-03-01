import 'package:flutter/material.dart';


class PasswordTextFormField extends StatefulWidget {
  const PasswordTextFormField({ super.key, required this.hintText, required this.prefixIcon, required this.suffixIcon, this.keyboardType,});
   
  final String hintText;
  final Icon prefixIcon;
final Icon suffixIcon;
 final TextInputType? keyboardType;

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType:TextInputType.visiblePassword ,
      onTapOutside:(event){
        FocusManager.instance.primaryFocus?.unfocus();
      } ,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: widget.hintText,
        prefixIcon: widget.prefixIcon,
        suffixIcon: IconButton(onPressed: (){
          setState(() {
            obscureText = !obscureText;
          });
        },
         icon: obscureText
         ? Icon(Icons.visibility_off)
         :Icon(Icons.remove_red_eye))
       
      ),
     
    );
  }
}
