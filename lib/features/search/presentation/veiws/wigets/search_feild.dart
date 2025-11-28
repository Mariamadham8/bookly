import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchVeiwTextFeild extends StatelessWidget {
  final TextEditingController searchController;
  const SearchVeiwTextFeild({super.key, required this.searchController});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: searchController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Colors.grey, width: 2.0),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    //  GoRouter.of(context).push('/SearchVeiw');
                  },
                  icon: Icon(Icons.search),
                ),
                hintText: "Search",
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 2,
                  vertical: 2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
