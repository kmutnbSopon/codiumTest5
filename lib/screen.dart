import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context);
    // w 360, h 640
    return Scaffold(
      appBar: AppBar(
        title: Text('Codium Test'),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      body: Container(
        child: OrientationBuilder(
          builder: (context, orientation) => orientation == Orientation.portrait
              ? _buildPortrait(screen)
              : _buildLandscape(screen),
        ),
      ),
    );
  }

  Widget _buildPortrait(MediaQueryData screen) => Container(
        child: ListView(
          children: [
            Container(
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      _logo(screen, screen.size.height * 0.046,
                          screen.size.width * 0.125),
                      _topMenu(screen, screen.size.height * 0.046,
                          screen.size.width * 0.83),
                    ],
                  ),
                  // Text('size total ${size.size}'),
                  Row(
                    children: <Widget>[
                      _leftMenu(screen, screen.size.height * 0.803,
                          screen.size.width * 0.25),
                      Column(
                        children: <Widget>[
                          _header(screen, screen.size.height * 0.053,
                              screen.size.width * 0.705),
                          Row(
                            children: <Widget>[
                              _content(screen, screen.size.height * 0.737,
                                  screen.size.width * 0.25),
                              _detail(screen, screen.size.height * 0.737,
                                  screen.size.width * 0.43),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Widget _buildLandscape(MediaQueryData screen) => Container(
        child: Column(
          children: <Widget>[
            Row(
              children: [
                _logo(screen, screen.size.height * 0.083,
                    screen.size.width * 0.10),
                _topMenu(screen, screen.size.height * 0.083,
                    screen.size.width * 0.875),
              ],
            ),
            // Text('size total ${size.size}'),
            Row(
              children: <Widget>[
                _leftMenu(screen, screen.size.height * 0.65,
                    screen.size.width * 0.14),
                Column(
                  children: <Widget>[
                    _header(screen, screen.size.height * 0.083,
                        screen.size.width * 0.835),
                    Row(
                      children: <Widget>[
                        _content(screen, screen.size.height * 0.544,
                            screen.size.width * 0.14),
                        _detail(screen, screen.size.height * 0.544,
                            screen.size.width * 0.682),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );

  Padding _detail(MediaQueryData screen, double h, double w) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: h,
        width: w,
        color: Color(0xFFB0E0E4),
        child: Center(
          child: Text(
            'DETAIL',
            style: TextStyle(fontSize: 14),
          ),
        ),
      ),
    );
  }

  Padding _content(MediaQueryData screen, double h, double w) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: h,
        width: w,
        color: Color(0xFF81C9D5),
        child: Center(
          child: Text(
            'CONTENT',
            style: TextStyle(fontSize: 14),
          ),
        ),
      ),
    );
  }

  Padding _header(MediaQueryData screen, double h, double w) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: h,
        width: w,
        color: Color(0xFF67A6B4),
        child: Center(
          child: Text(
            'HEADER',
            style: TextStyle(fontSize: 14),
          ),
        ),
      ),
    );
  }

  Padding _leftMenu(MediaQueryData screen, double h, double w) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        color: Color(0xFF3E6586),
        height: h,
        width: w,
        child: Center(
          child: Text(
            'LEFT MENU',
            style: TextStyle(fontSize: 14),
          ),
        ),
      ),
    );
  }

  Padding _topMenu(MediaQueryData screen, double h, double w) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: h,
        width: w,
        color: Color(0xFF385860),
        child: Center(
          child: Text(
            'TOP MENU',
            style: TextStyle(fontSize: 14),
          ),
        ),
      ),
    );
  }

  Padding _logo(MediaQueryData screen, double h, double w) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Expanded(
        flex: 1,
        child: Container(
          height: h,
          // width: screen.size.width * 0.125,
          width: w,
          color: Color(0xFF689FA3),
          child: Center(
            child: Text(
              'LOGO',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ),
      ),
    );
  }
}
