import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper({this.url});

  final String url;

  Future getData() async{
    var urlPath = Uri.parse(url);
    http.Response response = await http.get(urlPath);
    print(response.body);
    if(response.statusCode == 200) {
      var weatherData = jsonDecode(response.body,);
      return weatherData;
    } else {
      print('Error in loading data from api');
    }
  }

}