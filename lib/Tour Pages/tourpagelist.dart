import 'package:flutter/material.dart';

class Product {
  final String name;
  final String imageUrl;
  final double price;

  Product({required this.name, required this.imageUrl, required this.price});
}

class TourPageListScreen extends StatefulWidget {
  @override
  _TourPageListScreenState createState() => _TourPageListScreenState();
}

class _TourPageListScreenState extends State<TourPageListScreen> {
  final List<Product> products = [
    Product(name: 'Tour 1', imageUrl: 'https://images.pexels.com/photos/14539540/pexels-photo-14539540.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', price: 19.99),
    Product(name: 'Tour 2', imageUrl: 'https://images.pexels.com/photos/14539540/pexels-photo-14539540.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', price: 29.99),
    Product(name: 'Tour 1', imageUrl: 'https://images.pexels.com/photos/14539540/pexels-photo-14539540.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', price: 19.99),
    Product(name: 'Tour 2', imageUrl: 'https://images.pexels.com/photos/14539540/pexels-photo-14539540.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', price: 29.99),
    Product(name: 'Tour 1', imageUrl: 'https://images.pexels.com/photos/14539540/pexels-photo-14539540.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', price: 19.99),
    Product(name: 'Tour 2', imageUrl: 'https://images.pexels.com/photos/14539540/pexels-photo-14539540.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', price: 29.99),
    Product(name: 'Tour 1', imageUrl: 'https://images.pexels.com/photos/14539540/pexels-photo-14539540.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', price: 19.99),
    Product(name: 'Tour 2', imageUrl: 'https://images.pexels.com/photos/14539540/pexels-photo-14539540.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', price: 29.99),
 
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios_sharp),
          title: Center(child: Text('Soak up the Summer')),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.search),
            )
            ],
        ),
        body: Column(
          children: [
            SizedBox(height: 30,),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns
                  crossAxisSpacing: 12.0, // Spacing between columns
                  mainAxisSpacing: 20, // Spacing between rows
                ),
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  return GridItem(
                    product: products[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GridItem extends StatefulWidget {
  final Product product;

  GridItem({required this.product});

  @override
  _GridItemState createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 0 ),
      child: Container(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
            widget.product.imageUrl,
            height: height* 0.17,
           width: width * 0.43,
            fit: BoxFit.cover,
          ),
                  
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPressed = !isPressed;
                        });
                      },
                      child: Container(
                        height: height * 0.08,
                        width: width * 0.08,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isPressed
                              ? Colors.red
                              : Color.fromARGB(255, 223, 222, 222),
                        ),
                        child: Icon(
                          Icons.favorite_border,
                          color: isPressed ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Text(widget.product.name),
            SizedBox(height: 4.0),
            Text('\$${widget.product.price.toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }
}