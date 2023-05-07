import 'package:flutter/material.dart';

class CustomAlertDialog extends StatefulWidget {
  const CustomAlertDialog({Key? key}) : super(key: key);

  @override
  _AlertDialogState createState() => _AlertDialogState();
}

class _AlertDialogState extends State<CustomAlertDialog> {
  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: Text('How many repetitions did you do?'),
              content: Text('Content, more info'),
              actions: [
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel'),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Text('Confirm'),
                )
              ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
            child: MaterialButton(
                onPressed: _showDialog,
                child: Text('SHOW DIALOG',
                    style: TextStyle(fontSize: 30, color: Colors.white)))));
  }
}
