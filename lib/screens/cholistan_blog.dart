import 'package:flutter/material.dart';

    class CholistanBlogScreen extends StatefulWidget {
      const CholistanBlogScreen({super.key});

      @override
      State<CholistanBlogScreen> createState() => _CholistanBlogScreenState();
    }

    class _CholistanBlogScreenState extends State<CholistanBlogScreen> {
      @override
      Widget build(BuildContext context) {
        return  Scaffold(

          appBar: AppBar(
            title: Center(child: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Text("Cholistan Desert"),
            )),
            elevation: 20,
          ),
          
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  SizedBox(height: 20,),
                  Text("Exploring the Mystique of Cholistan Desert: A Jewel of Pakistan", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  SizedBox(height: 30,),
                  Text("Nestled in the heart of Pakistan, the Cholistan Desert stands as a "
                      "testament to nature's resilience and beauty. Spread across the districts of Bahawalpur, "
                      "Bahawalnagar, and Rahim Yar Khan in the province of Punjab, this vast expanse of golden sands "
                      "is a captivating destination for adventurers and explorers alike. In this blog, we embark on a journey "
                      "to uncover the allure of the Cholistan Desert, delving into its rich history, unique culture, "
                      "and breathtaking landscapes." , style: TextStyle(fontSize: 16),),

                  SizedBox(height: 10,),

                  Image(image: NetworkImage("https://cdn.pixabay.com/photo/2020/09/09/07/57/fortress-5556905_1280.jpg")),

                  SizedBox(height: 20,),
                  Text("Forts in Cholistan", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  Text("1- Derawar Fort \n2- Islamgarh Fort \n3- Mirgarh Fort "
                      "\n4- Jamgarh Fort \n5- Mojgarh Fort \n6- Marot Fort "
                      "\n7- Phoolra Fort \n8- Khangarh Fort \n9- Khairgarh Fort "
                      "\n10- Nawankot Fort \n11- Bijnot Fort",
                    style: TextStyle(fontSize: 16),),

                  SizedBox(height: 20,),

                  Text("A Land of Contrasts:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),

                  SizedBox(height: 10,),

                  Text("The Cholistan Desert, also known as the Rohi Desert, spans over 26,000 "
                      "square kilometers, making it one of the largest deserts in Pakistan. "
                      "Despite its arid and barren appearance, the desert is teeming with life, "
                      "harboring a diverse ecosystem of flora and fauna adapted to its harsh conditions. "
                      "From the majestic Sand Dunes to the sprawling wilderness dotted with shrubs and "
                      "thorny bushes, every corner of Cholistan exudes an otherworldly charm.",
                    style: TextStyle(fontSize: 16),),

                  SizedBox(height: 20,),

                  Text("Rich Cultural Heritage:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text("One of the most intriguing aspects of Cholistan is its rich cultural heritage,"
                      " deeply rooted in the traditions of its inhabitants, predominantly the nomadic "
                      "tribes of the Cholawas and the Baloch. These resilient communities have inhabited "
                      "the desert for centuries, relying on their expertise in animal husbandry and "
                      "craftsmanship to thrive in this unforgiving environment. The culture of Cholistan"
                      " is evident in its vibrant festivals, traditional music, intricate embroidery, and "
                      "exquisite handicrafts, which reflect the ingenuity and creativity of its people.",
                    style: TextStyle(fontSize: 16),),

                  SizedBox(height: 20,),

                  Text("Iconic Landmarks:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text("Within the vast expanse of Cholistan lie several iconic landmarks that serve "
                      "as beacons for travelers and historians alike. The Derawar Fort, with its "
                      "imposing structure and majestic presence, stands as a symbol of the region's "
                      "rich history. Built in the 9th century by Rai Jajja Bhatti, the fort is a masterpiece of "
                      "Islamic architecture, boasting massive walls adorned with intricate patterns and designs. "
                      "Another notable landmark is the Tomb of Bibi Jawindi, an architectural marvel dating back "
                      "to the 15th century, revered for its exquisite craftsmanship and spiritual significance",
                    style: TextStyle(fontSize: 16),),
                  
                  SizedBox(height: 20,),
                  Text("Adventures in the Desert:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text("For adventure enthusiasts, Cholistan offers a plethora of exciting activities "
                      "to indulge in. From exhilarating camel safaris across the dunes to thrilling "
                  "off-road expeditions, there's no shortage of adrenaline-pumping experiences awaiting "
                      "visitors. Camping under the starlit sky amidst the vastness of the desert is an experience "
                      "like no other, offering a chance to disconnect from the chaos of modern life and reconnect"
                      " with nature in its purest form.",
                    style: TextStyle(fontSize: 16),),

                  SizedBox(height: 20,),
                  Text("Preserving the Legacy:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text("While Cholistan's natural beauty and cultural heritage are undeniably captivating, "
                      "the desert faces numerous challenges, including environmental degradation and encroachment. "
                      "Efforts to preserve and protect this fragile ecosystem are crucial to ensuring that future "
                      "generations can continue to marvel at its wonders. Sustainable tourism practices, community engagement, "
                      "and conservation efforts are essential for safeguarding Cholistan's legacy for years to come.",
                    style: TextStyle(fontSize: 16),),

                  SizedBox(height: 20,),
                  Text("Conclusion:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text("In conclusion, the Cholistan Desert stands as a testament to the "
                      "indomitable spirit of nature and humanity's ability to thrive in even "
                      "the harshest of environments. With its rich cultural heritage, iconic landmarks, "
                      "and breathtaking landscapes, Cholistan beckons travelers to embark on a journey of "
                      "discovery and exploration. As we traverse its golden sands and immerse ourselves in "
                      "its vibrant culture, let us cherish and preserve the legacy of this enchanting desert for generations to come.",
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
