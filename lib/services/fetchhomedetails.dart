import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:dartz/dartz.dart';

class ApiService {
  final String baseUrl = "https://swan.alisonsnewdemo.online/api";
  final String token = "VCqnyucUlRM7BxsAkhOtFQS3Fg6dhda5bOtgYKlb";
  final String id = "epV";

  Future<Either<String, Map<String, dynamic>>> fetchHomeDetails() async {
    final String url = "$baseUrl/home?id=$id&token=$token";

    try {
      final response = await http.post(Uri.parse(url));

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        return Right(data); // Return raw data
      } else {
        return Left("Failed to load data: ${response.statusCode}");
      }
    } catch (e) {
      return Left("Error occurred: $e");
    }
  }
}