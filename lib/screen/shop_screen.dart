import 'package:flutter/material.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  int currentPage = 0;

  final List<String> banners = [
    'assets/images/banner.png',
    'assets/images/friuts.png',
    'assets/images/friut.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.71),
      child: Column(
        children: [
          Center(child: Image.asset("assets/images/carrot.png")),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on),
              Text(
                'Dhaka, Banassre',
                style: TextStyle(
                  color: Color(0xff4C4F4D),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
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
          SizedBox(height: 20),
          SizedBox(
            height: 112.7,
            child: PageView(
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              children: banners.map((image) {
                return Image.asset(image, fit: BoxFit.cover);
              }).toList(),
            ),
          ),
          const SizedBox(height: 8),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              banners.length,
              (index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 3),
                width: currentPage == index ? 20 : 7,
                height: 7,
                decoration: BoxDecoration(
                  color: currentPage == index
                      ? const Color(0xff4CAF80)
                      : const Color(0xffAAAAAA),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
