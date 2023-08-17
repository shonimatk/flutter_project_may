import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SampleHome(),
  ));
}

class SampleHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert() async {
      return await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Confirm Exit???"),
              content: Text("Do u really want to exit"),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: const Text("Yes")),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: const Text("No")),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: const Text("Cancel")),
              ],
            );
          });
    }

    return WillPopScope(
        child: Scaffold(
          body: Center(
            child: Text("Press BackButton to exit"),
          ),
        ),
        onWillPop: showAlert);
  }
}
