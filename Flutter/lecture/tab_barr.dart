import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlutterTabBarPage extends StatelessWidget {
  const FlutterTabBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 18,
      initialIndex: 9,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar'),
          bottom: TabBar(
            dividerHeight: 0,
            indicator: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              color: Colors.red,
            ),
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.yellow,
            tabs: [
              Tab(
                text: 'Car',
              ),
              Tab(
                text: 'Bus',
              ),
              Tab(
                text: 'Car',
              ),
              Tab(
                text: 'Bus',
              ),
              Tab(
                text: 'Car',
              ),
              Tab(
                text: 'Bus',
              ),
              Tab(
                text: 'Car',
              ),
              Tab(
                icon: Icon(Icons.bus_alert),
                text: 'Bus',
              ),
              Tab(
                icon: Icon(Icons.car_crash),
                text: 'Car',
              ),
              Tab(
                icon: Icon(Icons.bus_alert),
                text: 'Bus',
              ),
              Tab(
                icon: Icon(Icons.car_crash),
                text: 'Car',
              ),
              Tab(
                icon: Icon(Icons.bus_alert),
                text: 'Bus',
              ),
              Tab(
                icon: Icon(Icons.car_crash),
                text: 'Car',
              ),
              Tab(
                icon: Icon(Icons.bus_alert),
                text: 'Bus',
              ),
              Tab(
                icon: Icon(Icons.car_crash),
                text: 'Car',
              ),
              Tab(
                icon: Icon(Icons.bus_alert),
                text: 'Bus',
              ),
              Tab(
                icon: Icon(Icons.car_crash),
                text: 'Car',
              ),
              Tab(
                icon: Icon(Icons.bus_alert),
                text: 'Bus',
              ),
              Tab(
                icon: Icon(Icons.car_crash),
                text: 'Car',
              ),
              Tab(
                icon: Icon(Icons.bus_alert),
                text: 'Bus',
              ),
              Tab(
                icon: Icon(Icons.car_crash),
                text: 'Car',
              ),
              Tab(
                icon: Icon(Icons.bus_alert),
                text: 'Bus',
              ),
              Tab(
                icon: Icon(Icons.car_crash),
                text: 'Car',
              ),
              Tab(
                icon: Icon(Icons.bus_alert),
                text: 'Bus',
              ),
              Tab(
                icon: Icon(Icons.car_crash),
                text: 'Car',
              ),
              Tab(
                icon: Icon(Icons.bus_alert),
                text: 'Bus',
              ),
              Tab(
                icon: Icon(Icons.car_crash),
                text: 'Car',
              ),
              Tab(
                icon: Icon(Icons.bus_alert),
                text: 'Bus',
              ),
              Tab(
                icon: Icon(Icons.car_crash),
                text: 'Car',
              ),
              Tab(
                icon: Icon(Icons.bus_alert),
                text: 'Bus',
              ),
              Tab(
                icon: Icon(Icons.car_crash),
                text: 'Car',
              ),
              Tab(
                icon: Icon(Icons.bus_alert),
                text: 'Bus',
              ),
              Tab(
                icon: Icon(Icons.car_crash),
                text: 'Car',
              ),
              Tab(
                icon: Icon(Icons.bus_alert),
                text: 'Bus',
              ),
              Tab(
                icon: Icon(Icons.car_crash),
                text: 'Car',
              ),
              Tab(
                icon: Icon(Icons.bus_alert),
                text: 'Bus',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('Car'),
            ),
            Center(
              child: Text('Bus'),
            ),
            Center(
              child: Text('Car'),
            ),
            Center(
              child: Text('Bus'),
            ),
            Center(
              child: Text('Car'),
            ),
            Center(
              child: Text('Bus'),
            ),
            Center(
              child: Text('Car'),
            ),
            Center(
              child: Text('Bus'),
            ),
            Center(
              child: Text('Car'),
            ),
            Center(
              child: Text('Bus'),
            ),
            Center(
              child: Text('Car'),
            ),
            Center(
              child: Text('Bus'),
            ),
            Center(
              child: Text('Car'),
            ),
            Center(
              child: Text('Bus'),
            ),
            Center(
              child: Text('Car'),
            ),
            Center(
              child: Text('Bus'),
            ),
            Center(
              child: Text('Car'),
            ),
            Center(
              child: Text('Bus'),
            ),
            Center(
              child: Text('Car'),
            ),
            Center(
              child: Text('Bus'),
            ),
            Center(
              child: Text('Car'),
            ),
            Center(
              child: Text('Bus'),
            ),
            Center(
              child: Text('Car'),
            ),
            Center(
              child: Text('Bus'),
            ),
            Center(
              child: Text('Car'),
            ),
            Center(
              child: Text('Bus'),
            ),
            Center(
              child: Text('Car'),
            ),
            Center(
              child: Text('Bus'),
            ),
            Center(
              child: Text('Car'),
            ),
            Center(
              child: Text('Bus'),
            ),
            Center(
              child: Text('Car'),
            ),
            Center(
              child: Text('Bus'),
            ),
            Center(
              child: Text('Car'),
            ),
            Center(
              child: Text('Bus'),
            ),
            Center(
              child: Text('Car'),
            ),
            Center(
              child: Text('Bus'),
            ),
          ],
        ),
      ),
    );
  }
}
