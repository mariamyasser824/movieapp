import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp2/features/movie/presentation/controller/search/searchcubit.dart';
import 'package:movieapp2/features/movie/presentation/views/widgets/searchappbar.dart';
import 'package:movieapp2/features/movie/presentation/views/widgets/searchblock.dart';
class Searchbody extends StatefulWidget {
  const Searchbody({super.key});

  @override
  State<Searchbody> createState() => _SearchbodyState();
}

class _SearchbodyState extends State<Searchbody> {
      final TextEditingController searchController = TextEditingController();
  
  
  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      slivers: [
      SliverToBoxAdapter(child:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
        
            style: TextStyle(color:  Color(0xFFCBC9D8),),
              controller: searchController,
            
              decoration: InputDecoration(
                
            
                hintText: "enter movie name",
                hintStyle: TextStyle(color:  Color(0xFFCBC9D8)) ,
                
              
                labelText: 'Search',
                labelStyle: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFFCBC9D8),
                ),
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)),
                
                
                prefixIcon: Icon(Icons.search),
                   suffixIcon: IconButton(
                onPressed: () {
                  context
                      .read<Searchcubit>()
                      .getSearch(query:searchController.text);
                },
                icon: const Icon(Icons.arrow_right_alt_outlined,
                    color: Color(0xFFCBC9D8), size: 24),
              ),
              
                
              
                
              ),
                       )])) ,),
                      
                       SliverToBoxAdapter(
                       
                        child:Searchblock()
                       )
      ],
    );
  }
}