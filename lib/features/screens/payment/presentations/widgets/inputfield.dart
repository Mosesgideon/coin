import 'package:flutter/material.dart';
class InputFieldWidget extends StatefulWidget {
  final String hintText;
  const InputFieldWidget({super.key, required this.hintText});

  @override
  State<InputFieldWidget> createState() => _InputFieldWidgetState();
}

class _InputFieldWidgetState extends State<InputFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: TextFormField(
        cursorColor: Colors.black,
        decoration: InputDecoration(
           contentPadding: EdgeInsets.all(5),

          hintText:widget.hintText,
        ),
      ),
    );
  }
}
