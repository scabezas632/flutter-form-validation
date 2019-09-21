import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter_form_validation/src/models/producto_model.dart';

class ProductosProvider {

  final String _url = 'https://flutter-varios-6d4b0.firebaseio.com';

  Future<bool> crearProducto(ProductoModel producto) async {

    final url = '$_url/productos.json';

    final response = await http.post(url, body: productoModelToJson(producto));

    final decodedData = json.decode(response.body);

    print(decodedData);

    return true;
  }

}