import 'package:flutter/material.dart';

class MainPageWidget extends StatelessWidget {
  static String routeName = 'MainPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page',  style: TextStyle(color: Colors.white)),
        backgroundColor:  Colors.blueAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Dashboard Navigation Card
            _buildNavigationCard(
              context,
              title: 'Go to Dashboard',
              subtitle: 'View system overview & insights',
              icon: Icons.dashboard_rounded,
              onTap: () => Navigator.pushNamed(context, 'Dashboard'),
            ),
            const SizedBox(height: 20),

            // Live Status Navigation Card
            _buildNavigationCard(
              context,
              title: 'Live Status',
              subtitle: 'Check real-time updates',
              icon: Icons.live_tv_rounded,
              onTap: () => Navigator.pushNamed(context, 'LiveStatus'),
            ),
            const SizedBox(height: 200),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigationCard(
      BuildContext context, {
        required String title,
        required String subtitle,
        required IconData icon,
        required VoidCallback onTap,
      }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(icon, size: 40, color: Colors.blueGrey[700]),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right, size: 30, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}
