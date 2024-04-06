import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  final List<String> dropdowmList;
  final String? selectedValue;
  final Function(String?)? onChanged;
  final String? hint;

  const CustomDropDown({
    super.key,
    required this.dropdowmList,
    required this.selectedValue,
    required this.onChanged,
    this.hint
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedValue,
          isExpanded: true,
          padding: const EdgeInsets.only(
            left: 20,
          ),
          hint: hint != null ?  Text(hint!,style: TextStyle(color: Colors.black),) : null,
          items: dropdowmList.map((String document) {
            return DropdownMenuItem<String>(
              value: document,
              child: Text(document),
            );
          }).toList(),
          onChanged: onChanged
        ),
      ),
    );
  }
}
