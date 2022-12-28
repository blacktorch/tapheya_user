import 'package:flutter/material.dart';
import 'constants.dart';

class PasswordField extends StatefulWidget {
  final String hintText;
  final TextAlign align;

  final String? errorText;
  final Function(String v) onChanged;

  const PasswordField({
    Key? key,
    required this.hintText,
    required this.onChanged,
    this.align = TextAlign.start,
    this.errorText,
  }) : super(key: key);

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  final textFieldFocusNode = FocusNode();
  bool _obscured = true;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus) {
        return;
      } // If focus is on text field, dont unfocus
      textFieldFocusNode.canRequestFocus =
          false; // Prevents focus if tap on eye
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: widget.onChanged,
      keyboardType: TextInputType.visiblePassword,
      obscureText: _obscured,
      focusNode: textFieldFocusNode,
      decoration: InputDecoration(
        floatingLabelBehavior:
            FloatingLabelBehavior.never, //Hides label on focus or if filled
        hintText: widget.hintText,
        errorText: widget.errorText,
        hintStyle: kHintText,
        isDense: true,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          borderSide: BorderSide(
            color: kLightGrey,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          borderSide: BorderSide(
            width: 1.0,
            color: kAccent,
          ),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
          child: GestureDetector(
            onTap: _toggleObscured,
            child: Icon(
              !_obscured
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              size: 24,
              color: !_obscured ? kAccent : kMidGrey,
            ),
          ),
        ),
      ),
      textAlign: widget.align,
    );
  }
}
