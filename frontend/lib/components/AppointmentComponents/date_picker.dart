// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DayPicker extends StatefulWidget {
  DayPicker({super.key, required this.onTypeChange});

  final Function(String) onTypeChange;
  String? chosenDay;

  @override
  DayPickerState createState() => DayPickerState();
}

/// State for DayPicker
class DayPickerState extends State<DayPicker> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          child: SfDateRangePicker(
            controller: DateRangePickerController(),
            onSelectionChanged: (dateRangePickerSelectionChangedArgs) {
              String day = DateFormat('dd, MMMM yyyy')
                  .format(dateRangePickerSelectionChangedArgs.value)
                  .toString();
              widget.onTypeChange(widget.chosenDay = day);
              setState(() {});
            },
            selectionMode: DateRangePickerSelectionMode.single,
            initialSelectedRange: PickerDateRange(
                DateTime.now().subtract(const Duration(days: 4)),
                DateTime.now().add(const Duration(days: 3))),
          ),
        )
      ],
    );
  }
}
