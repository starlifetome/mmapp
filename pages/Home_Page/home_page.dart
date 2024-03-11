import 'package:flutter/material.dart';
import 'package:perfumesapp/pages/Detail_Page/detail_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  with SingleTickerProviderStateMixin{

  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfumes App'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.label,
          
          tabs: [
            Tab(
             child: Text('Dior'),
            ),
            Tab(
              child: Text('Lacoste'),
            ),
            Tab(
              child: Text("Victoria's Secret"),
            ),
            Tab(
              child: Text("Pink's Secret"),
            ),

          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(child: Detail_Page(
            image: 'assets/image/wp1.jpg', title: 'Dior',bimage: 'assets/image/b1.jpg',price: '200',
          ),),
          Container(child: Detail_Page(image: 'assets/image/wp2.jpg',title: 'Lacoste', bimage: 'assets/image/b2.jpg',price: '300',),),
          Container(child: Detail_Page(image: 'assets/image/wp3.jpg',bimage: 'assets/image/b3.jpg', title: "Victoria's Secret",price: '400',),),
          Container(child: Detail_Page(image: 'assets/image/wp4.jpg',title: "Pink's Secret",bimage: 'assets/image/b4.jpg',price: '400',),),
        ],
      ),
    );
  }
}
