part of 'widget.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 15),
          child: Row(
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
          ),
        ),
      ),
    );
  }
}
