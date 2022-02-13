import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:project/functions/fetch/data/data.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

Future<List<Data>>? fetchData(
    String Username, String Numbermeter, String apiUral) async {
  try {
    final String apiURL = apiUral + Username + '&id=' + Numbermeter;
    var response = await http.get(Uri.parse(apiURL));

    if (response.statusCode == 200) {
      final items = json.decode(response.body).cast<Map<String, dynamic>>();

      List<Data> ListData = items.map<Data>((json) {
        return Data.fromJson(json);
      }).toList();

      return ListData;
    } else {
      throw Exception('Failed to load data from Server.');
    }
  } catch (error) {
    throw (error);
  }
}

Future<List<Data>> fetchDataRead(String url, String idHolder) async {
  var data = {'id': int.parse(idHolder)};

  var response = await http.post(Uri.parse(url), body: json.encode(data));

  if (response.statusCode == 200) {
    print(response.statusCode);

    final items = json.decode(response.body).cast<Map<String, dynamic>>();

    List<Data> ListData = items.map<Data>((json) {
      return Data.fromJson(json);
    }).toList();

    return ListData;
  } else {
    throw Exception('Failed to load data from Server.');
  }
}
