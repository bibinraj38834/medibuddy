import 'package:flutter/material.dart';

class ListViewHomePage extends StatefulWidget {
  static String routeName = "/hospital";

  @override
  _ListViewHomePageState createState() => _ListViewHomePageState();
}

class _ListViewHomePageState extends State<ListViewHomePage> {
  var titleList = [
    'Medical College',
    'SUT Hospital',
    'S P Fort Hospital',
    'Cosmopolitian Hospital',
    'Kims Hospital',
    'S K Hospital',
    'Lords Hospital',
    'Jubilee Memorial Hospital',
    'Venad Hospital',
    'Punarjani Hospital'
  ];

  var descList = [
    'Ulloor Road, Thiruvananthapuram - 695011\n   ☎:0471 252 8300 \n\t\t\t\tRating:⭐⭐⭐⭐⭐',
    'Pattom Palace P.O , Thiruvananthapuram - 695004 \n\t\t\t\t\t\t\t☎:0471 4077 777\n\t\t\t\t\t\t\t\tRating:⭐⭐⭐⭐',
    'Thiruvananthapuram Fort , Thiruvananthapuram - 695023  \n\t\t\t\t ☎:0471 245 0540 \n\t\t\t\t\tRating:⭐⭐⭐⭐',
    'Kumarapuram Road, Broken Bridge Murinjapalam, Thiruvananthapuram - 695033\n\t\t\t\t\t\t\t☎:0471 244 8182\n\t\t\t\t\t\t\t Rating:⭐⭐⭐',
    'Vinod Nagar Rd, Anayara, Thiruvananthapuram - 695029 \n\t\t\t\t\t\t\t☎:0471 471 1000\n\t\t\t\t\t\t\tRating:⭐⭐⭐⭐',
    'Edappazhinji, Pangode,, Thiruvananthapuram - 695006\n\t\t\t\t\t\t\t☎:0471 235 6260 \n\t\t\t\t\t\t\tRating:⭐⭐⭐',
    'Chackai, Trivandrum Anayara P.O , Thiruvananthapuram - 695029\n\t\t\t\t\t\t\t☎:0471 304 5111\n\t\t\t\t\t\t\t Rating:⭐⭐⭐⭐',
    'Meads Lane Palayam, Thiruvananthapuram - 695034 \n\t\t\t\t\t\t\t☎:0471 233 4561\n\t\t\t\t\t\t\tRating:⭐⭐⭐',
    'Kulavikonam Nedumangadu, Thiruvananthapuram - 695541\n\t\t\t\t\t\t\t ☎:0472 281 4343\n\t\t\t\t\t\t\tRating:⭐⭐⭐',
    'AKG Nagar Road Peroorkkada, Thiruvananthapuram - 695005\n\t\t\t\t\t\t\t☎:0471 645 4466\n\t\t\t\t\t\t\tRating:⭐⭐',
  ];

  var imgList = [
    'assets/images/medicalcollge.jpg',
    'assets/images/Sut.jpg',
    'assets/images/sp fort.jpg',
    'assets/images/cosmopolitanhospitals.jpg',
    'assets/images/Kims.jpg',
    'assets/images/sk.jpg',
    'assets/images/lords.jpg',
    'assets/images/jubilee.jpg',
    'assets/images/venad.jpg',
    'assets/images/punarjani.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        title: Text('Hospitals'),
      ),
      body: ListView.builder(
        itemCount: imgList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              showDialogFunc(
                  context, imgList[index], titleList[index], descList[index]);
            },
            child: Card(
              child: SingleChildScrollView(
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 90,
                      height: 100,
                      child: Image.asset(imgList[index]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            titleList[index],
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: width,
                            child: Text(
                              descList[index],
                              maxLines: 3,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 3, 121, 7)),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

showDialogFunc(context, img, title, desc) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(13),
                ),
                padding: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width * 0.8,
                height: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        img,
                        width: 200,
                        height: 200,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(title,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      desc,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      });
}
