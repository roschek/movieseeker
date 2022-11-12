import 'package:flutter/material.dart';
import 'package:movie_seeker/images.dart';

class MovieListWidget extends StatelessWidget {
  const MovieListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemExtent: 163,
        itemBuilder: (BuildContext context, int index){
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10.0),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                  border: Border.all(color: Colors.black.withOpacity(0.2)),
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 2)
                    )
                  ]
              ),
              clipBehavior: Clip.hardEdge,
              child: Row(
                children:  [
                  const Image(image:  AssetImage('images/star_wars.webp')),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 10),
                          Text('Star Wars',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 5),
                          Text('13 November 2022', style: TextStyle(color: Colors.grey),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 10),
                          Text('A space opera set “a long time ago in a galaxy far, '
                              'far away,” the film centres on Luke Skywalker (played by '
                              'the then relatively unknown Mark Hamill), a young man who finds '
                              'himself embroiled in an interplanetary war between an authoritarian '
                              'empire and rebel',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          )
                        ],

                      ),
                    ),
                  )
                ],
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: (){
                  print('CLICK');
                },
              ),
            )
          ],
        ),
      );
    });
  }
}
