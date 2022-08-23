import 'package:flutter/material.dart';

class HomePage5 extends StatefulWidget {
  const HomePage5({Key? key}) : super(key: key);

  @override
  State<HomePage5> createState() => _HomePage5State();
}

class _HomePage5State extends State<HomePage5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDP Online'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
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
                fit: BoxFit.contain,
              ),
            ),
          ),
          for (int blockIdx = 0; blockIdx < 20; blockIdx++) ...[
            SliverToBoxAdapter(
              child: Center(
                child: Padding(
                  child: Text('Block $blockIdx'),
                  padding: EdgeInsets.all(8.0),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int childIdx) {
                  print('Building block $blockIdx child $childIdx');
                  return Padding(
                    child: Text('Child $childIdx'),
                    padding: EdgeInsets.only(
                        left: 20.0, right: 8.0, top: 8.0, bottom: 8.0),
                  );
                },
                childCount: 30,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
