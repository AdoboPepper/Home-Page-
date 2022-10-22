import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepage/pages/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          )
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ' ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: ' ',

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.logout),
              label: ' ',
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
            if ( _currentIndex == 2  ) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            }
          },
      ),
      body: Center(

        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                  'Select from our best',
                  style: GoogleFonts.bebasNeue(

                    fontSize: 60,
                    color: Colors.green,
                  )
              ),
            ),
            const SizedBox(
              height:11,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Find your matcha",
                  prefixIcon: Icon(Icons.search),
                  focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.green)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height:25,
            ),
            Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
                      child: Container(
                        width: 200,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black54,),

                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                    child: Image.asset('lib/images/icecream.jpg')
                                ),
                                SizedBox(height:10),
                                Text(
                                  'Vanilla Matcha Icecream',
                                  style: TextStyle( fontSize: 28,color: Colors.green[300]),
                                ),
                                Text(
                                  'made from wagyu cow milk', style:
                                TextStyle( fontSize: 15,color: Colors.grey),
                                ),
                                SizedBox(height:25),
                                Text(
                                  'PHP 89.00',
                                  style: TextStyle( fontSize: 25,),
                                ),
                              ]
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
                      child: Container(
                        width: 200,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black54,),

                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset('lib/images/fudge.jpg')
                                ),
                                SizedBox(height:10),
                                Text(
                                  'Cassava Matcha Brownies',
                                  style: TextStyle( fontSize: 28,color: Colors.green[300]),
                                ),
                                Text(
                                  'with condensed milk and matcha chocolate', style:
                                TextStyle( fontSize: 15,color: Colors.grey),
                                ),
                                SizedBox(height:25),
                                Text(
                                  'PHP 129.00',
                                  style: TextStyle( fontSize: 25,),
                                ),
                              ]
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, bottom: 25.0, right: 25.0),
                      child: Container(
                        width: 200,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black54,),

                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset('lib/images/tea.webp')
                                ),
                                SizedBox(height:10),
                                Text(
                                  'Green Tea Matcha Blend',
                                  style: TextStyle( fontSize: 28,color: Colors.green[300]),
                                ),
                                Text(
                                  'optionally with honey and milk ', style:
                                TextStyle( fontSize: 15,color: Colors.grey),
                                ),
                                SizedBox(height:25),
                                Text(
                                  'PHP 239.00',
                                  style: TextStyle( fontSize: 25,),
                                ),
                              ]
                          ),
                        ),

                      ),
                    ),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
