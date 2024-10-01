import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp2/features/home/presentation/views/widgets/homebody.dart';
import 'package:movieapp2/features/movie/presentation/views/widgets/downloadbody.dart';
import 'package:movieapp2/features/movie/presentation/views/widgets/savedbody.dart';
import 'package:movieapp2/features/movie/presentation/views/widgets/searchbody.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int currentIndex = 0;
  List bodyitems = [
    Homebody(),
  Searchbody(),
  Savedbody(),
  Downloadbody(),
    const Text("me",style: TextStyle(color: Color(0xFFCBC9D8),fontSize: 20),),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ScreenUtilInit(
      designSize: const Size(375, 812), // Example design size
      minTextAdapt: true,
      splitScreenMode: true,

      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            selectedLabelStyle: const TextStyle(color: Colors.white, fontSize: 10),
            unselectedLabelStyle: const TextStyle(color: Colors.white, fontSize: 10),
            selectedItemColor: Colors.white,
            unselectedItemColor: const Color(0xFFCBC9D8),
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color(0xFF1F1D35),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 20,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 20,
                ),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.star_border_outlined,
                  size: 20,
                ),
                label: 'Saved',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.file_download_rounded,
                  size: 20,
                ),
                label: 'Downloads',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_3_outlined,
                  size: 20,
                ),
                label: 'Me',
              ),
            ],
            currentIndex: currentIndex,
            onTap: (int x) {
              setState(() {
                currentIndex = x;
              });
            }),
        backgroundColor: const Color(0xFF06041F),
        body: Center(
          child: bodyitems[currentIndex],
        ),
      ),
    ));
  }
}
