import 'package:flutter/material.dart';
import 'package:fluttermaps/screens/simple_map.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wisata Bali"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          
          children: <Widget>[
             Container(
              margin: EdgeInsets.only(top: 20,bottom: 0, left: 20, right: 20),
                      alignment: Alignment.topLeft,
                      child: Text('Danau Beratan',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade900,
                          ))),
            
            Container(
              margin: EdgeInsets.only(top: 5,bottom: 10, left: 20, right: 20),
                      alignment: Alignment.topLeft,
                      child: Text('Bedugul, Tabanan, Bali.',
                          style: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.regular,
                            color: Colors.blueGrey,
                          ))),
            Container(
                
                    margin: EdgeInsets.only(top: 20,bottom: 10, left: 20, right: 20),
                    
                    child: Image.asset(
                      'images/ulundanu.jpg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                     Container(
              margin: EdgeInsets.only(top: 10,bottom: 10, left: 20, right: 20),
                      alignment: Alignment.center,
                      child: Text('Danau beratan merupakan danau yang berlokasi pada kawasan Bedugul, Kabupaten Tabanan.Danau Beratan merupakan salah satu danau indah yang terdapat pada pulau Dewata. ',
                          style: TextStyle(
                            fontSize: 18,
                            // fontWeight: FontWeight.regular,
                            color: Colors.grey.shade600,
                          ))),
                    
                    Container(
              margin: EdgeInsets.only(top: 10,bottom: 0, left: 20, right: 20),
                      alignment: Alignment.topLeft,
                      child: Text('Lokasi : ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade900,
                          ))),
                    
                    Container(
              margin: EdgeInsets.only(top: 0,bottom: 0, left: 20, right: 20),
                      alignment: Alignment.topLeft,
                      child: Text('Jl. Raya Bedugul, Kec. Bedugul, Kabupaten Tabanan, Bali. ',
                          style: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.bold,
                            color: Colors.blueGrey
                          ))),
                  // TEXT
                  
            Container(
                  margin: EdgeInsets.only(top: 20),
                  
                  width: 180,
                  height: 40,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(05),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const SimpleMapScreen();
                  }));
                    },
                    child: Text(
                      "Lihat Pada Maps",
                      style: TextStyle(
                        fontSize: 20,
                        
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),

            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.of(context)
            //           .push(MaterialPageRoute(builder: (BuildContext context) {
            //         return const SimpleMapScreen();
            //       }));
            //     },
            //     child: const Text("Lihat Pada Maps")),
          ],
        ),
      ),
    );
  }
}