import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> listOfBurgers = [
    {
      'url':
          'https://img.freepik.com/premium-photo/cheeseburger-isolated-white-background_742252-2213.jpg?w=826',
      'name': 'Beef Burger',
      'estimatedTime': '30',
      'frequencyOfSelling': '120',
      'price': '5.40',
    },
    {
      'url':
          'https://img.freepik.com/premium-photo/cheeseburger-isolated-white-background_742252-2213.jpg?w=826',
      'name': 'Beef Burger2',
      'estimatedTime': '30',
      'frequencyOfSelling': '120',
      'price': '5.40',
    },
    {
      'url':
          'https://img.freepik.com/premium-photo/cheeseburger-isolated-white-background_742252-2213.jpg?w=826',
      'name': 'Beef Burger3',
      'estimatedTime': '30',
      'frequencyOfSelling': '120',
      'price': '5.40',
    },
    {
      'url':
          'https://img.freepik.com/premium-photo/cheeseburger-isolated-white-background_742252-2213.jpg?w=826',
      'name': 'Beef Burger4',
      'estimatedTime': '30',
      'frequencyOfSelling': '120',
      'price': '5.40',
    },
    {
      'url':
          'https://img.freepik.com/premium-photo/cheeseburger-isolated-white-background_742252-2213.jpg?w=826',
      'name': 'Beef Burger5',
      'estimatedTime': '30',
      'frequencyOfSelling': '120',
      'price': '5.40',
    },
    {
      'url':
          'https://img.freepik.com/premium-photo/cheeseburger-isolated-white-background_742252-2213.jpg?w=826',
      'name': 'Beef Burger6',
      'estimatedTime': '30',
      'frequencyOfSelling': '120',
      'price': '5.40',
    },
    {
      'url':
          'https://img.freepik.com/premium-photo/cheeseburger-isolated-white-background_742252-2213.jpg?w=826',
      'name': 'Beef Burger7',
      'estimatedTime': '30',
      'frequencyOfSelling': '120',
      'price': '5.40',
    },
    {
      'url':
          'https://img.freepik.com/premium-photo/cheeseburger-isolated-white-background_742252-2213.jpg?w=826',
      'name': 'Beef Burger8',
      'estimatedTime': '30',
      'frequencyOfSelling': '120',
      'price': '5.40',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6.0)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.menu),
                      ),
                    ),
                  ),
                  const Column(
                    children: [
                      Text(
                        'Current Location',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 20,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            'Cairo, Egypt',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6.0)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.notifications),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32.0),
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.network(
                  'http://t4.ftcdn.net/jpg/02/94/30/59/360_F_294305984_60loa4kkSKjpHXegEUFqryY1PrhRRMeN.jpg',
                  height: 200,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 32.0),
              GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 230,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  for (int i = 0; i < listOfBurgers.length; i++)
                    Card(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: Container(
                              width: 120,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  '${listOfBurgers[i]['url']}',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            '${listOfBurgers[i]['name']}',
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '${listOfBurgers[i]['estimatedTime']} Min  |  ${listOfBurgers[i]['frequencyOfSelling']} Sell',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 139, 139, 139),
                            ),
                          ),
                          Text(
                            '\$ ${listOfBurgers[i]['price']}',
                            style: const TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 235, 112, 30),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ]),
          )),
        ),
      ),
    );
  }
}
