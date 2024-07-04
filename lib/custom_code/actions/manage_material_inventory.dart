// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';

/*Future<String> manageMaterialInventory(
    String nombrematerial,
    int cantidad,
    String mid,
    double costo,
    DateTime fechacaducidad,
    String proveedor,
    String unidadmedida) async {
  // Crear mensaje de retorno
  String returnmsg = 'Success';
  // Crear variable de tiempo
  DateTime createdTime = DateTime.now();
  // Crear la aplicación secundaria para crear el inventario
  FirebaseApp app =
      await Firebase.initializeApp(name: mid, options: Firebase.app().options);

  try {
    // Obtener referencia a la colección material_inventory
    final CollectionReference<Map<String, dynamic>> materialInventoryRef =
        FirebaseFirestore.instance.collection('material_inventory');

    // Crear nuevo documento con los parámetros proporcionados
    await materialInventoryRef.doc(mid).set({
      'mid': mid,
      'name_material': nombrematerial,
      'available_quantity': cantidad,
      'acquisition_date': createdTime,
      'cost_material': costo,
      'expiry_date': fechacaducidad,
      'supplier': proveedor,
      'unit_of_measure': unidadmedida,
    });

    return returnmsg;
  } on FirebaseException catch (e) {
    return e.code;
  } finally {
    await app.delete();
  }
}*/

Future<String> manageMaterialInventory(
    String nombrematerial,
    double cantidad,
    String mid,
    double costo,
    DateTime fechacaducidad,
    String proveedor,
    String unidadmedida,
    String imageUrl // Parámetro para la URL de la imagen
    ) async {
  // Crear mensaje de retorno
  String returnmsg = 'Success';
  // Crear variable de tiempo
  DateTime createdTime = DateTime.now();
  // Crear la aplicación secundaria para crear el inventario
  FirebaseApp app =
      await Firebase.initializeApp(name: mid, options: Firebase.app().options);

  try {
    // Obtener referencia a la colección material_inventory
    final CollectionReference<Map<String, dynamic>> materialInventoryRef =
        FirebaseFirestore.instance.collection('material_inventory');

    // Crear nuevo documento con los parámetros proporcionados
    await materialInventoryRef.doc(mid).set({
      'mid': mid,
      'name_material': nombrematerial,
      'avaliable_quantity': cantidad,
      'acquisition_date': createdTime,
      'cost_material': costo,
      'expiry_date': fechacaducidad,
      'supplier': proveedor,
      'unit_of_measure': unidadmedida,
      'image_material': imageUrl, // Campo para la URL de la imagen
    });

    return returnmsg;
  } on FirebaseException catch (e) {
    return e.code;
  } finally {
    await app.delete();
  }
}
