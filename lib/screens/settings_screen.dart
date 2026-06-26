import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() =>
      _SettingsScreenState();
}

class _SettingsScreenState
    extends State<SettingsScreen> {

  bool notifications = true;
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),

      body: ListView(
        children: [

          SwitchListTile(
            title: const Text("Notifications"),
            subtitle: const Text(
              "Enable notifications",
            ),
            value: notifications,
            onChanged: (value) {
              setState(() {
                notifications = value;
              });
            },
          ),

          SwitchListTile(
            title: const Text("Dark Mode"),
            subtitle: const Text(
              "Enable dark theme",
            ),
            value: darkMode,
            onChanged: (value) {
              setState(() {
                darkMode = value;
              });
            },
          ),

          ListTile(
            leading: Icon(Icons.info),
            title: Text("About App"),
            subtitle: Text(
              "Student Management App v1.0",
            ),
          ),

          ListTile(
            leading: Icon(Icons.help),
            title: Text("Help & Support"),
          ),
        ],
      ),
    );
  }
}