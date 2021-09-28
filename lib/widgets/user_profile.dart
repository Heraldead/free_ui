import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserProfile extends StatelessWidget {
  List<_MenuRowData> menurow = [
    _MenuRowData(Icons.favorite, 'Избранное'),
    _MenuRowData(Icons.call, 'Звонки'),
    _MenuRowData(Icons.computer, 'Устройства'),
    _MenuRowData(Icons.folder, 'Папки и чаты'),
  ];
  List<_MenuRowData> menurow2 = [
    _MenuRowData(Icons.notifications, 'Уведомления и звуки'),
    _MenuRowData(Icons.privacy_tip_outlined, 'Конфиденциальность'),
    _MenuRowData(Icons.date_range, 'Данные и память'),
    _MenuRowData(Icons.brush, 'Оформление и дизайн'),
    _MenuRowData(Icons.language, 'Язык'),
  ];
  List<_MenuRowData> menurow3 = [
    _MenuRowData(Icons.notifications, 'Уведомления и звуки'),
    _MenuRowData(Icons.privacy_tip_outlined, 'Конфиденциальность'),
    _MenuRowData(Icons.date_range, 'Данные и память'),
    _MenuRowData(Icons.brush, 'Оформление и дизайн'),
    _MenuRowData(Icons.language, 'Язык'),
  ];

  UserProfile();
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.grey,
      width: double.infinity,
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          _UserInfo(),
          SizedBox(height: 20),
          _MenuWidget(
            menurow: menurow,
          ),
          SizedBox(height: 20),
          _MenuWidget(menurow: menurow2),
          SizedBox(height: 20),
          _MenuWidget(menurow: menurow3),
        ],
      ),
    ));
  }
}

class _MenuRowData {
  final IconData icon;
  final String text;
  _MenuRowData(this.icon, this.text);
}

class _MenuWidget extends StatelessWidget {
  final List<_MenuRowData> menurow;
  const _MenuWidget({Key key, this.menurow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: menurow.map((data) => _MenuWidgetRow(data: data)).toList(),
      ),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget {
  final _MenuRowData data;
  const _MenuWidgetRow({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          Icon(data.icon),
          SizedBox(width: 15),
          Expanded(child: (Text(data.text))),
          Icon(Icons.chevron_right_rounded),
        ],
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          _AvaterWidget(),
          SizedBox(
            height: 7,
          ),
          _NameWidget(),
          SizedBox(
            height: 7,
          ),
          _PhoneWidget(),
          SizedBox(
            height: 7,
          ),
          _SearchNameWidget(),
        ],
      ),
    );
  }
}

class _SearchNameWidget extends StatelessWidget {
  const _SearchNameWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '@Ghostman',
      style: TextStyle(
        fontSize: 13,
      ),
    );
  }
}

class _PhoneWidget extends StatelessWidget {
  const _PhoneWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '+7 927 803 73 91',
      style: TextStyle(
        fontSize: 15,
      ),
    );
  }
}

class _NameWidget extends StatelessWidget {
  const _NameWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Mikail Taisunov',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
    );
  }
}

class _AvaterWidget extends StatelessWidget {
  const _AvaterWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 120.0,
        height: 140.0,
        decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
                fit: BoxFit.fill,
                image: new NetworkImage(
                    "https://i.pinimg.com/564x/b0/8b/01/b08b0179a285a80e2cd75a241cd02318.jpg"))));
  }
}
