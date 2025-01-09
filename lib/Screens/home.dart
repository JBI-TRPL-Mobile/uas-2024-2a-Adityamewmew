import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Welcome Adit', style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome Adit', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Image.asset('assets/images/pakkris.jpeg', width: double.infinity),
              SizedBox(height: 10),
              Text('Keep Moving Up', style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Text('Your journey to success starts here. Let\'s grow together!', style: TextStyle(fontSize: 14, color: Colors.grey)),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Categories', style: TextStyle(fontSize: 24)),
                  TextButton(onPressed: () {}, child: Text('See All')),
                ],
              ),
              Wrap(
                spacing: 10,
                children: [
                  CategoryButton('Development'),
                  CategoryButton('IT & Software'),
                  CategoryButton('UI/UX'),
                  CategoryButton('Business'),
                  CategoryButton('Finance & Business'),
                  CategoryButton('Person'),
                ],
              ),

              SizedBox(height: 40),
              Text('Top Course', style: TextStyle(fontSize: 24)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CourseCard('Course 1', 'assets/images/1im.jpg'),
                  CourseCard('Course 2', 'assets/images/2im.jpg'),
                  CourseCard('Course 3', 'assets/images/3im.jpg'),
                  CourseCard('Course 4', 'assets/images/4im.jpg'),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(icon: Icon(Icons.home), onPressed: () {}),
              IconButton(
                icon: Icon(Icons.message),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MassageScreen()),
                  );
                },
              ),
              IconButton(icon: Icon(Icons.book), onPressed: () {}),
              IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
  Widget CategoryButton(String title) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(title),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFF0F0F0),
        foregroundColor: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
  Widget CourseCard(String title, String imagePath) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(imagePath, width: 220, height: 120, fit: BoxFit.cover),
        ),
        SizedBox(height: 8),
        Text(title, style: TextStyle(fontSize: 14)),
      ],
    );
  }
}
