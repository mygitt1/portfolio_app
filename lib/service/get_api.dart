import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:portfolio_app/model/model.dart';

class GetApi {
  final baseUrl =
      'https://gist.githubusercontent.com/davidglaeseman/f7dde76087ad4a828e8e067f014664eb/raw/7c409c60d8958762915cd0e68152c4902549d5e9/resume.json';

  Future<Model> getData() async {
    try {
      http.Response response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200 || response.statusCode == 201) {
        // var jsonData = json.decode(response.body);
        Model model = modelFromJson(response.body);
        print(model);
        return model;
      }
    } catch (e) {
      print('assasasasas');
      print(e.toString());
    }
  }
}
