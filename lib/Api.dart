import 'package:http/http.dart' as http;
import 'dart:convert';

import 'model/Video.dart';

const CHAVE_YOUTUBE_API = "AIzaSyCQqT1xMX37D-9aWNHt9ixtV4pXxcLoUZQ";
const ID_CANAL = "UCLCDTplH85Z7_6zvH83kPxw";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

class Api {
  Future<List<Video>> pesquisar(String pesquisa) async {
    // ignore: prefer_interpolation_to_compose_strings
    http.Response response = await http.get(Uri.parse(URL_BASE +
        "search"
            "?part=snippet"
            "&type=videos"
            "&maxResults=20"
            "&order=date"
            "&key=${CHAVE_YOUTUBE_API}"
            "&channelId=${ID_CANAL}"
            "&q=${pesquisa}"));
    if (response.statusCode == 200) {
      // print(response.body);
      Map<String, dynamic> dadosJson = json.decode(response.body);

      List<Video> videos = dadosJson["items"].map<Video>((map) {
        return Video.fromJson(map);
        // return Video.converterJson(map);
      }).toList();

      return videos;
    }
    return pesquisar("");
  }
}
