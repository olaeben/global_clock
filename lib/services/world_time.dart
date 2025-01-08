import 'dart:convert';
import 'package:http/http.dart' as http; // Changed this line
import 'package:intl/intl.dart';

class WorldTime {
  static http.Client httpClient = http.Client();

  String location;
  late String time;
  String flag;
  String url;
  bool isDayTime;
  String date = '';
  int weekNumber = 0;

  WorldTime({
    this.location = '',
    this.flag = '',
    this.url = '',
    this.isDayTime = true,
    this.date = '',
    this.weekNumber = 0,
  });

  Future<void> getTime() async {
    try {
      http.Response response = await httpClient.get(// Changed this line
          Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String offsetHours = data['utc_offset'].substring(1, 3);
      String offsetMinutes = data['utc_offset'].substring(4, 6);

      DateTime now = DateTime.parse(datetime).toUtc();

      now = now.add(Duration(
        hours: data['utc_offset'].startsWith('-')
            ? -int.parse(offsetHours)
            : int.parse(offsetHours),
        minutes: data['utc_offset'].startsWith('-')
            ? -int.parse(offsetMinutes)
            : int.parse(offsetMinutes),
      ));

      time = DateFormat.jm().format(now);
      date = DateFormat('dd MMMM, yyyy').format(now);
      weekNumber = data['week_number'];
      isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
    } catch (e) {
      print('Caught error: $e');
      time = 'Could not get time data';
      date = 'Could not get date';
      weekNumber = 0;
    }
  }
}
