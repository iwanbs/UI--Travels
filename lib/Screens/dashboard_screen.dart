// ignore_for_file: sort_child_properties_last, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:udbtravel_app/Navigation/botom_nav.dart';
import '../models/destination_model.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Discover',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 0, 59, 141),
                          )),
                      Text(
                        'The New World',
                        style: TextStyle(
                            color: Color.fromARGB(255, 66, 134, 229),
                            fontSize: 37,
                            fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                  CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 10, 84, 187),
                      child: SizedBox(
                          width: 60,
                          height: 60,
                          child: ClipOval(
                            child: Image.asset(
                              "assets/images/circular image.png",
                            ),
                          )))
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  isDense: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: const Icon(Icons.camera),
                  hintText: "Search Places...",
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Indonesian',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 59, 141),
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Container(
                          width: 10,
                          height: 3,
                          decoration: const BoxDecoration(
                            // shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    for (final category in categoryList)
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: Text(
                          category,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 30, 30, 31)
                                .withOpacity(0.6),
                            fontSize: 16,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                itemCount: destinations.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            destination: destinations[index],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 300,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(destinations[index].imageUrl),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16.0),
                        ),
                        color: Colors.blue[400],
                      ),
                      child: Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(6.0),
                            margin: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(175, 1, 55, 131),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  12.0,
                                ),
                              ),
                            ),
                            child: const Text(
                              "Recommended",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 8.0,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 65,
                              padding: const EdgeInsets.all(12.0),
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(138, 36, 27, 27),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(16.0),
                                  bottomRight: Radius.circular(16.0),
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        destinations[index].destination,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        destinations[index].country,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 15.0,
                                          color: Color.fromARGB(
                                              255, 221, 217, 217),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star_rate,
                                        color: Color.fromARGB(255, 255, 255, 1),
                                        size: 20,
                                      ),
                                      Text(
                                        destinations[index].rating.toString(),
                                        style: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontSize: 17),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "More Places",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 59, 141)),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: const [
                        Text(
                          "View All",
                          style: TextStyle(
                            color: Color.fromARGB(255, 23, 25, 26),
                          ),
                        ),
                        Icon(
                          Icons.arrow_right,
                          color: Color.fromARGB(255, 15, 16, 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListView.builder(
                  itemCount: destinations1.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(
                              destination: destinations1[index],
                            ),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 100,
                            color: Colors.white,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: 150,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          destinations1[index].imageUrl),
                                      fit: BoxFit.cover,
                                    ),
                                    color: Colors.blue[400],
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(destinations1[index].destination,
                                          style: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 59, 141),
                                              fontSize: 20)),
                                      Text(destinations1[index].country,
                                          style: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                              "\$${destinations1[index].price}",
                                              style: const TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 42, 39, 39),
                                                  fontSize: 15)),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.star_rate,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 1),
                                                size: 20,
                                              ),
                                              Text(
                                                destinations1[index]
                                                    .rating
                                                    .toString(),
                                                style: const TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 9, 8, 8),
                                                    fontSize: 17),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const Icon(Icons.arrow_forward_ios,
                                    color: Colors.blue),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  // In the constructor, require a Todo.
  const DetailScreen({super.key, required this.destination});

  // Declare a field that holds the Todo.
  final Destination destination;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 400,
              child: Stack(
                children: [
                  Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 90,
                        width: 90,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(134, 255, 255, 255),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: const Icon(
                                  Icons.arrow_back_rounded,
                                  color: Color.fromARGB(160, 0, 0, 0),
                                  size: 20,
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(134, 255, 255, 255),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: const Icon(
                                Icons.menu,
                                color: Color.fromARGB(160, 0, 0, 0),
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(12.0),
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(16.0),
                            bottomRight: Radius.circular(16.0),
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                        ),
                      )),
                  Positioned(
                      bottom: 20,
                      left: 40,
                      right: 40,
                      child: Container(
                        height: 80,
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: ListView.builder(
                                itemCount: 5,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Container(
                                      height: 60,
                                      width: 60,
                                      decoration: const BoxDecoration(
                                          color:
                                              Color.fromARGB(153, 67, 66, 66),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                      child: Center(
                                        child: Text(
                                          "${index++}",
                                          style: const TextStyle(
                                            color: Color.fromARGB(
                                                185, 234, 228, 228),
                                            fontSize: 20.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                        padding: const EdgeInsets.all(12.0),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(93, 255, 255, 255),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(16.0),
                            bottomRight: Radius.circular(16.0),
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                        ),
                      ))
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60)),
                image: DecorationImage(
                  image: AssetImage(destination.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    destination.destination,
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    destination.country,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.normal),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star_rate,
                          color: Color.fromARGB(255, 255, 255, 1),
                          size: 20,
                        ),
                        Text(
                          destination.rating.toString(),
                          style: const TextStyle(
                              color: Color.fromARGB(255, 15, 14, 14),
                              fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 30),
              child: Text(
                "Description",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 30),
              child: Text(
                destination.description,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(169, 51, 48, 48)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 20),
              child: Container(
                height: 50,
                width: 140,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(212, 22, 139, 234),
                        Color.fromARGB(175, 1, 55, 131),
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.date_range,
                      color: Color.fromARGB(204, 255, 255, 255),
                      size: 20,
                    ),
                    Text(
                      "\$${destination.price} / days",
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(204, 255, 255, 255)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 60,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromARGB(212, 22, 139, 234),
                            Color.fromARGB(175, 1, 55, 131),
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Icon(
                      Icons.favorite_outline_rounded,
                      color: Color.fromARGB(255, 244, 235, 235),
                      size: 30,
                    ),
                  ),
                  const SizedBox(width: 10),
                  RaisedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BottomNav(),
                        ),
                      );
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: const EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromARGB(175, 1, 55, 131),
                            Color.fromARGB(212, 22, 139, 234),
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: SizedBox(
                        height: 50,
                        width: 250,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              'Book Trip Now',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_circle_right_sharp,
                              color: Color.fromARGB(255, 244, 235, 235),
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
