// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:multiselect/multiselect.dart';
import '../../constants/colors.dart';

class DropDownMenuOwner extends StatefulWidget {
  DropDownMenuOwner(
      {super.key,
      required this.label,
      required this.hint,
      required this.typesAndPlans,
      this.selectedTypesAndPlans});

  final String label;
  final String hint;
  final List typesAndPlans;
  List? selectedTypesAndPlans;

  @override
  State<DropDownMenuOwner> createState() => _DropDownMenuOwnerState();
}

class _DropDownMenuOwnerState extends State<DropDownMenuOwner> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 313,
      height: 58,
      child: DropDownMultiSelect(
          selected_values_style: TextStyle(color: blue, fontFamily: 'Tajawal'),
          decoration: InputDecoration(
              label: Text(widget.label),
              labelStyle: TextStyle(
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: black),
              focusedBorder:
                  OutlineInputBorder(borderSide: BorderSide(color: darkBlue)),
              border:
                  OutlineInputBorder(borderSide: BorderSide(color: darkBlue))),
          hintStyle: TextStyle(
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.w400,
              fontSize: 11,
              color: black),
          hint: Text(widget.hint),
          options: widget.typesAndPlans,
          selectedValues: widget.selectedTypesAndPlans ?? [],
          onChanged: (value) {
            widget.selectedTypesAndPlans = value;
            setState(() {});
          }),
    );
  }
}
