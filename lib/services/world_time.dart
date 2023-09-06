import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  late String location;  // location name for UI
  late String time;  // time in the location
  late String flag;  // url for country flag
  late String url;  // url for endpoint
  late bool isDayTime;  // true or false if day time

  WorldTime({required this.location, required this.flag, required this.url});

  Future <void> getTime() async {

    try {
      //make response
      Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);

      //  get properties from data
      String dateTime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      //  create a dateTime object
      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(offset)));

      //set time property
      isDayTime = now.hour > 6 && now.hour <20 ? true : false;
      time = DateFormat.jm().format(now);
    } catch (e) {
print('caught error: $e');
time = 'could not get time';
    }

  }
}

