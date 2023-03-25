import 'dart:convert';

import 'package:network_state_management/constants/constants.dart';
import 'package:network_state_management/data/model/book_response_model.dart';
import 'package:http/http.dart' as client;

class BookDatasourceHttp {
  Future<BookResponseModel> getBooks(String query) async {
    try {
      final urlPath = Constants.allNewBook + query;

      final response = await client.get(Uri.parse(urlPath));

      if (response.statusCode == 200) {
        return BookResponseModel.fromJson(json.decode(response.body));
      }

      return BookResponseModel();
    } catch (e) {
      rethrow;
    }
  }
}
