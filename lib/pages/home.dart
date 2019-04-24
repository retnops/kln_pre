import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  //BORDERLINE
  Widget borderLine() {
    return new Container(
      margin: EdgeInsets.only(top: 15, left: 20.0, right: 20.0),
      height: 0.3,
      color: Colors.grey,
    );
  }

  //PROFILE_IDENTITY
  Widget profileIndentity() {
    return new Container(
      margin: EdgeInsets.only(top: 60, left: 20.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Hi, Murtiono Widi",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                ),
                Container(
                  height: 3.0,
                ),
                Text(
                  "Saldo Rp 72,000",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                )
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                width: 30.0,
                height: 30.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        image: AssetImage('assets/dinner.png')),
                    border: new Border.all(color: Colors.grey)),
              ),
            ],
          )
        ],
      ),
    );
  }

  //EATING_TIME
  Widget eatingTime() {
    return new Container(
      margin: EdgeInsets.only(top: 35.0, right: 20.0, left: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 117.0,
            width: 106.0,
            child: GestureDetector(
              child: Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/lunch.png'),
                    Text(
                      "Lunch",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              onTap: () {
                final snackbar = SnackBar(content: Text("Lunch"));
                Scaffold.of(context).showSnackBar(snackbar);
              },
            ),
          ),
          Container(
            height: 117.0,
            width: 106.0,
            child: GestureDetector(
              child: Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/dinner.png'),
                    Text(
                      "Dinner",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              onTap: () {
                final snackbar = SnackBar(content: Text("Dinner"));
                Scaffold.of(context).showSnackBar(snackbar);
              },
            ),
          ),
          Container(
            height: 117.0,
            width: 106.0,
            child: GestureDetector(
              child: Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/event.png'),
                    Text(
                      "Event",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              onTap: () {
                final snackbar = SnackBar(content: Text("Event"));
                Scaffold.of(context).showSnackBar(snackbar);
              },
            ),
          )
        ],
      ),
    );
  }

  //FEATURED_PRODUCT
  Widget featuredProduct() {
    return new Container(
      margin: EdgeInsets.only(top: 35.0, right: 20.0, left: 20.0),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Featured Product",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            height: 210,
            child: new ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 160.0,
                  child: Card(
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 175,
                                child: Image.asset('assets/merchant44.jpg'),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10.0),
                                alignment: Alignment.centerLeft,
                                height: 35,
                                width: 50,
                                child: Image.asset('assets/merchant1.png'),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          child: Container(
                            margin: EdgeInsets.only(left: 10.0, top: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Healthy Dinner",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                                Container(
                                  height: 3.0,
                                ),
                                Text(
                                  "Rp 35,000 /hari",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 160.0,
                  child: Card(
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 175,
                                child: Image.asset('assets/merchant22.jpg'),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 10.0),
                                height: 35,
                                width: 50,
                                child: Image.asset('assets/merchant1.png'),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          child: Container(
                            margin: EdgeInsets.only(left: 10.0, top: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Salad Corner",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                                Container(
                                  height: 3.0,
                                ),
                                Text(
                                  "Rp 35,000 /hari",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 160.0,
                  child: Card(
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 175,
                                child: Image.asset('assets/merchant11.jpg'),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 10.0),
                                height: 35,
                                width: 50,
                                child: Image.asset('assets/merchant1.png'),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          child: Container(
                            margin: EdgeInsets.only(left: 10.0, top: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Healthy Breakfast",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                                Container(
                                  height: 3.0,
                                ),
                                Text(
                                  "Rp 30,000 /hari",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 160.0,
                  child: Card(
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 175,
                                child: Image.asset('assets/merchant44.jpg'),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 10.0),
                                height: 35,
                                width: 50,
                                child: Image.asset('assets/merchant1.png'),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          child: Container(
                            margin: EdgeInsets.only(left: 10.0, top: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "D'Cost Special",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                                Container(
                                  height: 3.0,
                                ),
                                Text(
                                  "Rp 50,000 /hari",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  //BANNER
  Widget banner() {
    return new Container(
      margin: EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
      child: Container(
        margin: EdgeInsets.only(top: 20.0),
        height: 170,
        child: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Card(
              child: Image.asset('assets/banner1.jpg'),
            ),
            Card(
              child: Image.asset('assets/banner2.jpg'),
            ),
            Card(
              child: Image.asset('assets/banner3.jpg'),
            ),
            Card(
              child: Image.asset('assets/banner4.jpg'),
            ),
          ],
        ),
      ),
    );
  }

  //FOOD_VARIAN
  Widget foodVarian() {
    return new Container(
      margin: EdgeInsets.only(top: 35.0, right: 20.0, left: 20.0),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Jenis Masakan",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 110.0,
                      width: 106.0,
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 70.0,
                              width: 70.0,
                              child: Image.asset('assets/nusantara.png'),
                            ),
                            Text(
                              "Nusantara",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.brown),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 110.0,
                      width: 106.0,
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 70.0,
                              width: 70.0,
                              child: Image.asset('assets/western.png'),
                            ),
                            Text(
                              "Western",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 110.0,
                      width: 106.0,
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 70.0,
                              width: 70.0,
                              child: Image.asset('assets/japanese.png'),
                            ),
                            Text(
                              "Japanese",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 110.0,
                      width: 106.0,
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 70.0,
                              width: 70.0,
                              child: Image.asset('assets/chinese.png'),
                            ),
                            Text(
                              "Chinese",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.yellow),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 110.0,
                      width: 106.0,
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 70.0,
                              width: 70.0,
                              child: Image.asset('assets/healthy.png'),
                            ),
                            Text(
                              "Healthy",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.green),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 110.0,
                      width: 106.0,
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 70.0,
                              width: 70.0,
                              child: Image.asset('assets/oriental.png'),
                            ),
                            Text(
                              "Oriental",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.amber),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  //NEW_PRODUCT
  Widget newProduct() {
    return new Container(
      margin: EdgeInsets.only(top: 35.0, right: 20.0, left: 20.0),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "New Product",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            height: 210,
            child: new ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 160.0,
                  child: Card(
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 175,
                                child: Image.asset('assets/merchant11.jpg'),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10.0),
                                alignment: Alignment.centerLeft,
                                height: 35,
                                width: 50,
                                child: Image.asset('assets/merchant1.png'),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          child: Container(
                            margin: EdgeInsets.only(left: 10.0, top: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Healthy Dinner",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                                Container(
                                  height: 3.0,
                                ),
                                Text(
                                  "Rp 35,000 /hari",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 160.0,
                  child: Card(
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 175,
                                child: Image.asset('assets/merchant44.jpg'),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 10.0),
                                height: 35,
                                width: 50,
                                child: Image.asset('assets/merchant1.png'),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          child: Container(
                            margin: EdgeInsets.only(left: 10.0, top: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Salad Corner",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                                Container(
                                  height: 3.0,
                                ),
                                Text(
                                  "Rp 35,000 /hari",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 160.0,
                  child: Card(
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 175,
                                child: Image.asset('assets/merchant22.jpg'),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 10.0),
                                height: 35,
                                width: 50,
                                child: Image.asset('assets/merchant1.png'),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          child: Container(
                            margin: EdgeInsets.only(left: 10.0, top: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Healthy Breakfast",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                                Container(
                                  height: 3.0,
                                ),
                                Text(
                                  "Rp 30,000 /hari",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 160.0,
                  child: Card(
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 175,
                                child: Image.asset('assets/merchant44.jpg'),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 10.0),
                                height: 35,
                                width: 50,
                                child: Image.asset('assets/merchant1.png'),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          child: Container(
                            margin: EdgeInsets.only(left: 10.0, top: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "D'Cost Special",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                                Container(
                                  height: 3.0,
                                ),
                                Text(
                                  "Rp 50,000 /hari",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  //HARGA
  Widget harga() {
    return new Container(
      margin: EdgeInsets.only(top: 35.0, right: 20.0, left: 20.0),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Harga",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 100.0,
                      width: 160.0,
                      child: Card(
                        child: Container(
                          margin: EdgeInsets.only(left: 15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Budget",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text("Kurang dari 25rb"),
                              Image.asset('assets/harga1.png')
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 100.0,
                      width: 160.0,
                      child: Card(
                        child: Container(
                          margin: EdgeInsets.only(left: 15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Value",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text("Dari 25rb - 34rb"),
                              Image.asset('assets/harga2.png')
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 100.0,
                      width: 160.0,
                      child: Card(
                        child: Container(
                          margin: EdgeInsets.only(left: 15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Casual",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text("Dari 35rb - 49rb"),
                              Image.asset('assets/harga3.png')
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 100.0,
                      width: 160.0,
                      child: Card(
                        child: Container(
                          margin: EdgeInsets.only(left: 15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Premium",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text("Lebih dari 50rb"),
                              Image.asset('assets/harga4.png')
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            profileIndentity(),
            borderLine(),
            eatingTime(),
            featuredProduct(),
            banner(),
            foodVarian(),
            newProduct(),
            harga(),
          ],
        ),
      ),
    );
  }
}
