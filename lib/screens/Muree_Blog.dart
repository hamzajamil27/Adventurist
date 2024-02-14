import 'package:flutter/material.dart';

class MurreeBlogScreen extends StatefulWidget {
  const MurreeBlogScreen({super.key});

  @override
  State<MurreeBlogScreen> createState() => _MurreeBlogScreenState();
}

class _MurreeBlogScreenState extends State<MurreeBlogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(child: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Text("Murree"),
        )),
        elevation: 20,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                SizedBox(height: 20,),
                Text("A Mountain Retreat with a Rich History", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                SizedBox(height: 30,),
                Text("Murree, nestled in the Galyat region of the Pir Panjal Range, is a picturesque "
                    "mountain resort city in Punjab, Pakistan. Its cool climate, lush greenery, and "
                    "stunning vistas have made it a beloved destination for tourists and locals alike. Let’s "
                    "delve into the fascinating aspects of this charming hill station." , style: TextStyle(fontSize: 16),),

                SizedBox(height: 10,),

                Image(image: NetworkImage("https://images.unsplash.com/photo-1585654766816-8a9fe569d445?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),

                SizedBox(height: 20,),
                Text("Climate:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                Text("Murree’s climate is a delightful escape from the scorching heat of the plains. Here are some key points about its weather: "
                    "\nAltitude: Murree sits at an average altitude of 2,291 meters (7,516 feet) above sea level."
                    "\nSeasons: The months of summer (June to September) are the most popular time to visit, with pleasant temperatures and clear skies."
                    "\nSnow-capped Beauty: In winter, the town transforms into a snow-covered wonderland, attracting visitors seeking snowy landscapes and cozy retreats.",
                  style: TextStyle(fontSize: 16),),

                SizedBox(height: 20,),

                Text("Historical Roots:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),

                SizedBox(height: 10,),

                Text("The history of Murree dates back to the British colonial era when it served as a hill station "
                    "and summer retreat for the British officers and their families. Established in 1851 by the British Raj, "
                    "Murree quickly gained popularity for its salubrious climate and scenic beauty, attracting visitors from "
                    "far and wide. Over the years, the town has witnessed significant development, evolving into a bustling tourist "
                    "destination while still retaining its colonial charm and architectural heritage.",
                  style: TextStyle(fontSize: 16),),

                SizedBox(height: 20,),

                Text("Why it is Famous:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text("Murree's fame stems from its enchanting beauty, tranquil ambiance, and plethora of attractions that cater "
                    "to a wide range of interests. The town is renowned for its panoramic views of the surrounding hills and valleys, "
                    "picturesque hiking trails, and lush green forests teeming with wildlife. Visitors flock to Murree to explore its "
                    "colonial-era buildings, bustling bazaars, and charming cafes, immersing themselves in its rich history and culture. "
                    "Additionally, Murree is famous for its handicrafts, particularly its intricate woodwork and Pahari paintings, which "
                    "serve as cherished souvenirs for tourists.",
                  style: TextStyle(fontSize: 16),),

                SizedBox(height: 20,),

                Text("Tourist Influx", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text("Visitors: While exact numbers vary, Murree attracts a significant number of tourists annually. Many come from "
                    "the Islamabad-Rawalpindi area, seeking respite from city life."
                    "\nGateway to Adventure: Murree also serves as a transit point for those exploring Azad Kashmir and Abbottabad.",
                  style: TextStyle(fontSize: 16),),

                SizedBox(height: 20,),
                Text("Summary:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text("In summary, Murree’s rich history, pleasant climate, and breathtaking landscapes continue to captivate travelers, "
                    "making it a timeless gem in Pakistan’s mountainous terrain.",
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
    );
  }
}
