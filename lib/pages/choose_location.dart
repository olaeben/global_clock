import 'package:flutter/material.dart';
import 'package:global_clock/services/locations.dart';
import 'package:global_clock/services/world_time.dart';
import 'package:global_clock/shared/body_style_text.dart';
import 'package:loading_indicator/loading_indicator.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  final WorldTimeLocation repository = WorldTimeLocation();
  List<WorldTime> locations = [];
  List<WorldTime> filteredLocations = [];
  TextEditingController searchController = TextEditingController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    locations = repository.getLocations();
    filteredLocations = locations;
  }

  void searchLocation(String query) {
    setState(() {
      isLoading = true; // Show loading indicator
    });

    // Simulate a delay to mock the loading state while fetching data from the API
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        filteredLocations = locations
            .where((location) =>
                location.location.toLowerCase().contains(query.toLowerCase()))
            .toList();
        isLoading = false; // Hide loading indicator after the search is done
      });
    });
  }

  void updateTime(index) async {
    WorldTime instance = filteredLocations[index];
    setState(() => isLoading = true);

    try {
      await instance.getTime();

      if (!mounted) return;

      // Pop before changing state
      Navigator.pop(context, {
        'location': instance.location,
        'flag': instance.flag,
        'time': instance.time,
        'isDayTime': instance.isDayTime,
        'date': instance.date,
        'weekNumber': instance.weekNumber,
        'url': instance.url,
      });
    } catch (e) {
      print('Error: $e');
      if (mounted) {
        Navigator.pop(context);
      }
      setState(() => isLoading = false);
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarStyleText('Choose Location'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search location...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onChanged: searchLocation,
              ),
            ),
            if (isLoading)
              Center(
                child: LoadingIndicator(
                  indicatorType: Indicator.ballClipRotatePulse,
                  colors: [Colors.blue],
                ),
              )
            else
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListView.builder(
                  itemCount: filteredLocations.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 1.0, horizontal: 4.0),
                      child: Card(
                        child: ListTile(
                          onTap: () {
                            // Handle selection
                            updateTime(index);
                          },
                          title: Text(
                            filteredLocations[index].location,
                            style: TextStyle(
                                fontSize: 20,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w800,
                                color: Colors.black),
                          ),
                          // Country name
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                8), // Optional: rounded corners
                            child: Image.asset(
                              'assets/flags/${filteredLocations[index].flag}', // Country flag
                              width: 40,
                              height: 30,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
