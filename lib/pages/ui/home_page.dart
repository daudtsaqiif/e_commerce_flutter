part of '../pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    Widget header() {
      return Container(
        child: Text('nama ku bentol', style: primaryTextStyle,),
      );
    }

    return Scaffold(
        backgroundColor: backgroundColor1,
        body: ListView(
          children: [
            header()
          ],
        ));
  }
}
