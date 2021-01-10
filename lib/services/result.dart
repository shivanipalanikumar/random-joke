import 'package:http/http.dart' as http;
import 'dart:convert';
import '../Models/getjock.dart';

Future<Getjock> calculate() {
  final Map<String, String> headers = {
    "content-type": "application/json",
		"x-rapidapi-key": "6a5640f000msh225738551f62ef9p1dc2e9jsnb2dd8535eb8b",
		"x-rapidapi-host": "joke3.p.rapidapi.com"
  };
  final String url = "https://joke3.p.rapidapi.com/v1/joke";
  return http.get(url, headers: headers).then((data) {
    if (data.statusCode == 200) {
      final jsonData = json.decode(data.body);
      return Getjock.fromJson(jsonData);
    }
  }).catchError((e) {
    print(e.toString());
  });
}