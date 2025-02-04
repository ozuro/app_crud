// llamra a la api services

import 'dart:convert';

import 'package:first_crud/models/user.dart';
import 'package:http/http.dart' as http;

class HttpService {
  static String _url = '';
  static String _token = '';
  HttpService() {
    _url = 'https://gorest.co.in/public/v2';
    _token = '0001e06516bc13046ed2a905b837820094bc0b7fbb72d1796702eeb343c8c955';
  }
  Future<List<UserModel>> getAllUsers() async {
    final response = await http.get(
      Uri.parse('$_url/users'),
      headers: {'Authorization': 'Bearer $_token'},
    );

    return (jsonDecode(response.body) as List)
        .map((user) => UserModel.fromJson(user))
        .toList();
  }
}
