import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../repository/meeting_data_source.dart';

class MonthlyScreen extends StatelessWidget {
  const MonthlyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          Expanded(
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: SfCalendar(
                view: CalendarView.month,
                headerDateFormat: 'yyy MMM',
                headerStyle: const CalendarHeaderStyle(
                    textAlign: TextAlign.center,
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                    )),
                showNavigationArrow: true,
                monthViewSettings: const MonthViewSettings(
                    appointmentDisplayMode:
                        MonthAppointmentDisplayMode.appointment,
                    showAgenda: true,
                    agendaViewHeight: 300,
                    dayFormat: 'EEE'),
                dataSource: MeetingDatatSource(getAppointments()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
