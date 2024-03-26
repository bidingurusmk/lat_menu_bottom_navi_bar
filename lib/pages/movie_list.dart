import 'package:flutter/material.dart';
// import '../http_service/httpMovie.dart';
import '../widgets/bottom_navigasi.dart';

class MovieList extends StatefulWidget {
  const MovieList({super.key});

  @override
  State<MovieList> createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  // var result;
  // HttpMovie? service = HttpMovie();

  @override
  void initState() {
    // TODO: implement initState
    // setState(() async {
    //   await service!.getMovie().then((value) => {
    //         result = value,
    //       });
    // });
    // print(result);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // service!.getMovie().then((value) => {
    //       setState(() {
    //         result = value!;
    //       })
    //     });

    return Scaffold(
      appBar: AppBar(
        
        title: Text("Movie List"),
      ),
      body: Container(
        child: Text('tampilan movie'),
      ),
      bottomNavigationBar: BottomNav(selectedItem: 1),
    );
  }
}
