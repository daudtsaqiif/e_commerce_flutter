part of '../pages.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buttonUpdate() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            'Upadate',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    Widget emailInput() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 15),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: backgroundColor4,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle: primaryTextStyle,
              hintText: 'daudtsaqiif49@gmail.com',
              fillColor: backgroundColor4,
              filled: true,
              icon: Icon(
                Icons.email,
                color: Colors.white,
              ),
            ),
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: regular,
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    Widget usernameInput() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 15),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: backgroundColor4,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle: primaryTextStyle,
              hintText: 'Lemon',
              fillColor: backgroundColor4,
              filled: true,
              icon: Icon(
                Icons.verified_user,
                color: Colors.white,
              ),
            ),
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: regular,
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    Widget nameInput() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 15),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: backgroundColor4,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle: primaryTextStyle,
              hintText: 'Daud Tsaqiif',
              fillColor: backgroundColor4,
              filled: true,
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: regular,
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(padding: EdgeInsets.all(8)),
            const CircleAvatar(
              radius: 64,
              backgroundImage: AssetImage('assets/image_shoes.png'),
            ),
            Text(
              'Daud Tsaqiif Rahmadsyah',
              style: primaryTextStyle,
            ),
            nameInput(),
            usernameInput(),
            emailInput(),
            buttonUpdate()
          ],
        ),
      );
    }

    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        title: Text(
          'Edit Profile',
          style: primaryTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
    );
  }
}
