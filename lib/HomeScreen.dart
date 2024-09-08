import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Points Counter'),
        backgroundColor: const Color(0xff029587),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  const Text("Team A ",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
                  Text(
                    "$teamAPoints",
                    style:
                        const TextStyle(fontWeight: FontWeight.w400, fontSize: 100),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamAPoints++;
                      });
                    },
                    style: const ButtonStyle(
                        backgroundColor:
                        WidgetStatePropertyAll(Color(0xff029587))),
                    child:
                    const Text(
                      "Add 1 Point ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamAPoints += 2;
                      });
                    },
                    style: const ButtonStyle(
                        backgroundColor:
                        WidgetStatePropertyAll(Color(0xff029587))),
                    child:
                    const Text(
                      "Add 2 Point ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamAPoints += 3;
                      });
                    },
                    style: const ButtonStyle(
                        backgroundColor:
                        WidgetStatePropertyAll(Color(0xff029587))),
                    child:
                    const Text(
                      "Add 3 Point ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: const VerticalDivider(
                  color: Colors.grey,
                  thickness: 2,
                ),
              ),

              Column(
                children: [
                  const Text(
                    "Team B ",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  Text(
                    "$teamBPoints",
                    style: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 100),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamBPoints++;
                      });
                    },
                    style: const ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(Color(0xff029587))),
                    child: const Text(
                      "Add 1 Point ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamBPoints = teamBPoints + 2;
                      });
                    },
                    style: const ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(Color(0xff029587))),
                    child:
                    const Text(
                      "Add 2 Point ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamBPoints = teamBPoints + 3;
                      });
                    },
                    style: const ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(Color(0xff029587))),
                    child:
                    const Text(
                      "Add 3 Point ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

                ],
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                teamAPoints =0 ;
                teamBPoints = 0;
              });
            },
            style: const ButtonStyle(
                backgroundColor:
                WidgetStatePropertyAll(Color(0xff029587))),
            child:
            const Text(
              " Reset ",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  ElevatedButton elvatedButton(String text , int team ) {
    return    ElevatedButton(
      onPressed: () {
        setState(() {
        teamBPoints;
        teamAPoints;
        team;
        });
        print("$teamBPoints");
      },
      style: const ButtonStyle(
          backgroundColor:
          WidgetStatePropertyAll(Color(0xff029587))),
      child:  Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
