import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String label;
  final String placeholder;
  final IconData? icon;
  final bool isTextArea;
  const TextFieldWidget({
    super.key,
    required this.label,
    required this.placeholder,
    required this.icon,
    this.isTextArea = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(label),
        const SizedBox(height: 5.0),
        Container(
          padding: const EdgeInsets.only(left: 10.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            maxLines: isTextArea ? 6 : null,
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: placeholder,
                suffixIcon: Icon(
                  icon,
                  color: Colors.grey,
                )),
          ),
        )
      ],
    );
  }
}
