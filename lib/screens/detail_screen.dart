import 'package:cached_network_image_builder/cached_network_image_builder.dart';
import 'package:flutter/material.dart';
import 'package:pertemuan11/models/candi.dart';
class DetailScreen extends StatelessWidget {
final Candi candi;

  const DetailScreen({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                candi.imageAsset,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
                ),
            ),
          ),
          Stack(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple[100]?.withOpacity(0.8),
              shape: BoxShape.circle,
            ),
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
          ),
          ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      candi.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    IconButton(
                      onPressed: () {}, 
                      icon: Icon(Icons.favorite_border))
                  ],
                ),
              SizedBox(height: 16,),
              Row(children: [
                Icon(Icons.place,color: Colors.red,),
                SizedBox(width: 8,),
                SizedBox(width: 70,
                    child: Text('Lokasi', style: TextStyle(
                      fontWeight: FontWeight.bold),),),
                Text(': ${candi.location}',),
              ],),
              Row(children: [
                Icon(Icons.calendar_month, color: Colors.blue,),
  SizedBox(width: 8,),
  SizedBox(width: 70,
    child: Text('Dibangun', style: TextStyle(
      fontWeight: FontWeight.bold,)),
  ),
  Text(': ${candi.built}'),
              ],),
              Row(children: [
                Icon(Icons.house, color: Colors.green,),
  SizedBox(width: 8,),
  SizedBox(width: 70,
    child: Text('Tipe', style: TextStyle(
      fontWeight: FontWeight.bold,)),
  ),
  Text(': ${candi.type}'),
              ],),
              SizedBox(height: 16,),
              Divider(color: Colors.deepPurple.shade100,),
              SizedBox(height: 16,),
              ],
            ),
            ),
            Padding(
  padding: const EdgeInsets.all(15),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Divider(color: Colors.deepPurple.shade100),
      Text('Galeri', style: TextStyle(
  fontSize: 16, fontWeight: FontWeight.bold,
)),
      SizedBox(height: 10,),
      SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
itemCount: candi.imageAsset.length,
itemBuilder: (context, index) {
  return Padding(padding: EdgeInsets.only(left: 8),
  child: GestureDetector(
  onTap: () {},
  child: Container(
    decoration: BoxDecoration(),
    child: CachedNetworkImageBuilder(
      imageExtensions: candi.imageAsset[index],
    ),
  ),
),
// ) // Container
// ) // GestureDetector
  ),
},
        ),
      ),
      SizedBox(height: 4,),
      Text('Tap untuk memperbesar', style: TextStyle(
  fontSize: 12, color: Colors.black54,
)),
    ],
  ), // Column
),
        ],
      ),
    );
  }
}