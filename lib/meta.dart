import 'package:flutter/material.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  late Color _buttonColor;

  @override
  void initState() {
    //Начальное значение цвета кнопки
    _buttonColor = Colors.white;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(213, 255, 255, 255),
      body: Column(
        children: [
          Stack(children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              child: Image.asset(
                'images/photo.png',
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                width: 120,
                height: 20,
                margin: EdgeInsets.only(top: 45, left: 20),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(60)),
                child: Center(
                  child: Text(
                    'News of the Day',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Climate Change Is Everywhere, But\nHere\'s the Science You Missed',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: TextButton(
                  onPressed: () {},
                  child: Row(children: [
                    Text(
                      'Read',
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.white,
                    )
                  ]),
                ),
              )
            ]),
          ]),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 350,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 160,
                    child: TextButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: Text(
                        'News Burst',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 146, 22, 247),
                              Colors.purple,
                              Color.fromARGB(131, 235, 93, 211),
                              Color.fromARGB(255, 255, 188, 2),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.01, 0.2, 0.6, 1])),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Deep Dive',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ),
                ]),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TextButton(
                  child: Text(
                    'Trending',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text('Popular', style: TextStyle(color: Colors.black)),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text('Today', style: TextStyle(color: Colors.black)),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text('Environment',
                      style: TextStyle(color: Colors.black)),
                  onPressed: () {},
                ),
                TextButton(
                  child:
                      Text('Short Doc', style: TextStyle(color: Colors.black)),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 505,
            width: 380,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 100,
                      child: Row(
                        children: [
                          Container(
                            width: 60,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('images/PH.png'),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Row(children: [
                                  Text(
                                    'Jane Sin',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.check_circle_outline_outlined,
                                    color: Color.fromARGB(255, 252, 9, 240),
                                    size: 14,
                                  )
                                ]),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                  child: Text(
                                'Oct 11, 2022',
                                style: TextStyle(color: Colors.grey),
                              ))
                            ],
                          ),
                          Container(
                              height: 30,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(bottom: 40, left: 120),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color.fromARGB(255, 253, 244, 253)),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Follow',
                                    style: TextStyle(color: Colors.purple),
                                  ))),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Text(
                        'Teams calling Panthers about\nChrisitan McCaffrey trades, but\nCarolina not expected to hold\nfire sale',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '12 min reading time',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text('Sport', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                            width: 320,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset('images/JS.png'))),
                        Container(
                          height: 25,
                          width: 90,
                          margin: EdgeInsets.only(top: 185, left: 20),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.75),
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            '132k viewed',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black),
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 35,
                      child: Row(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.thumb_up_alt_outlined,
                                size: 20,
                              )),
                          Text('853'),
                          TextButton(
                              onPressed: () {},
                              child: Icon(Icons.thumb_down_off_alt)),
                          Text('281'),
                          TextButton(
                              onPressed: () {},
                              child: Icon(Icons.mode_comment_outlined)),
                          Text('43'),
                          SizedBox(
                            width: 60,
                          ),
                          TextButton(
                              onPressed: () {}, child: Icon(Icons.more_horiz))
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
