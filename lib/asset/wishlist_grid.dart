import 'package:flutter/material.dart';

class WishlistGrid extends StatefulWidget {
  const WishlistGrid({Key? key}) : super(key: key);

  @override
  State<WishlistGrid> createState() => _WishlistGridState();
}

class _WishlistGridState extends State<WishlistGrid> {
  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
        child: GridView.count(
          padding: EdgeInsets.symmetric(horizontal: 12),
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
          crossAxisCount: 3,
          children: <Widget>[
            Expanded(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
                  child: Container(
                    child: Image.asset("images/danau-toba.png"),
                  ),
                )
            ),
            Expanded(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
                  child: Container(
                    child: Image.asset("images/pantai-tangsi.png"),
                  ),
                )
            ),
            Expanded(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
                  child: Container(
                    child: Image.asset("images/danau-kaolin.png"),
                  ),
                )
            ),
            Expanded(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
                  child: Container(
                    child: Image.asset("images/pantai-pegadungan.png"),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
