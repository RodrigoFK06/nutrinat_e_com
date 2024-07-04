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
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

double? priceSummary(List<double>? prices) {
  // summarize a list of prices from the product list
  if (prices == null || prices.isEmpty) {
    return null;
  }
  return prices.reduce((value, element) => value + element);
}

double orderSummary(List<double>? ordersSummary) {
  if (ordersSummary == null || ordersSummary.isEmpty) {
    return 0.0;
  }

  // Sumar todos los elementos de la lista
  double sum = ordersSummary.reduce((value, element) => value + element);

  // Limitar el resultado a dos decimales
  return double.parse(sum.toStringAsFixed(2));
}

String numberToWords(double totalAmount) {
  final units = [
    "",
    "uno",
    "dos",
    "tres",
    "cuatro",
    "cinco",
    "seis",
    "siete",
    "ocho",
    "nueve"
  ];
  final teens = [
    "diez",
    "once",
    "doce",
    "trece",
    "catorce",
    "quince",
    "dieciséis",
    "diecisiete",
    "dieciocho",
    "diecinueve"
  ];
  final tens = [
    "",
    "diez",
    "veinte",
    "treinta",
    "cuarenta",
    "cincuenta",
    "sesenta",
    "setenta",
    "ochenta",
    "noventa"
  ];
  final hundreds = [
    "",
    "cien",
    "doscientos",
    "trescientos",
    "cuatrocientos",
    "quinientos",
    "seiscientos",
    "setecientos",
    "ochocientos",
    "novecientos"
  ];

  String convertTens(int n) {
    if (n < 10) {
      return units[n];
    } else if (n < 20) {
      return teens[n - 10];
    } else {
      int tensPlace = n ~/ 10;
      int remainder = n % 10;
      if (remainder == 0) {
        return tens[tensPlace];
      }
      return tens[tensPlace] + " y " + units[remainder];
    }
  }

  String convertHundreds(int n) {
    if (n > 99) {
      int hundredsPlace = n ~/ 100;
      int remainder = n % 100;
      if (remainder == 0) {
        return hundreds[hundredsPlace];
      }
      return hundreds[hundredsPlace] + " " + convertTens(remainder);
    } else {
      return convertTens(n);
    }
  }

  int wholeNumber = totalAmount.floor();
  int decimalPart = ((totalAmount - wholeNumber) * 100).round();

  String wholeNumberPart = convertHundreds(wholeNumber);
  String decimalPartText =
      decimalPart > 0 ? " coma " + convertTens(decimalPart) : "";

  return wholeNumberPart + decimalPartText;
}

double formatToTwoDecimals(double number) {
  return double.parse(number.toStringAsFixed(2));
}
