part of 'widget.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble(
      {super.key,
      this.text = '',
      this.isSender = false,
      this.hasProduct = false});

  final String text;
  final bool isSender;
  final bool hasProduct;

  @override
  Widget build(BuildContext context) {
    Widget productPreview() {
      return Container(
        width: 250,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: backgroundColor5,
          border: Border.all(color: primaryTextColor),
        ),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/image_shoes.png',
                    width: 64,
                  ),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shoes Arei V.2.0 - Black',
                        style: primaryTextStyle,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        NumberFormat.currency(
                                locale: 'id-ID',
                                decimalDigits: 0,
                                symbol: 'IDR')
                            .format(750000),
                        style:
                            priceTextStyle.copyWith(color: secondaryTextColor),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Add to Chart',
                    style: primaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: medium,
                    ),
                  ),
                ),
                const SizedBox(width: 6),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Buy Now',
                    style: primaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: medium,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: primaryColor),
                    backgroundColor: primaryColor,
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          hasProduct ? productPreview() : SizedBox(),
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.6,
            ),
            decoration: BoxDecoration(
              color: backgroundColor5,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(isSender ? 20 : 0),
                topRight: Radius.circular(isSender ? 0 : 20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: primaryTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}