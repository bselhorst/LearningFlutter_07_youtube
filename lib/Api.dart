import 'package:http/http.dart' as http;
import 'dart:convert';

const CHAVE_YOUTUBE_API = "AIzaSyCQqT1xMX37D-9aWNHt9ixtV4pXxcLoUZQ";
const ID_CANAL = "UCLCDTplH85Z7_6zvH83kPxw";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

class Api {
  pesquisar(String pesquisa) async {
    http.Response response = await http.get(Uri.parse(URL_BASE +
        "search"
            "?part=snippet"
            "&type=videos"
            "&maxResoults=20"
            "&order=date"
            "&key=${CHAVE_YOUTUBE_API}"
            "&channelId=${ID_CANAL}"
            "&q=${pesquisa}"));
    if (response.statusCode == 200) {
      // print(response.body);
      Map<String, dynamic> dadosJson = json.decode(response.body);
    }
  }
}
