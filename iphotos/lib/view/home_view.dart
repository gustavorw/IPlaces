import 'package:flutter/material.dart';
import 'package:iphotos/components/slide_tile.dart';
import 'package:iphotos/controller/home_controller.dart';
import 'package:iphotos/models/place.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final PageController _pageController = PageController(viewportFraction: 0.9);
  int _currentIndex = 0;
  HomeController homeController = HomeController();

  @override
  void initState() {
    _pageController.addListener(() {
      int next = _pageController.page.round();
      if (next != _currentIndex) {
        setState(() {
          _currentIndex = next;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "IPlaceS",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.black87,
            letterSpacing: 2.5,
            fontSize: 24,
            fontFamily: 'Oswald',
          ),
        ),
        centerTitle: true,
        /*actions: [
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: Colors.grey,
              size: 30.0,
            ),
            onPressed: () {},
          )
        ],*/
      ),
      body: SafeArea(
          child: FutureBuilder(
        future: homeController.getPlaces(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Place> data = snapshot.data;
            return _buildPagePlaces(data);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      )),
    );
  }

  Widget _buildPagePlaces(List<Place> places) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            itemCount: places.length,
            itemBuilder: (_, index) {
              bool activitePage = index == _currentIndex;
              return SlideTile(
                activitePage: activitePage,
                place: places[index],
              );
            },
          ),
        ),
        //_buildBullets(),
      ],
    );
  }
}
