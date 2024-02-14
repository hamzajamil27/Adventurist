import 'package:flutter/material.dart';

class KhujerabParkScreen extends StatefulWidget {
  const KhujerabParkScreen({super.key});

  @override
  State<KhujerabParkScreen> createState() => _KhujerabParkScreenState();
}

class _KhujerabParkScreenState extends State<KhujerabParkScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        title: Center(child: Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Text("Khunjerab National Park"),
        )),
        elevation: 20,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                SizedBox(height: 20,),
                Text("Exploring Pakistan's Alpine Wonderland", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                SizedBox(height: 30,),
                Text("Nestled in the northern reaches of Pakistan, Khunjerab National Park stands as a testament "
                    "to the country's natural beauty and biodiversity. Situated in the high-altitude region of "
                    "Gilgit-Baltistan, this pristine wilderness is a sanctuary for a diverse array of flora and fauna, "
                    "offering visitors a glimpse into the untamed splendor of the Himalayas and Karakoram ranges." ,
                  style: TextStyle(fontSize: 16),),

                SizedBox(height: 10,),

                Image(image: NetworkImage("https://images.unsplash.com/photo-1659293155300-f4cc8b866e80?q=80&w=1633&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),

                SizedBox(height: 20,),
                Text("Geography:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                Text("Spanning an area of over 2,270 square kilometers, Khunjerab National Park is Pakistan's largest national park "
                    "and is situated along the country's border with China. The park's landscape is characterized by rugged mountains, "
                    "deep valleys, and pristine alpine meadows, with elevations ranging from 2,500 meters to over 7,000 meters above sea level.",
                  style: TextStyle(fontSize: 16),),

                SizedBox(height: 20,),

                Text("Wildlife:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),

                SizedBox(height: 10,),

                Text("Khunjerab National Park is home to a rich and diverse array of wildlife, adapted to the harsh mountain environment."
                    " The park is renowned for its population of iconic species such as the Snow Leopard, Himalayan Ibex, Marco Polo Sheep, and Brown Bear, among others.",
                  style: TextStyle(fontSize: 16),),

                SizedBox(height: 20,),

                Text("Conservation Efforts:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text("As a UNESCO World Heritage Site and part of the larger Central Karakoram National Park complex, Khunjerab National "
                    "Park plays a vital role in the conservation of the region's unique ecosystems and endangered species. Efforts to "
                    "protect the park's biodiversity include habitat restoration, wildlife monitoring, and community-based conservation initiatives.",
                  style: TextStyle(fontSize: 16),),

                SizedBox(height: 20,),

                Text("Visitor Experiences:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text("For adventurous travelers, Khunjerab National Park offers a host of unique experiences amidst its breathtaking landscapes "
                    "and cultural heritage. Popular activities include trekking along scenic trails, camping under the starlit sky, and wildlife "
                    "spotting in the park's remote valleys.",
                  style: TextStyle(fontSize: 16),),

                SizedBox(height: 20,),
                Text("Conclusion:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text("In conclusion, Khunjerab National Park stands as a jewel in Pakistan's crown, showcasing the country's natural beauty and"
                    " cultural heritage in all its splendor. From its rugged mountains to its pristine valleys, the park offers "
                    "visitors a glimpse into a world untouched by time, where wildlife roams free and ancient traditions endure.",
                  style: TextStyle(fontSize: 16),),


                SizedBox(height: 20,),

                Divider(
                  color: Colors.black,
                ),
                SizedBox(height: 40,),


              ]
          ),
        ),
      ),
    );;
  }
}
