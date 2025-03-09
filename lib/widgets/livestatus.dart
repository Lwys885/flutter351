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
            SizedBox(height: 100),
            _buildCardRow([
              _buildStatusCard('Active Street Lights', '15', 300, 200,
                  icon: Icons.lightbulb),
              _buildStatusCard('Inactive Street Lights', '11', 300, 200,
                  icon: Icons.lightbulb_outline),
              _buildStatusCard('Weather condition', 'Cloudy', 300, 200,
                  icon: Icons.wb_cloudy),
            ]),
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
            _buildCardRow([
              _buildStatusCard('Number of Cars C1', '10', 500, 200,
                  icon: Icons.car_crash),
              _buildStatusCard('Number of Cars C2', '5', 500, 200,
                  icon: Icons.car_crash),
            ]),
            SizedBox(height: 32),
            _buildCardRow([
              _buildTrafficLightStatusCard('Traffic Light 1 Status', true, true,
                  icon: Icons.car_crash),
              _buildTrafficLightStatusCard('Traffic Light 2 Status', false, false,
                  icon: Icons.car_crash),
            ]),
            SizedBox(height: 32),
        _buildCardRow([
            _buildTrafficLightStatusCard('Traffic Light 3 Status', false, true,
                icon: Icons.car_crash),
            _buildTrafficLightStatusCard('Traffic Light 4 Status', true, false,
                icon: Icons.car_crash),]),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusCard(String title, String value, double width, double height, {IconData? icon}) {
    return SizedBox(
      width: width,
      height: height,
      child: Card(
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  if (icon != null) Icon(icon, size: 24),
                  if (icon != null) SizedBox(width: 8),
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(children: [
                SizedBox(
                  width: 85,
                ),
                Text(
                  value,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ]),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTrafficLightStatusCard(String title, bool isGreen, bool isBusy,
      {IconData? icon}) {
    return SizedBox(
      width: 500,
      height: 250,
      child: Card(
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  if (icon != null) Icon(icon, size: 24),
                  if (icon != null) SizedBox(width: 8),
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(children: [
                SizedBox(
                  width: 85,
                ),
                Icon(
                  Icons.traffic,
                  size: 24,
                ),
                SizedBox(width: 10),
                isGreen
                    ? Text(
                        'Traffic Light is Green',
                        style:
                            TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      )
                    : Text(
                        'Traffic Light is Red',
                        style:
                            TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
              ]),
              SizedBox(height: 12),
              Row(
                children: [
                  SizedBox(
                    width: 85,
                  ),
                  Icon(Icons.campaign_rounded),
                  SizedBox(width: 10),
                  Text(
                    'Status:',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  isBusy
                      ? Text(
                          'Busy',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        )
                      : Text(
                          'Free',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                ],
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCardRow(List<Widget> cards) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: cards,
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
