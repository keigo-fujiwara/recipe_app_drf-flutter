import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/category.dart';

class CategoryService {
  final baseUrl = Uri.http('127.0.0.1:8000', '/api');

  Future<List<Category>> fetchAll() async {
    final response = await http.get(
      baseUrl.replace(path: '${baseUrl.path}/categories/'),
    );

    if (response.statusCode != 200) {
      throw Exception('カテゴリを取得するのに失敗しました');
    }

    final List<Object?> jsonData = json.decode(utf8.decode(response.bodyBytes));
    return jsonData
        .map((json) => Category.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
