import 'package:flutter/material.dart';
import 'package:flutter_online_order/widgets/nav_bar.dart';

class CustomerInfo extends StatelessWidget {
  const CustomerInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(height: 60),
          const NavBar(title: 'Customer Info'),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text(
                  'Portfolio',
                  style: TextStyle(
                    fontFamily: 'myFont',
                    fontSize: 27,
                    color: Color(0xFF525464),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'The last completed works of the contractor are shown below.',
                  style: TextStyle(
                    fontFamily: 'bottomFont',
                    fontSize: 15,
                    color: Color(0xFF525464),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/img111.png'),
                  ],
                ),
                const SizedBox(width: 8.5),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/img222.png'),
                    const SizedBox(height: 8.5),
                    Image.asset('assets/images/img333.png'),
                    const SizedBox(height: 8.5),
                    Image.asset('assets/images/img444.png'),
                    const SizedBox(height: 8.5),
                    Image.asset('assets/images/img555.png'),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Color(0xFFFFB19D),
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xFFFFB19D),
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xFFFFB19D),
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xFFFFB19D),
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xFFE2E2EF),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                const Text(
                  'Details',
                  style: TextStyle(
                    fontFamily: 'myFont',
                    fontSize: 27,
                    color: Color(0xFF525464),
                  ),
                ),
                const SizedBox(height: 13),
                const Text(
                  'I have been working in this position for over 10 years! I have created many design solutions and I '
                  'think my main best quality is creativity. '
                  'If you liked my work, please contact me and see the professionalism and quality of my services.',
                  style: TextStyle(
                    fontFamily: 'bottomFont',
                    fontSize: 15,
                    color: Color(0xFF525464),
                  ),
                ),
                const SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/setting');
                  },
                  child: const Text(
                    'read more',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'bottomFont',
                      color: Color(0xFFFFB19D),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
