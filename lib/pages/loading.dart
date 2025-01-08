import 'package:flutter/material.dart';
import 'package:global_clock/services/world_time.dart';
import 'package:loading_indicator/loading_indicator.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTime() async {
    WorldTime instance =
        WorldTime(location: 'London', flag: 'gb.png', url: 'Europe/London');
    await instance.getTime();
    // ignore: use_build_context_synchronously
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
      'date': instance.date,
      'weekNumber': instance.weekNumber,
      'url': instance.url,
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: LoadingIndicator(
          indicatorType: Indicator.ballClipRotatePulse,
          colors: [Colors.blue],
        ),
      ),
    );
  }
}
