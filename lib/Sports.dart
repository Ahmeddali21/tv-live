// import 'package:flutter/material.dart';
// import 'package:task/main.dart';
//
// import 'Sports.dart';
// class home extends StatefulWidget{
//   const home ({Key? key}) : super (key:key);
//
//   @override
//   _homeState createState() => _homeState();
// }
//
// class _homeState extends State<home>{
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         leading: Builder(
//           builder: (context) => IconButton(
//             icon: Icon(Icons.menu_rounded),
//             color: Colors.black,
//             onPressed: () => Scaffold.of(context).openDrawer(),
//           ),
//         ),
//         centerTitle:true,
//         title: Text(
//           "Home",
//           style: TextStyle(
//               color: Colors.black
//           ),
//         ),
//       ),
//
//       drawer: SafeArea(child:Container(
//         width: 250,
//         child:  Drawer(
//           backgroundColor: Colors.white,
//           child: ListView(
//             padding: EdgeInsets.zero,
//             children: <Widget>[
//               DrawerHeader(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(5),
//                     color: Colors.teal.shade400,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black.withOpacity(0.5),
//                         //color of shadow
//                         spreadRadius: 3,
//                         //spread radius
//                         blurRadius: 3, // blur radius
// // offset: Offset(0, 2), // changes position of shadow
//                       ),
//                     ],
//                   ),
//                   margin: EdgeInsets.zero, child: Row(
//                 children: [
//                   Image.asset('Images/tv.png'),
//                   Text('  ')
//                 ],
//               )
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               ListTile(
//
//                 leading: const Icon(
//                   Icons.sports_soccer,
//                   color: Colors.teal,
//                   size: 35,
//                 ),
//                 title: const Text('Sports', style: TextStyle(
//                     color: Colors.teal,
//                     fontSize: 18,
//                     fontWeight: FontWeight.w500
//                 ),),
//                 onTap: () {
//                   {
//                     Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(builder: (context) => ChewieDemo()));
//                   }
//                 },
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               ListTile(
//                 leading: const Icon(
//                   Icons.movie,
//                   color: Colors.teal,
//                   size: 35,
//                 ),
//                 title: const Text('Movies', style: TextStyle(
//                     color: Colors.teal,
//                     fontSize: 18,
//                     fontWeight: FontWeight.w500
//                 ),),
//                 onTap: () {
//                   {
//                     Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(builder: (context) => home()));
//                   }
//                 },
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               ListTile(
//                 leading: const Icon(
//                   Icons.live_tv,
//                   color: Colors.teal,
//                   size: 35,
//                 ),
//                 title: const Text('Series', style: TextStyle(
//                     color: Colors.teal,
//                     fontSize: 18,
//                     fontWeight: FontWeight.w500
//                 ),),
//                 onTap: () {
//                   {
//                     Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(builder: (context) => home()));
//                   }
//                 },
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               ListTile(
//                 leading: const Icon(
//                   Icons.newspaper,
//                   color: Colors.teal,
//                   size: 35,
//                 ),
//                 title: const Text('News', style: TextStyle(
//                     color: Colors.teal,
//                     fontSize: 18,
//                     fontWeight: FontWeight.w500
//                 ),),
//                 onTap: () {
//                   {
//                     Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(builder: (context) => home()));
//                   }
//                 },
//               ),
//             ],
//           ),
//         ),
//       )),
//       backgroundColor: Colors.teal.shade400,
//     );
//   }
//
// }