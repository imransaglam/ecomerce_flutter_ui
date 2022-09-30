import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<String> Banner = [
    "assets/banner1.png",
    "assets/banner2.png",
    "assets/banner3.png",
  ];
  List<String> Category = [
    "assets/Apparel.png",
    "assets/school.png",
    "assets/sports.png",
    "assets/electronic.png",
    "assets/all.png",
  ];
  List<String> Texts = [
    "Apparel",
    "School",
    "Sports",
    "Electronic",
    "All",
  ];
  List<String> Images = [
    "assets/img1.png",
    "assets/img2.png",
    "assets/img3.png",
    "assets/img4.png",
    "assets/img5.png",
    "assets/img6.png",
  ];
  List<String> Subtexts = [
    "Monitor LG 22”inc 4K 120Fps",
    "Aestechic Mug - white variant",
    "Airpods pro",
    "Playstation 4 - SSD 128 GB",
    "Black T-shirt",
    "Macbook Pro - 8/128GB - With touchbar",
  ];
  List<String> money = [
    "199.99",
    "19.99",
    "499.99",
    "1999.99",
    "199.99",
    "19.99",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 40),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivery address",
                      style: TextStyle(color: Color(0xffc8c8cb), fontSize: 10),
                    ),
                    Row(
                      children: [
                        Text(
                          "Salatiga City,Central Java",
                          style:
                              TextStyle(color: Color(0xff393f42), fontSize: 12,fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Color(0xff200e32),
                        ),
                        SizedBox(width: 130),
                        Stack(
                          children: [
                            ImageIcon(
                                size: 28,
                                AssetImage(
                                  "assets/buy.png",
                                )),
                            Positioned(
                              left: 17,
                              child: ImageIcon(
                                  color: Colors.red,
                                  size: 11.5,
                                  AssetImage(
                                    "assets/circle.png",
                                  )),
                            ),
                            Positioned(
                              left: 17,
                              child: ImageIcon(
                                  color: Colors.white,
                                  size: 11.5,
                                  AssetImage(
                                    "assets/number.png",
                                  )),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ImageIcon(
                            size: 28, AssetImage("assets/notification.png")),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 350,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xffF0F2F1))),
              child: TextFormField(
                decoration: InputDecoration(
                  enabled: false,
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    color: Color(0xff939393),
                    size: 20,
                  ),
                  labelText: "Search here...",
                  labelStyle: TextStyle(
                    color: Color(0xffC8C8CB),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: 390,
                height: 163,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Banner.length,
                    itemBuilder: ((context, index) {
                      return Row(
                        children: [
                          Container(
                            width: 304,
                            height: 144,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Image.asset(Banner[index]),
                          ),
                        ],
                      );
                    }))),
            Text(
              "Category",
              style: TextStyle(color: Color(0xff393F42), fontSize: 14,fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10),
              child: Container(
                  width: 349,
                  height: 61,
                  margin: EdgeInsets.only(top: 10),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Category.length,
                      itemBuilder: ((context, index) {
                        return Container(
                          margin: EdgeInsets.only(
                            right: 16,
                          ),
                          width: 57,
                          height: 61,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Image.asset(Category[index]),
                                  Text(
                                    Texts[index],
                                    style: TextStyle(
                                        color: Color(0xff939393), fontSize: 12),
                                  )
                                ],
                              ),
                            ],
                          ),
                        );
                      }))),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Recent Product",
                  style: TextStyle(color: Color(0xff393F42), fontSize: 14,fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 180),
                Container(
                  width: 78,
                  height: 27,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xffF0F2F1))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Filters",
                          style: TextStyle(
                              color: Color(0xff393F42), fontSize: 12)),
                      ImageIcon(
                          size: 28,
                          color: Color(0xff393F42),
                          AssetImage(
                            "assets/filter.png",
                          )),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.8,
                    crossAxisCount: 2,
                  ),
                  itemCount: Images.length,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 170,
                        height: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(Images[index]),
                            SizedBox(height: 5),
                            Container(
                                padding: EdgeInsets.only(left: 10),
                                width: 144,
                                height: 16,
                                child: Text(
                                  Subtexts[index],
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xff393F42)),
                                )),
                            SizedBox(height: 5),
                            Container(
                                padding: EdgeInsets.only(left: 10),
                                width: 56,
                                height: 17,
                                child: Text(
                                  "\$" + money[index],
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xff393F42),fontWeight: FontWeight.bold),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 144,
                                  height: 31,
                                  child: Text(
                                    'Add to cart',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Color(0xff67C4A7),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    );
                  })),
            )
          ]),
        ),
      ),
    );
  }
}
