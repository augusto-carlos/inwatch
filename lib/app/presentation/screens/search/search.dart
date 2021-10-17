import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:inwatch/app/presentation/widgets/poster_card.dart';
import 'package:inwatch/app/presentation/widgets/text1.dart';
import 'package:inwatch/app/repositories/movie_repository.dart';
import 'package:inwatch/app/presentation/widgets/search_field.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isLoading = false;
  bool request = false;
  late Map<String, dynamic> searchResult = {
    'title': 'res.title',
    'type': 'res.type',
    'poster': 'res.poster'
  };

  MovieRepository movieRepo = MovieRepository();

  searchMovie(dynamic title) async {
    isLoading = true;
    this.movieRepo.searchByTitle(title).then((res) {
      setState(() {
        this.searchResult = {
          'title': res.title,
          'type': res.imdbRating,
          'poster': res.poster
        };
        request = true;
      });
      print(res.toJson());
    }).whenComplete(() {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF202431),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(LineAwesomeIcons.angle_left),
          onPressed: () {
            Get.back();
          },
          color: Colors.orange,
          splashColor: Colors.grey,
        ),
        brightness: Brightness.dark,
        title: SearchField(onChange: (value) {
          this.searchMovie(value);
        }),
      ),
      body: Container(
        child: Center(
          child: isLoading
              ? CircularProgressIndicator()
              : Visibility(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          this.searchResult['poster'],
                          width: 80,
                          filterQuality: FilterQuality.medium,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text1(this.searchResult['title']),
                            Rating(this.searchResult['type'])
                          ],
                        ),
                      ],
                    ),
                  ),
                  replacement: show404Message(),
                  visible: this.request,
                ),
        ),
      ),
    );
  }

  Column show404Message() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text1('Oops!'),
        Text(
          'Nenhum resultado encontrado.',
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
      ],
    );
  }
}
