import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:chat_gpt_app/constants/api.dart';
import 'package:chat_gpt_app/models/model_models.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ApiServices {
  static Future<List<ModelModels>> getModels() async {
    try {
      final uri = Uri.parse("$BASE_URL/models");
      final Response response =
          await http.get(uri, headers: {'Authorization': 'Bearer $API_KEY'});
      Map jsonvalue = jsonDecode(response.body);
      final json = jsonvalue as List;
      if (jsonvalue["error"] != null) {
        throw HttpException(jsonvalue["error"]["message"]);
      }
      return ModelModels.fromSnapShot(json);
    } catch (error) {
      log("error:$error");
      rethrow;
    }
  }
}
