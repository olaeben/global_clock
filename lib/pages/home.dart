import 'package:flutter/material.dart';
import 'package:global_clock/services/world_time.dart';
import 'package:global_clock/shared/body_style_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      data = ModalRoute.of(context)?.settings.arguments as Map? ?? {};
    }

    String bgImage = data['isDayTime'] ? 'day.jpg' : 'night.jpg';

    return Scaffold(
      appBar: AppBar(
        title: const BodyStyleText(
          'Global Clock',
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: isLoading
                ? const CircularProgressIndicator(color: Colors.white)
                : const Icon(Icons.refresh), // Refresh Icon
            onPressed: () async {
              // Error handling if URL is missing
              if (data['url'] == null || data['url'].isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Cannot refresh: URL is missing!'),
                  ),
                );
                return;
              }

              setState(() {
                isLoading =
                    true; // Set loading to true when the refresh button is clicked
              });

              try {
                // Create WorldTime instance and fetch updated time
                WorldTime instance = WorldTime(
                  location: data['location'],
                  flag: data['flag'],
                  url: data['url'],
                );

                await instance.getTime(); // Fetch time

                // Update UI with new data
                setState(() {
                  data = {
                    'location': instance.location,
                    'flag': instance.flag,
                    'time': instance.time,
                    'date': instance.date,
                    'isDayTime': instance.isDayTime,
                    'weekNumber': instance.weekNumber,
                    'url': instance.url // Preserve URL
                  };
                });
              } catch (e) {
                // Error fetching data
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Error fetching time: $e'),
                  ),
                );
              }
              setState(() {
                isLoading =
                    false; // Set loading to false after the operation completes
              });
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgrounds/$bgImage'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
          child: Column(
            children: [
              TextButton.icon(
                onPressed: () async {
                  dynamic result =
                      await Navigator.pushNamed(context, '/location');

                  if (result == null) {
                    return; // Simply do nothing and stay on the current screen
                  }
                  setState(() {
                    data = {
                      'time': result['time'],
                      'location': result['location'],
                      'isDayTime': result['isDayTime'],
                      'flag': result['flag'],
                      'date': result['date'],
                      'weekNumber': result['weekNumber'],
                      'url': result['url'],
                    };
                  });
                },
                icon: Icon(
                  Icons.edit_location,
                  color: Colors.grey[200],
                ),
                label: BodyStyleText(
                  'Choose Location',
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data['location'],
                    style: TextStyle(
                        fontSize: 40,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    'assets/flags/${data['flag']}',
                    width: 50,
                    height: 30,
                  ),
                ],
              ),
              SizedBox(height: 10),
              BodyStyleText(
                'Week ${data['weekNumber']?.toString() ?? ""}',
              ),
              SizedBox(height: 10),
              BodyStyleText(
                data['date'] ?? '',
              ),
              SizedBox(height: 20),
              Text(
                data['time'],
                style: TextStyle(
                    fontSize:
                        data['time'] == 'Could not get time data' ? 20 : 60,
                    letterSpacing: 1,
                    fontWeight: data['time'] == 'Could not get time data'
                        ? FontWeight.normal
                        : FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
