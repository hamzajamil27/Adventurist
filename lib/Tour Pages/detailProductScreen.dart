import 'package:adventurist/Tour%20Pages/ImageSlider.dart/ImageSlider.dart';
import 'package:adventurist/Tour%20Pages/tourpagelist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailProductScreen extends StatefulWidget {
  final Product product;

  const DetailProductScreen({Key? key, required this.product})
      : super(key: key);

  @override
  State<DetailProductScreen> createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.share_outlined)),
          SizedBox(
            width: 15,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
          SizedBox(
            width: 15,
          ),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageSlider(
                imageList: [
                  widget.product.imageUrl,
                  widget.product.imageUrl,
                  widget.product.imageUrl
                ],
                imageHeight: height * 0.35,
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Text(
                widget.product.name,
                style: TextStyle(fontSize: 38),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                '\$${widget.product.price.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              RatingBar.builder(
                initialRating:
                    4.5, // You can use the actual product rating here
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 24,
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  // You can handle the rating update here
                  print(rating);
                },
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                "Highlights",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                  "Werewolves were consistently rated to be the scariest monsters. \nUgly vampires were typically said to be scarier than other types of vampires. \nZombies scored higher scariness ratings with young girls than with young boys. \nClowns, despite being a control group, scored unexpectedly high scariness ratings."),
              SizedBox(
                height: height * 0.02,
              ),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: height * 0.04,
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/5384445/pexels-photo-5384445.jpeg?auto=compress&cs=tinysrgb&w=600"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "Good Robins",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Isle of wigh, UK",
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "3 Contribution",
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              RatingBar.builder(
                initialRating: 3, // You can use the actual product rating here
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 24,
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  // You can handle the rating update here
                  print(rating);
                },
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Great disappointment!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "Great boat, Great crew. \nGreat multilingual commentary. \nGreat coastal cruise... if a bit rough.",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
