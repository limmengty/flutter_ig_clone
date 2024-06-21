import 'package:flutter/material.dart';
import 'package:flutter_clone_ig/data/all_link_image.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
  const SearchPage({super.key});
}

class _SearchPageState extends State<SearchPage> {
  final AllImageLink all = AllImageLink();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        elevation: 0,
        title: SizedBox(
          height: 40,
          child: TextFormField(
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              hintText: "Search",
              contentPadding: const EdgeInsets.all(0),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)),
              fillColor: const Color.fromRGBO(220, 220, 220, 1),
              filled: true,
            ),
          ),
        ),
      ),
      body: GridView.builder(
        itemCount: all.searchs.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 8 / 10),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              color: Colors.deepPurple[100],
              child: Image.network(all.searchs[index], fit: BoxFit.cover),
            ),
          );
        },
      ),
    );
  }
}
