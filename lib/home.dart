import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Tile Card'),
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ExpansionTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(cars[index].image),
              ),
              title: Text(cars[index].name),
              subtitle: Text('Price: ₹${cars[index].price.toString()}'),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Cars {
  String name;
  String image;
  double price;

  Cars({
    required this.image,
    required this.name,
    required this.price,
  });
}

List<Cars> cars = [
  Cars(
    image:
        "https://th.bing.com/th/id/OIP.JauAL5VNA3DmGDGgDbF3AgHaHa?w=185&h=185&c=7&r=0&o=5&dpr=1.3&pid=1.7",
    name: "benz",
    price: 3000000,
  ),
  Cars(
    image:
        "https://th.bing.com/th?id=OIP.qNJ-3o_aLdtFRswCO9VLOgHaEK&w=333&h=187&c=8&rs=1&qlt=30&o=6&pid=3.1&rm=2",
    name: "BMW",
    price: 7500000,
  ),
  Cars(
    image:
        "https://th.bing.com/th?id=OIP.1p5Q1B6MQa8gTWCn6_ZObgHaEK&w=333&h=187&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2",
    name: "Audi",
    price: 6500000,
  ),
   Cars(
    image:
        "https://th.bing.com/th/id/OIP.jVXvZ_cxdpGD4mS2N-doBgHaE8?w=1600&h=1067&rs=1&pid=ImgDetMain",
    name: "Range Rover",
    price:800000 ,
  ),
   Cars(
    image:
        "https://th.bing.com/th/id/OIP.6eT5-vV5Oxwt7h0VFtBjdgHaEh?w=276&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
    name: "Ferrari",
    price: 150000000,
  ),
  Cars(
    image:
        "https://th.bing.com/th/id/OIP.cXf-o4gAC3NzpGkI0U8PcQHaEX?w=264&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
    name: "VolksWagon",
    price:3500000 ,
  ),
  Cars(
    image:
        "https://th.bing.com/th/id/OIP.zQr5nb_lDAjYyYDTz5XEWwHaEK?w=289&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
    name: "Mini Cooper",
    price:9600000 ,
  ),
    Cars(
    image:
        "https://th.bing.com/th/id/OIP.gbjiIxbwUVASGiPwdjTEqAHaEK?w=282&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
    name: "Rolls royce",
    price:13600000 ,
  ),
    Cars(
    image:
        "https://th.bing.com/th/id/OIP.8-MPwTDSeOMZz3eWvLMr0gHaE6?w=243&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
    name: "GTR",
    price:12600000 ,
  ),
];
