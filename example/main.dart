import 'package:animeflv/animeflv.dart';

void main() async {
  var client = AnimeFlv();
  var lastEpisodes = await client.searchWithFilters(
    filters: [
      Filter("genre", [
        FilterValue("accion", "Acción"),
        FilterValue("fantasia", "Fantasía"),
      ], true),
      Filter("year", [
        FilterValue("2024", "2024"),
        FilterValue("2023", "2023"),
      ], true)
    ]
  );
  print(lastEpisodes);
}
