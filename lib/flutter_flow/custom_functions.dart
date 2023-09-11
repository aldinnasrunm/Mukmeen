import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

int getYear(DateTime dateTime) {
  return dateTime.year;
}

int getMonth(DateTime dateTime) {
  return dateTime.month;
}

int getDate(DateTime date) {
  return date.day;
}

int idKotaConv(String idString) {
  int idKota = int.tryParse(idString) ?? 0; // Default to 0 if parsing fails
  return idKota;
}

String extractCity(String input) {
  if (input.contains("KAB.")) {
    // Split the input string by whitespace
    List<String> parts = input.split(' ');

    // Check if there are at least two parts
    if (parts.length >= 2) {
      // Return the last part as the city name
      return parts.last;
    }
  }

  // Return an empty string or handle other cases as needed
  return input;
}
