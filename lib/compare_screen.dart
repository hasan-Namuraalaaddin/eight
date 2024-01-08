import 'package:flutter/material.dart';

class CompareScreen extends StatefulWidget {
  const CompareScreen({super.key});

  @override
  State<CompareScreen> createState() => _CompareScreenState();
}

class _CompareScreenState extends State<CompareScreen> {
  int myCurrentIndex = 0;

  List<Widget> pages = const [
    MyHome(),
    MyCompare(),
    MyFav(),
    MyPer(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myCurrentIndex = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[myCurrentIndex],
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 241, 241, 241),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 237, 160, 51),
        onPressed: () {},
        child: Stack(
          children: [
            const Icon(Icons.shopping_bag_outlined, size: 45),
            Positioned(
              top: 27,
              right: 4,
              child: Container(
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                ),
                constraints: const BoxConstraints(
                  minWidth: 14,
                  minHeight: 14,
                ),
                child: const Center(
                  child: Text(
                    '3',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 255, 255, 255),
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              splashRadius: 25,
              onPressed: () {
                setState(() {
                  myCurrentIndex = 0;
                });
              },
              icon: Icon(
                Icons.home,
                size: 35,
                color: myCurrentIndex == 0
                    ? Colors.orange
                    : const Color.fromRGBO(152, 153, 153, 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 65),
              child: IconButton(
                splashRadius: 25,
                onPressed: () {
                  setState(() {
                    myCurrentIndex = 1;
                  });
                },
                icon: Icon(
                  Icons.compare_arrows,
                  size: 35,
                  color: myCurrentIndex == 1
                      ? Colors.orange
                      : const Color.fromRGBO(152, 153, 153, 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: IconButton(
                splashRadius: 25,
                onPressed: () {
                  setState(() {
                    myCurrentIndex = 2;
                  });
                },
                icon: Icon(
                  Icons.favorite,
                  size: 35,
                  color: myCurrentIndex == 2
                      ? Colors.orange
                      : const Color.fromRGBO(152, 153, 153, 1),
                ),
              ),
            ),
            IconButton(
              splashRadius: 25,
              onPressed: () {
                setState(() {
                  myCurrentIndex = 3;
                });
              },
              icon: Icon(
                Icons.person,
                size: 35,
                color: myCurrentIndex == 3
                    ? Colors.orange
                    : const Color.fromRGBO(152, 153, 153, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCompare extends StatelessWidget {
  const MyCompare({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 45,
        ),
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 120.0),
              child: Text(
                'Compare Screen',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 7.0),
              child: Stack(
                children: [
                  IconButton(
                      onPressed: () {},
                      splashColor: Colors.transparent,
                      icon: const Icon(
                        Icons.shopping_bag,
                        color: Colors.black,
                      )),
                  const Positioned(
                    bottom: 27,
                    left: 37,
                    child: Text(
                      '3',
                      style: TextStyle(
                          color: Colors.black, // Adjust text color as needed
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left:5.0,right: 5),
          child: ListTile(
            onTap: (){},
            contentPadding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Colors.grey),
            ),
            title: const Text(
              'Car',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Text(
                    '\$340.0',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '\$320.0',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
            ),
            leading: Container(
              padding: EdgeInsets.only(left: 2),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const Image(
                  image: AssetImage('assets/images/ba.png'),
                  fit: BoxFit.contain,
                  
                ),
              ),
            ),
            trailing:  Padding(
              padding: const EdgeInsets.only(right:12.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:35.0),
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:const Color.fromARGB(255, 243, 103, 93),
                      ),
                      child:const Padding(
                        padding: EdgeInsets.all(1.5),
                        child: Icon(Icons.restore_from_trash,
                        color: Colors.white,size: 20,),
                      ),
                    ),
                  ),
                  const SizedBox(height: 4,),
                  Container(
                    height: 20,
                    width: 72,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(9)
                    ),
                    child: const Center(child: Text('Already added',
                    style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 11),),),),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: ListTile(
            onTap: (){},
            contentPadding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Colors.grey),
            ),
            title: const Text(
              'Share',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Text(
                    '\$220.0',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '\$320.0',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
            ),
            leading: Container(
              padding: EdgeInsets.only(left: 2),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const Image(
                  image: AssetImage('assets/images/bc.png'),
                  fit: BoxFit.contain,
                  
                ),
              ),
            ),
            trailing:  Padding(
              padding: const EdgeInsets.only(right:12.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:35.0),
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:const Color.fromARGB(255, 243, 103, 93),
                      ),
                      child:const Padding(
                        padding: EdgeInsets.all(1.5),
                        child: Icon(Icons.restore_from_trash,
                        color: Colors.white,size: 20,),
                      ),
                    ),
                  ),
                  const SizedBox(height: 4,),
                  Container(
                    height: 20,
                    width: 72,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 231, 159, 52),
                      borderRadius: BorderRadius.circular(9)
                    ),
                    child: const Center(child: Text('Added to cart',
                    style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 11),),),),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:5.0,right: 5),
          child: ListTile(
            onTap: (){},
            contentPadding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Colors.grey),
            ),
            title: const Text(
              'T-shirt',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Text(
                    '\$550.0',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '\$320.0',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
            ),
            leading: Container(
              padding: EdgeInsets.only(left: 2),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const Image(
                  image: AssetImage('assets/images/bb.png'),
                  fit: BoxFit.contain,
                  
                ),
              ),
            ),
            trailing:  Padding(
              padding: const EdgeInsets.only(right:12.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:35.0),
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:const Color.fromARGB(255, 243, 103, 93),
                      ),
                      child:const Padding(
                        padding: EdgeInsets.all(1.5),
                        child: Icon(Icons.restore_from_trash,
                        color: Colors.white,size: 20,),
                      ),
                    ),
                  ),
                  const SizedBox(height: 4,),
                  Container(
                    height: 20,
                    width: 72,
                    decoration: BoxDecoration(
                      color:const Color.fromARGB(255, 231, 159, 52),
                      borderRadius: BorderRadius.circular(9)
                    ),
                    child: const Center(child: Text('Added to cart',
                    style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 11),),),),
                ],
              ),
            ),
          ),
        ),                
      ],
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
    );
  }
}

class MyFav extends StatelessWidget {
  const MyFav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
    );
  }
}

class MyPer extends StatelessWidget {
  const MyPer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
    );
  }
}
