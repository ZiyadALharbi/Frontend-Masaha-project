import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DayPicker extends StatefulWidget {
  const DayPicker({super.key});

  @override
  DayPickerState createState() => DayPickerState();
}

/// State for DayPicker
class DayPickerState extends State<DayPicker> {
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          child: SfDateRangePicker(
            onSelectionChanged: _onSelectionChanged,
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
