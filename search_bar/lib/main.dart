import 'package:flutter/material.dart';
import 'package:search_bar/model/movie_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SearchSection(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SearchSection extends StatefulWidget {
  const SearchSection({super.key});

  @override
  State<SearchSection> createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  static List<MovieModel> main_movies_list = [
    MovieModel(
        'The Fast and the Furious',
        2001,
        'https://resizing.flixster.com/ko45zdRBR4SbTVGQAP52Z0GKtxs=/fit-in/180x240/v2/https://flxt.tmsimg.com/assets/p27779_p_v8_aw.jpg',
        6.8),
    MovieModel(
        '2 Fast 2 Furious',
        2003,
        'https://resizing.flixster.com/edIERTu5Key4vnL1OOETzZT5gAI=/fit-in/180x240/v2/https://flxt.tmsimg.com/assets/p32092_p_v8_aw.jpg',
        5.9),
    MovieModel(
        'The Fast and the Furious: Tokyo Drift ',
        2006,
        'https://resizing.flixster.com/yc_NcSSg6g8oYDXslsnXw9nENNA=/fit-in/180x240/v2/https://flxt.tmsimg.com/assets/p188702_p_v8_bg.jpg',
        6.0),
    MovieModel(
        'Fast & Furious ',
        2009,
        'https://resizing.flixster.com/GpsgjyftIhAUP86l-yr3sVziQEc=/fit-in/180x240/v2/https://flxt.tmsimg.com/assets/p8338313_p_v8_aq.jpg',
        6.5),
    MovieModel(
        'Fast Five',
        2011,
        'https://resizing.flixster.com/L8NAkEcFJ93h2I5aaPB8zHqEfYk=/fit-in/180x240/v2/https://flxt.tmsimg.com/assets/p9573130_p_v8_bd.jpg',
        7.3),
    MovieModel(
        'Fast & Furious 6',
        2013,
        'https://resizing.flixster.com/NwZDW0HGwtip11xf4b2rKqTqEIo=/fit-in/180x240/v2/https://flxt.tmsimg.com/assets/p159790_p_v8_ae.jpg',
        7.0),
    MovieModel(
        'Furious 7',
        2015,
        'https://resizing.flixster.com/8Jq6gGtVxJVYaJmWJWOm73heYG0=/fit-in/180x240/v2/https://flxt.tmsimg.com/assets/p10679969_p_v8_av.jpg',
        7.1),
    MovieModel(
        'The Fate of the Furious',
        2017,
        'https://resizing.flixster.com/PCAQMjp_fejNC636WCfG8YoKajM=/fit-in/180x240/v2/https://resizing.flixster.com/gCtyDxYC5HQP859s40D-hqYLFx4=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzFlYjRjNWQyLTNlNWMtNDVhMy1hZDRkLTdjNDU2YjUzNDdmYy53ZWJw',
        6.6),
    MovieModel(
        'Fast & Furious Presents: Hobbs & Shaw',
        2019,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        6.5),
    MovieModel(
        'F9',
        2021,
        'https://resizing.flixster.com/Zfq9LoCfP7Q9XFZd2vZ4RJTprLE=/fit-in/180x240/v2/https://resizing.flixster.com/RYaXF6wKOa0WI2I2lY2DGkvWOgk=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzdhYTRiMjQ1LWMyMDctNGM1MC1iYzY3LWIzM2VhNmU0MTlkOC5qcGc=',
        5.2),
    MovieModel(
        'Fast X',
        2023,
        'https://resizing.flixster.com/djZiPiwugHFM0drB0oVFMGcTy7Q=/fit-in/180x240/v2/https://resizing.flixster.com/8ZFc4VKwZN8NGV3ZqhCIFCHekxM=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJlNDAyYWUzLWEwZTUtNDVlNy04MDliLTRmZWIzNDMzMzJmYS5qcGc=',
        5.9),
    MovieModel(
        'Extraction',
        2020,
        'https://resizing.flixster.com/djZiPiwugHFM0drB0oVFMGcTy7Q=/fit-in/180x240/v2/https://resizing.flixster.com/8ZFc4VKwZN8NGV3ZqhCIFCHekxM=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJlNDAyYWUzLWEwZTUtNDVlNy04MDliLTRmZWIzNDMzMzJmYS5qcGc=',
        6.8),
    MovieModel(
        'Extraction II',
        2023,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        7.1),
    MovieModel(
        'Asur Part - I',
        2020,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        9.8),
    MovieModel(
        'Asur Part II',
        2023,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        9.1),
    MovieModel(
        'Raksha Bandhan',
        2022,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        7.4),
    MovieModel(
        'M.S. Dhoni - The Untold Story!',
        2017,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        10.0),
    MovieModel(
        'Sachin - The Billion Dreams',
        2023,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        7.1),
    MovieModel(
        'Main hoon na',
        2018,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        8.0),
    MovieModel(
        'Gadar - ek prem khatha',
        2001,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        8.1),
    MovieModel(
        'Mirzapur Season - I',
        2019,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        9.4),
    MovieModel(
        'Mirzapur Season - II',
        2022,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        9.5),
    MovieModel(
        'Family Man Season - I',
        2018,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        9.8),
    MovieModel(
        'Family Man Season - II',
        2021,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        9.4),
    MovieModel(
        'Adipurush',
        2023,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        5.9),
    MovieModel(
        'Mahabharat',
        2025,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        9.5),
    MovieModel(
        'Chennai Express',
        2017,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        8.9),
    MovieModel(
        'Major',
        2021,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        9.6),
    MovieModel(
        'Spy',
        2023,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        8.1),
    MovieModel(
        'Bloody Daddy',
        2023,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        6.1),
    MovieModel(
        'Bhagham Bhag',
        2007,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        8.4),
    MovieModel(
        'Dhamal',
        2014,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        7.1),
    MovieModel(
        'Dhoom I',
        2007,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        7.8),
    MovieModel(
        'Dhoom II',
        2012,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        7.9),
    MovieModel(
        'Dhoom III',
        2015,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        7.2),
    MovieModel(
        'Don I',
        2004,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        8.1),
    MovieModel(
        'Don II',
        2017,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        9.1),
    MovieModel(
        'Iron Man',
        2019,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        8.5),
    MovieModel(
        'Captain America - Civil War',
        2009,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        9.1),
    MovieModel(
        'Captain America - Infinity War',
        2017,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        8.1),
    MovieModel(
        'Spiderman - Home coming',
        2021,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        8.4),
    MovieModel(
        'Tamasha',
        2016,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        6.1),
    MovieModel(
        'Raktanchan Season II',
        2021,
        'https://resizing.flixster.com/mF6qGHftnHG5E2i776IDNqZpTIU=/fit-in/180x240/v2/https://resizing.flixster.com/dzwka3l9Azwmt8HlkkqstBwbHFw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJhMWY4YjcyLWU4YjUtNDQwNS1iMDUxLTRlNWQ0MDZiZWMwMy53ZWJw',
        8.3),
  ];

  List<MovieModel> display_list = List.from(main_movies_list);

  void updateList(String value) {
    setState(() {
      display_list = main_movies_list
          .where((element) =>
              element.movie_title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1f1545),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 162, 155, 189),
        elevation: 0.0,
        title: const Text(
          'Movie Mania',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Search for a Movie',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => updateList(value),
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xff302360),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none),
                  hintText: 'eg: Fast X',
                  prefixIcon: const Icon(Icons.search),
                  prefixIconColor: Colors.purple.shade900),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: display_list.length == 0
                  ? const Center(
                      child: Text(
                        'No results found!',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0),
                      ),
                    )
                  : ListView.builder(
                      itemCount: display_list.length,
                      itemBuilder: (context, index) => ListTile(
                        contentPadding: const EdgeInsets.all(8.0),
                        title: Text(
                          display_list[index].movie_title!,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 161, 161, 161),
                              fontWeight: FontWeight.normal),
                        ),
                        subtitle: Text(
                          '${display_list[index].movie_release_year!}',
                          style: const TextStyle(color: Colors.white60),
                        ),
                        trailing: Text(
                          '${display_list[index].rating}',
                          style: const TextStyle(color: Colors.amber),
                        ),
                        leading: Image.network(
                            display_list[index].movie_poster_url!),
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
