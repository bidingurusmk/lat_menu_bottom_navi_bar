import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class HttpMovie {
  final String baseUrl = 'http://localhost:8000/api/getmovie';
  Future<dynamic> getMovie() async {
    final String uri = baseUrl;
    http.Response result = await http.get(Uri.parse(uri));
    if (result.statusCode == HttpStatus.ok) {
      // print('sukses');
      final response = json.decode(result.body);
      return response;
    } else {
      print('fail');
      return null;
    }
  }
}
