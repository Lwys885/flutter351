import 'package:flutter/material.dart';

class LiveStatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('Live Status'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Street Lights'),
              Tab(text: 'Traffic Lights'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Content for Street Lights tab
            _buildStreetLightsContent(),
            // Content for Traffic Lights tab
            _buildTrafficLightsContent(),
          ],
        ),
      ),
    );
  }

  Widget _buildStreetLightsContent() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Street Lights',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            _buildStatusCard('Number of Cars', '15/26', 'Route progress'),
            SizedBox(height: 16),
            _buildTaskCard('12', 'Tasks to be completed'),
          ],
        ),
      ),
    );
  }

  Widget _buildTrafficLightsContent() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Traffic Lights',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            _buildStatusCard('Number of Cars', '10/20', 'Route progress'),
            SizedBox(height: 16),
            _buildTaskCard('8', 'Tasks to be completed'),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusCard(String title, String value, String subtitle) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              subtitle,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTaskCard(String value, String subtitle) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              value,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              subtitle,
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}