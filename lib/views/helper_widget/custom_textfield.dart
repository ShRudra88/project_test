import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final bool isSecureText;
  final bool enable;
  final RxBool viewText = true.obs;
  final int? maxLines;
  final TextInputType keyboardType;
  final Icon? icon;

  CustomTextField({
    required this.label,
    required this.hint,
    required this.controller,
    this.enable = true,
    this.isSecureText = false,
    this.maxLines = 1,
    this.keyboardType = TextInputType.text,
    this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    viewText.value = isSecureText;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        Obx(
              () => TextFormField(
            enabled: enable,
            cursorHeight: 16,
            cursorWidth: 1,
            cursorColor: Colors.black12,
            keyboardType: keyboardType,
            controller: controller,
            style: const TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              prefixIcon: icon,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(color: Colors.white, width: 1.0),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(color: Colors.white, width: 1.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(color: Colors.black12, width: 1.0),
              ),
              hintText: hint,
              hintStyle: const TextStyle(
                color: Colors.black26,
                fontSize: 16,
              ),
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              fillColor: Colors.black12,
              filled: true,
              suffixIcon: isSecureText
                  ? InkWell(
                onTap: () {
                  viewText.value = !viewText.value;
                },
                child: Icon(
                  viewText.value ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                  size: 30.0,
                ),
              )
                  : null,
              suffixIconConstraints: const BoxConstraints(maxHeight: 24),
            ),
            maxLines: maxLines,
            obscureText: viewText.value,
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
