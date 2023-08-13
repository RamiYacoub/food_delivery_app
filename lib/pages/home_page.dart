import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                  mainAxisExtent: 200,
                  mainAxisSpacing: 18,
                  crossAxisSpacing: 18,
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: const <Widget>[
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                ],
              ),
            ]),
          )),
        ),
      ),
    );
  }
}
