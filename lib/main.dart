import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Avengers',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              color: Color(0xFF0099FF)),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              onPressed: () {})
        ],
      ),
      body: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Text(
                      'SEP',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0,),
                    dateItem('14', 'FRI', true, true),
                    SizedBox(height: 16.0,),
                    dateItem('15', 'SAT', false, true),
                    SizedBox(height: 16.0,),
                    dateItem('16', 'SUN', false, true),
                    SizedBox(height: 16.0,),
                    dateItem('17', 'MON', false, false),
                    SizedBox(height: 16.0,),
                    dateItem('18', 'TUE', false, false),
                    SizedBox(height: 16.0,),
                    dateItem('19', 'WED', false, true),
                    SizedBox(height: 16.0,),
                    dateItem('20', 'THU', false, true),
                    SizedBox(height: 16.0,),
                    dateItem('21', 'FRI', false, true),
                    SizedBox(height: 16.0,),
                    dateItem('22', 'SAT', false, true),
                    SizedBox(height: 16.0,),
                    dateItem('23', 'SUN', false, true),
                    SizedBox(height: 16.0,),
                    dateItem('24', 'MON', false, true),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 8.0,),
                    dayItem('Tony Stark', 'assets/images/tony.jpeg', '14', 'FRI'),
                    SizedBox(height: 16.0,),
                    dayItem('Peter Parker', 'assets/images/peter.jpg', '15', 'SAT'),
                    SizedBox(height: 16.0,),
                    dayItem('Steven Strange', 'assets/images/strange.jpg', '16', 'SUN'),
                    SizedBox(height: 16.0,),
                    dayItem('Bruce Banner', 'assets/images/banner.jpg', '19', 'WED'),
                    SizedBox(height: 16.0,),
                    dayItem('Natasha Romanof', 'assets/images/natasha.jpeg', '20', 'THU'),
                    SizedBox(height: 16.0,),
                    dayItem('Thor', 'assets/images/thor.jpg', '21', 'FRI'),
                    SizedBox(height: 16.0,),
                    dayItem('Steve Rogers', 'assets/images/steve.jpg', '22', 'SAT'),
                    SizedBox(height: 8.0,),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF0099FF),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {}),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text('Settings'))
        ],
      ),
    );
  }

  Widget dateItem(String date, String day, bool selected, bool available) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: selected ? Color(0xFF0099FF) : Colors.white
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 5.0,),
          Text(date,
            style: TextStyle(
              color: available ? selected ? Colors.white : Colors.black : Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 16.0
            ),
          ),
          SizedBox(height: 5.0,),
          Text(day,
              style: TextStyle(
                  color: available ? selected ? Colors.white : Colors.black : Colors.grey,
                  fontSize: 10.0
              )
          ),
          SizedBox(height: 5.0,),
        ],
      ),
    );
  }

  Widget dayItem(String name, String img, String date, String day){
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0)
      ),
      child: Stack(
        children: <Widget>[
          Container(
            width: 275.0,
            height: 275.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.contain,
              )
            ),
          ),
          Positioned(
            top: 12.0,
            right: 12.0,
            child: Container(
              width: 30.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 8.0,),
                  Text(date,
                  style: TextStyle(
                  color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0
                  ),
                  ),
                  SizedBox(height: 5.0,),
                  Text(
                    day,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10.0
                    ),
                  ),
                  SizedBox(height: 8.0,),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 12.0,
            left: 12.0,
            child: Container(
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  shadows: <Shadow> [
                    Shadow(
                      blurRadius: 10.0,
                    )
                  ]
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
