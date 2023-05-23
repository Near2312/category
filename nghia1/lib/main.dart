import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Categories',
      home: CategoriesScreen(),
    );
  }
}

class CategoriesScreen extends StatelessWidget{
  final List<String> categories = [
    'Fashion',
    'Beauty',
    'Electronics',
    'Jewellery',
    'Footwear',
    'Toys',
    'Furniture',
    'Mobiles'
  ];
final List<String> categoriesImages = [
  ];
  int index = 0;
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories', style: TextStyle(color: Colors.black, fontSize: 22),),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 3.0),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 16.0,
                children: categories.map((category){
                  String categoriesImage = categoriesImages[index];
                  index ++;

                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    elevation: 10.0,
                    child: InkWell(splashColor: Colors.blue.withAlpha(100),
                    onTap: (){
                },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.fromLTRB(20, 70, 20, 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        gradient: LinearGradient(
                          colors: [
                            Colors.blue,
                            Color.fromARGB(255, 55, 243, 62),
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            categoriesImage,
                            width: 80.0,
                            height: 80.0,
                          ),
                          SizedBox(height: 6.0),
                          Text(
                            category,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),                      
                    ),                   
                  ),                  
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}