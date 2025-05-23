import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// app colors
const Color primaryColor = Color.fromARGB(255, 99, 18, 60);
const Color secondaryColor = Color.fromARGB(255, 250, 240, 245);
const Color teritaryColor = Color.fromARGB(255, 235, 206, 221);
const Color fillGrey = Color.fromARGB(255, 249, 250, 251);
const Color borderGrey = Color.fromARGB(255, 229, 231, 235);
const Color greenTick = Color.fromARGB(255, 35, 201, 52);
const Color appBarTitle = Color.fromARGB(255, 51, 41, 46);

// links to logos
const String logoPath = 'assets/logo.png';

// styling
const borderOutlineStyle = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(24)),
  borderSide: BorderSide(color: borderGrey),
);

const errorBorderOutlineStyle = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(24)),
  borderSide: BorderSide(color: Colors.red),
);

// Function to convert ISO 8601 timestamp to human-readable format
String formatTimestamp(String timestamp) {
  DateTime parsedDate = DateTime.parse(timestamp);
  var formatter = DateFormat('dd MMM, yyyy');
  return formatter.format(parsedDate);
}

// edit screen app bar
AppBar customAppBar(String title) {
  return AppBar(
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.white,
    bottom: const PreferredSize(
      preferredSize: Size.fromHeight(8),
      child: Divider(
        color: borderGrey,
        height: 0,
      ),
    ),
    title: Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: appBarTitle,
      ),
    ),
    centerTitle: true,
    elevation: 0,
  );
}
