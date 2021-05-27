import 'package:bcgmusicapp/models/song.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();

  static Future<Welcome> fetchProducts(String artistName) async {
    var response =
        await client.get('https://itunes.apple.com/search?term=' + artistName);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return welcomeFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
}
