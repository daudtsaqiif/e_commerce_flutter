part of 'widget.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/icon_headset.png',
          width: 50,
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Costumer Service',
                style: primaryTextStyle,
              ),
              Text(
                'Online',
                style: primaryTextStyle,
              ),
            ],
          ),
        )
      ],
    );
  }
}
