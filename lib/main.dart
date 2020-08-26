import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen()));

class HomeScreen extends StatelessWidget {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      margin:
                          EdgeInsets.only(top: 50.0, left: 10.0, right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'SEARCH',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            child: SvgPicture.asset('assets/images/search.svg'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: TextField(
                        controller: searchController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              getListView(context),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
//        onTap: onTabTapped,
        currentIndex: 0,
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text('Messages'),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile'))
        ],
      ),
    );
  }

  Widget getListView(BuildContext buildContext) {
    return Container(
      height: MediaQuery.of(buildContext).size.height / 2,
      child: ListView.builder(
          shrinkWrap: false,
          itemCount: 3,
          itemBuilder: (BuildContext context, index) {
            return ListTile(
              title: Text(
                'Trailing text',
                style: TextStyle(fontSize: 13.0, color: Colors.black),
              ),
            );
          }),
    );
  }
//  void onTabTapped(int index) {
//    setState(() {
//      _currentIndex = index;
//    });
//  }

}
