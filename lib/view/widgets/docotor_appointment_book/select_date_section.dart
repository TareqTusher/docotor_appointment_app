import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class SelectDateSection extends StatefulWidget {
  const SelectDateSection({super.key});

  @override
  State<SelectDateSection> createState() => _SelectDateSectionState();
}

class _SelectDateSectionState extends State<SelectDateSection> {
  DateTime currentTime = DateTime.now();
  DateTime? _selectedDay;

  String? selectedTime;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 8)],
      ),
      child: TableCalendar(
        rowHeight: 50,
        headerStyle: HeaderStyle(formatButtonVisible: false),
        firstDay: DateTime.utc(1998),
        lastDay: DateTime.utc(2030),
        focusedDay: currentTime,
        selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            _selectedDay = selectedDay;
            currentTime = focusedDay;
          });
        },
        calendarStyle: CalendarStyle(
          rangeHighlightColor: AppColors.darkTeal,
          selectedDecoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: AppColors.darkTeal,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
