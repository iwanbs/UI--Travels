import 'package:flutter/material.dart';
import 'package:udbtravel_app/Screens/dashboard_screen.dart';
import 'package:udbtravel_app/models/destination_model.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 700,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListView.builder(
                  itemCount: destinations.length,
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
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 150,
                            color: const Color.fromARGB(255, 224, 233, 234),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: 150,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          destinations1[index].imageUrl),
                                      fit: BoxFit.cover,
                                    ),
                                    color: Colors.blue[400],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(destinations1[index].destination,
                                              style: const TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 0, 59, 141),
                                                  fontSize: 20)),
                                          const Padding(
                                            padding:
                                                EdgeInsets.only(right: 20.0),
                                            child: Icon(
                                              Icons.favorite,
                                              color: Color.fromARGB(
                                                  255, 137, 0, 7),
                                              size: 30,
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 3.0),
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.location_on,
                                              color: Color.fromARGB(
                                                  255, 8, 68, 117),
                                              size: 15,
                                            ),
                                            Text(destinations1[index].country,
                                                style: const TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 16)),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                              "\$${destinations1[index].price} / days",
                                              style: const TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 42, 39, 39),
                                                  fontSize: 15)),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20.0),
                                            child: Row(
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
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
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
