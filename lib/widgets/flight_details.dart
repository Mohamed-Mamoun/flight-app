import 'package:flutter/material.dart';

class FlightDetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flights'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My flights',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.teal.shade900,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  flightCard('DBC', 'Dabaca', 'ADY', 'Almedy', 'MON 28 8:35 AM',
                      '1h 35m', 'KB70'),
                  SizedBox(height: 16),
                  flightCard('DBC', 'Dabaca', 'ADY', 'Almedy', 'MON 28 8:35 AM',
                      '1h 35m', 'KB71'),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {
          // Action for adding a new flight
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  Widget flightCard(
      String departureCode,
      String departureCity,
      String arrivalCode,
      String arrivalCity,
      String date,
      String duration,
      String flightNumber) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.teal.shade800,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              airportInfo(departureCode, departureCity),
              Icon(Icons.flight_takeoff, color: Colors.orange),
              airportInfo(arrivalCode, arrivalCity),
            ],
          ),
          SizedBox(height: 16),
          Divider(color: Colors.orange),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              flightDetail('DATE', date),
              flightDetail('FLIGHT NO', flightNumber),
            ],
          ),
          SizedBox(height: 8),
          Center(
            child: Text(
              duration,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget airportInfo(String code, String city) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          code,
          style: TextStyle(
            color: Colors.orange,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          city,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  Widget flightDetail(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.teal.shade200,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
