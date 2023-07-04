import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

class BluetoothTerminalWidget extends StatefulWidget {
  @override
  _BluetoothTerminalWidgetState createState() =>
      _BluetoothTerminalWidgetState();
}

class _BluetoothTerminalWidgetState extends State<BluetoothTerminalWidget> {
  late BluetoothConnection connection;
  bool isConnecting = true;
  bool isConnected = false;
  String message = '';

  @override
  void initState() {
    super.initState();
    connectToDevice();
  }

  void connectToDevice() async {
    BluetoothDevice
        selectedDevice; // Replace with the selected Bluetooth device

    try {
      BluetoothConnection.toAddress("50:65:83:8F:F0:0D").then((_connection) {
        print('Connected to the device');
        connection = _connection;
        setState(() {
          isConnecting = false;
          isConnected = true;
        });

        connection.input?.listen((Uint8List data) {
          setState(() {
            message += String.fromCharCodes(data);
          });
        });
      }).catchError((error) {
        print('Cannot connect, exception occurred');
        print(error);
      });
    } catch (exception) {
      print('Cannot connect, exception occurred');
      print(exception);
    }
  }

  void sendMessage(String text) {
    if (isConnected) {
      text = text.trim();
      if (text.isNotEmpty) {
        try {
          connection.output.add(Uint8List.fromList(utf8.encode(text + '\r\n')));
          connection.output.allSent.then((_) {
            setState(() {
              message += '\n<You>: ' + text;
            });
          });
        } catch (e) {
          print("Error: $e");
        }
      }
    }
  }

  @override
  void dispose() {
    if (isConnected) {
      connection.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bluetooth Terminal'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(message),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onSubmitted: sendMessage,
              decoration: InputDecoration(labelText: 'Send message'),
            ),
          ),
        ],
      ),
    );
  }
}
