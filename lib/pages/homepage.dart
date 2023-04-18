// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/emoji.dart';
import 'package:ionicons/ionicons.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Theme.of(context).colorScheme.onBackground,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Robert Bayer',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Patient',
                              style: Theme.of(context).textTheme.subtitle2,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.background,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Icon(
                        Ionicons.notifications,
                        color: Colors.grey.shade600,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'How do you feel today?',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Emoji(),
              SizedBox(
                height: 8,
              ),
              // Expanded(
              //   child: Container(
              //     color: Colors.red,
              //     child: Stack(
              //       alignment: AlignmentDirectional.bottomEnd,
              //       children: [
              //         Container(
              //           height: 480,
              //           decoration: BoxDecoration(
              //             color: Colors.blue[400],
              //             borderRadius: BorderRadius.circular(2.0),
              //             border: Border.all(
              //               color: Colors.grey,
              //               width: 2.0,
              //             ),
              //           ),
              //           child: CustomScrollView(
              //             slivers: [
              //               SliverList(
              //                 delegate: SliverChildBuilderDelegate(
              //                   (BuildContext context, int index) {
              //                     return ListTile(
              //                       title: Text('Item $index'),
              //                     );
              //                   },
              //                   childCount: 10,
              //                 ),
              //               )
              //             ],
              //           ),
              //         ),
              //         Container(
              //           height: 380,
              //           decoration: BoxDecoration(
              //             color: Colors.blue[300],
              //             borderRadius: BorderRadius.circular(2.0),
              //             border: Border.all(
              //               color: Colors.grey,
              //               width: 2.0,
              //             ),
              //           ),
              //           child: CustomScrollView(
              //             slivers: [
              //               SliverList(
              //                 delegate: SliverChildBuilderDelegate(
              //                   (BuildContext context, int index) {
              //                     return ListTile(
              //                       title: Text('Item  $index'),
              //                     );
              //                   },
              //                   childCount: 10,
              //                 ),
              //               )
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
