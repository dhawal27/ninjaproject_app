import 'package:flutter/material.dart';

class myCourses extends StatefulWidget {
  @override
  _myCoursesState createState() => _myCoursesState();
}

class _myCoursesState extends State<myCourses> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.all(0),
          height: deviceHeight * 0.3,
          color: Colors.blue[500],
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.only(
                      left: deviceWidth * 0.02,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.sort),
                      onPressed: () {},
                      iconSize: 40.0,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: deviceWidth * 0.03,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () {},
                      iconSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Text(
                "My Courses",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
              ),
              SearchList(),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: deviceHeight * 0.25),
          height: deviceHeight,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0)),
          ),
          // child: SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          child: GridView.builder(
              itemCount: 6,
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (BuildContext context, int index) {
                return new GestureDetector(
                  child: new Card(
                    elevation: 5.0,
                    child: new Container(
                      alignment: Alignment.center,
                      child: new Text('Item $index'),
                    ),
                  ),
                  onTap: () {},
                );
              }),
          // ),
        )
      ],
    );
  }
}

//Code for search bar
//
//
class SearchList extends StatefulWidget {
  SearchList({Key key}) : super(key: key);
  @override
  _SearchListState createState() => new _SearchListState();
}

class _SearchListState extends State<SearchList> {
  Widget appBarTitle = new Text(
    "Search Sample",
    style: new TextStyle(color: Colors.white),
  );
  Icon actionIcon = new Icon(
    Icons.search,
    color: Colors.white,
  );
  final key = new GlobalKey<ScaffoldState>();
  final TextEditingController _searchQuery = new TextEditingController();
  List<String> _list;
  bool _IsSearching;
  String _searchText = "";

  _SearchListState() {
    _searchQuery.addListener(() {
      if (_searchQuery.text.isEmpty) {
        setState(() {
          _IsSearching = false;
          _searchText = "";
        });
      } else {
        setState(() {
          _IsSearching = true;
          _searchText = _searchQuery.text;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _IsSearching = false;
    init();
  }

  void init() {
    _list = List();
    _list.add("Google");
    _list.add("IOS");
    _list.add("Andorid");
    _list.add("Dart");
    _list.add("Flutter");
    _list.add("Python");
    _list.add("React");
    _list.add("Xamarin");
    _list.add("Kotlin");
    _list.add("Java");
    _list.add("RxAndroid");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: key,
      appBar: buildBar(context),
      body: new ListView(
        padding: new EdgeInsets.symmetric(vertical: 8.0),
        children: _IsSearching ? _buildSearchList() : _buildList(),
      ),
    );
  }

  List<ChildItem> _buildList() {
    return _list.map((contact) => new ChildItem(contact)).toList();
  }

  List<ChildItem> _buildSearchList() {
    if (_searchText.isEmpty) {
      return _list.map((contact) => new ChildItem(contact)).toList();
    } else {
      List<String> _searchList = List();
      for (int i = 0; i < _list.length; i++) {
        String name = _list.elementAt(i);
        if (name.toLowerCase().contains(_searchText.toLowerCase())) {
          _searchList.add(name);
        }
      }
      return _searchList.map((contact) => new ChildItem(contact)).toList();
    }
  }

  Widget buildBar(BuildContext context) {
    return new AppBar(centerTitle: true, title: appBarTitle, actions: <Widget>[
      new IconButton(
        icon: actionIcon,
        onPressed: () {
          setState(() {
            if (this.actionIcon.icon == Icons.search) {
              this.actionIcon = new Icon(
                Icons.close,
                color: Colors.white,
              );
              this.appBarTitle = new TextField(
                controller: _searchQuery,
                style: new TextStyle(
                  color: Colors.white,
                ),
                decoration: new InputDecoration(
                    prefixIcon: new Icon(Icons.search, color: Colors.white),
                    hintText: "Search...",
                    hintStyle: new TextStyle(color: Colors.white)),
              );
              _handleSearchStart();
            } else {
              _handleSearchEnd();
            }
          });
        },
      ),
    ]);
  }

  void _handleSearchStart() {
    setState(() {
      _IsSearching = true;
    });
  }

  void _handleSearchEnd() {
    setState(() {
      this.actionIcon = new Icon(
        Icons.search,
        color: Colors.white,
      );
      this.appBarTitle = new Text(
        "Search Sample",
        style: new TextStyle(color: Colors.white),
      );
      _IsSearching = false;
      _searchQuery.clear();
    });
  }
}

class ChildItem extends StatelessWidget {
  final String name;
  ChildItem(this.name);
  @override
  Widget build(BuildContext context) {
    return new ListTile(title: new Text(this.name));
  }
}
