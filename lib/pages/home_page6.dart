import 'package:flutter/material.dart';

class HomePage6 extends StatefulWidget {
  const HomePage6({Key? key}) : super(key: key);

  @override
  State<HomePage6> createState() => _HomePage6State();
}

class _HomePage6State extends State<HomePage6> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.selected,
            destinations: const [
              NavigationRailDestination(
                  icon: Icon(Icons.favorite_border),
                  selectedIcon: Icon(Icons.favorite),
                  label: Text('First')),
              NavigationRailDestination(
                  icon: Icon(Icons.bookmark_border),
                  selectedIcon: Icon(Icons.book),
                  label: Text('Second')),
              NavigationRailDestination(
                  icon: Icon(Icons.star_border),
                  selectedIcon: Icon(Icons.star),
                  label: Text('Third')),
            ],
          ),

          VerticalDivider(thickness: 1,width: 1,),
          Expanded(child: Center(
            child: CustomScrollView(
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
                    title: Text('PDP Online $_selectedIndex'),
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
          ))
        ],
      ),
    );
  }
}
