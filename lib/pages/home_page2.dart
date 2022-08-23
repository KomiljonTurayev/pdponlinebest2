import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
           SliverAppBar(
            expandedHeight: 220,
            floating: true,
            pinned: true,
            snap: true,
            elevation: 50,
            backgroundColor: Colors.grey,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text('PDP Online'),
              background: Image(
                image: AssetImage('assets/images/img.JPG'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // SliverList(
          //   delegate: SliverChildListDelegate(_buildList(50)),
          // ),
        ],
      ),
    );
  }

  List _buildList(int count) {
    List<Widget> items = [];
    for (int i = 0; i < count; i++) {
      items.add(_itemList(i));
    }
    return items;
  }

  Widget _itemList(int i) {
    return Container(
      height: 50,
      child: Center(
        child: Text('Item ${i.toString()}'),
      ),
    );
  }


}
