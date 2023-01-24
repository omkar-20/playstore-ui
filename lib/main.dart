import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp()
  );
}
class CardItem{
  final String urlImage;
  final String title;
  final String subtitle;

  CardItem({
    required this.urlImage,
    required this.title,
    required this.subtitle,
});
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<CardItem> items = [
    CardItem(
      urlImage:'https://play-lh.googleusercontent.com/TLUeelx8wcpEzf3hoqeLxPs3ai1tdGtAZTIFkNqy3gbDp1NPpNFTOzSFJDvZ9narFS0=s64-rw',
      title: 'Candy Crush',
      subtitle:'4.6',
    ),
    CardItem(
      urlImage:'https://play-lh.googleusercontent.com/qBdVfwRCsI4KM7qewhJ0AKZKQjyD-DdxPDcdDbsRMhNO9zrwbefggn1vGqRIDZA3fg=s64-rw',
      title: 'Royal Match',
      subtitle:'4.5',
    ),
    CardItem(
      urlImage:'https://play-lh.googleusercontent.com/NVJuKheL9D0uzQf-QNTBtcr7BzfUwwqi4-zKVddVdxrsMdoNAv7k332oso9th4ns4Xwa=s64-rw',
      title: 'Surfers',
      subtitle:'4.7',
    ),
    CardItem(
      urlImage:'https://play-lh.googleusercontent.com/8ddL1kuoNUB5vUvgDVjYY3_6HwQcrg1K2fd_R8soD-e2QYj8fT9cfhfh3G0hnSruLKec=s64-rw',
      title: 'Among Us',
      subtitle:'3.7',
    ),
    CardItem(
      urlImage:'https://play-lh.googleusercontent.com/JRd05pyBH41qjgsJuWduRJpDeZG0Hnb0yjf2nWqO7VaGKL10-G5UIygxED-WNOc3pg=s64-rw',
      title: 'Pubg',
      subtitle:'4.7',
    ),
    CardItem(
      urlImage:'https://play-lh.googleusercontent.com/FIldEX6IcJEju0BeWPhXZ3duzgxm9_fTtwPiIesBT9ddwFpeFw0FAjEpYU9vmqccpe7h=s64-rw',
      title: 'Free Fire',
      subtitle:'4.0',
    ),
  ];
  @override
  Widget build(BuildContext context) {
   // debugShowCheckedModeBanner:false;
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.white));
    return MaterialApp(
      home: DefaultTabController(
        length: 6,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              // title: Text("trial"),
              title: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue.shade100,

                ),
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: const TextField(

                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                    // border: OutlineInputBorder(
                    // ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 20,
                    ),
                    prefixIconConstraints:
                    BoxConstraints(maxHeight: 20, minWidth: 25),
                    border: InputBorder.none,
                    hintText: 'Search for apps & games',
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              bottom: const TabBar(
                labelColor: Colors.blue,
                isScrollable: true,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(text: "For you"),
                  Tab(text: "Top charts"),
                  Tab(text: "For Children"),
                  Tab(text: "For Events"),
                  Tab(text: "For Premium"),
                  Tab(text: "For Categories"),
                ],
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                        itemBuilder: ( context , index)=>buildCard(item:items[index]),

                    ),
                  ),
                  Container(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: ( context , index)=>buildCard(item:items[index]),

                    ),
                  ),
                  Container(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: ( context , index)=>buildCard(item:items[index]),

                    ),
                  ),
                  Container(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: ( context , index)=>buildCard(item:items[index]),

                    ),
                  ),
                  Container(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: ( context , index)=>buildCard(item:items[index]),

                    ),
                  ),

                ]
              ),
            ),


            bottomNavigationBar: BottomNavigationBar(
              elevation: 0,
              items: const<BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon:Icon(Icons.gamepad_outlined),
                label: 'Games',
                ),
                BottomNavigationBarItem(
                  icon:Icon(Icons.apps),
                  label: 'Apps',
                ),
                BottomNavigationBarItem(
                  icon:Icon(Icons.local_offer_outlined),
                  label: 'Offers',
                ),
                BottomNavigationBarItem(
                  icon:Icon(Icons.book_sharp),
                  label: 'Books',
                )
              ],
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.blue.shade100,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.black,
            ),
          )

      ),



      );



//    );
  }

//myApp

 Widget buildCard({required CardItem item }) => Container(
      width: 150,
    //  height: 150,
      color: Colors.white,
   padding: const EdgeInsets.all(5),
   child: Column(
     children: [
       Expanded(child: Image.network(
         item.urlImage,
         fit: BoxFit.cover,
       ),
       ),
       const SizedBox(height: 4),
       Text(
         item.title,
         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
       ),
       Text(
         item.subtitle,
         style: TextStyle(fontSize: 20, color: Colors.black),
       ),
     ],
   ),
    );
}