import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: Row(
          children: [
            SizedBox(width: 16),
            Text(
              'Bay',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.black,
            ),
          ],
        ),
        leadingWidth: 100,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.search, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu_rounded, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.bell, color: Colors.black),
          ),
        ],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Created rounded border
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            // Image
            child: Image.network(
              'https://cdn2.thecatapi.com/images/6bt.jpg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'iPad Pro 3rd Geneartion 11-inch 128G for sale',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  softWrap: false,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 2),
                Text(
                  'Clanton Park · 6m',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black45,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '\$1,000',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.heart,
                            color: Colors.black54,
                            size: 16,
                          ),
                          Text(
                            '1',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFFFF7E36),
        elevation: 1,
        child: Icon(
          Icons.add_rounded,
          size: 36,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        iconSize: 28,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_library_books_outlined),
            label: 'Karrots',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fmd_good_outlined),
            label: 'Nearby',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_2),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: 'My Karrot',
          ),
        ],
        currentIndex: 0,
      ),
    );
  }
}
