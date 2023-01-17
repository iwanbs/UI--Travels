import 'package:flutter/material.dart';
import 'package:udbtravel_app/models/destination_model.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
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
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
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
                                        children: [
                                          Text(destinations1[index].destination,
                                              style: const TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 0, 59, 141),
                                                  fontSize: 20)),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                left: 8.0, top: 3),
                                            child: Text("Status : Done",
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 104, 98, 98),
                                                    fontSize: 10)),
                                          ),
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
                                                    fontSize: 10)),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.local_airport,
                                            color: Color.fromARGB(
                                                255, 11, 93, 161),
                                            size: 15,
                                          ),
                                          Text("January 19, 2023",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10)),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                              "\$${destinations1[index].price * 7} / 7 days",
                                              style: const TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 42, 39, 39),
                                                  fontSize: 15)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const Icon(
                                  Icons.airplane_ticket,
                                  color: Color.fromARGB(255, 8, 16, 109),
                                  size: 30,
                                )
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
