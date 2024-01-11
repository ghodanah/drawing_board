import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

List<Appointment> getAppointments() {
  List<Appointment> meetings = <Appointment>[];
  final DateTime today = DateTime.now();
  final DateTime startTime = DateTime(
      today.year, today.month, today.day, 9, 0, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 2));

  meetings.add(Appointment(startTime: startTime,
    endTime: endTime,
    subject: 'Conference',
    color: Colors.blueAccent,
    recurrenceRule: 'FREQ=DAILY;COUNT=10',));

  meetings.add(Appointment(startTime: startTime,
    endTime: endTime,
    subject: 'Conference',
    color: Colors.orange,
    recurrenceRule: 'FREQ=DAILY;COUNT=10',));

  meetings.add(Appointment(startTime: startTime,
    endTime: endTime,
    subject: 'Conference',
    color: Colors.pink,
    recurrenceRule: 'FREQ=DAILY;COUNT=10',));

  meetings.add(Appointment(startTime: startTime,
    endTime: endTime,
    subject: 'Conference',
    color: Colors.blueAccent,
    recurrenceRule: 'FREQ=DAILY;COUNT=10',));

  meetings.add(Appointment(startTime: startTime,
    endTime: endTime,
    subject: 'Conference',
    color: Colors.pink,
    recurrenceRule: 'FREQ=DAILY;COUNT=10',));

  meetings.add(Appointment(startTime: startTime,
    endTime: endTime,
    subject: 'Conference',
    color: Colors.yellow,
    recurrenceRule: 'FREQ=DAILY;COUNT=10',));

  return meetings;
}


class MeetingDatatSource extends CalendarDataSource {
  MeetingDatatSource(List<Appointment> source) {
    appointments = source;
  }
}