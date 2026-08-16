import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.71),
      child: Column(
        children: [
          SizedBox(height: 8.1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Find Products',
                style: TextStyle(color: Color(0xff181725), fontSize: 20),
              ),
            ],
          ),
          SizedBox(height: 20),
          TextFormField(
            onTapOutside: (value) {
              FocusScope.of(context).unfocus();
            },
            decoration: InputDecoration(
              fillColor: Color(0xffF2F3F2),
              filled: true,
              hintText: 'Search Store',
              hintStyle: TextStyle(
                color: Color(0xff7C7C7C),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              prefixIcon: Icon(Icons.search),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
