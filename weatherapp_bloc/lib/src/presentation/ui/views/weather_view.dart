import 'package:flutter/material.dart';
import 'package:weatherapp_bloc/src/domain/models/weather.dart';

class WeatherView extends StatelessWidget {
  final WeatherModel weather;
  const WeatherView({
    super.key,
    required this.weather,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 550,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(65),
              bottomRight: Radius.circular(65),
            ),
            boxShadow: [
              BoxShadow(
                  color: Color(0xff1B6BB0),
                  blurRadius: 35.0,
                  spreadRadius: 7.0,
                  offset: Offset(5.0, 5.0))
            ],
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff21BCD0),
                  Color(0xff1B6BB0),
                ],
                stops: [
                  0.1,
                  0.7,
                ]),
          ),
          child: Column(
            children: [
              const SizedBox(height: 25.0),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 0.8),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20.0),
                    )),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'contry',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              const SizedBox(height: 50.0),
              SizedBox(
                child: Image.asset('assets/images/Cloud-thunder.png'),
              ),
              const SizedBox(height: 20.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '21',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 108,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '°',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 78,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
              const Text(
                'Thunderstorm',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                'Monday, 17 oct.',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10.0),
              const SizedBox(
                width: 350.0,
                child: Divider(
                  color: Colors.white70,
                  thickness: 1.1,
                ),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset('assets/images/wind.png'),
                      const Text(
                        '138 km/h',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Text(
                        'Wind',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/images/droplet.png'),
                      const Text(
                        '24 %',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Text(
                        'Humidity',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/images/Cloud.png'),
                      const Text(
                        '85 %',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Text(
                        'Odd of rain',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Today',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Text(
                    '7 days >',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white70),
                  ),
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 90,
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(25),
                      ),
                      border: Border.all(width: 0.5, color: Colors.white70),
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff000000),
                            Color(0xff000000),
                          ],
                          stops: [
                            0.1,
                            0.7,
                          ]),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            '15°',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                            ),
                          ),
                          Image.asset('assets/images/night-moon.png'),
                          const Text(
                            '07:45',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                        ]),
                  ),
                  Container(
                    width: 90,
                    height: 160,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff21BCD0),
                            Color(0xff1B6BB0),
                          ],
                          stops: [
                            0.1,
                            0.7,
                          ]),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            '21°',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                            ),
                          ),
                          Image.asset('assets/images/Thunder.png'),
                          const Text(
                            '11:00',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                        ]),
                  ),
                  Container(
                    width: 90,
                    height: 160,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xffcecece),
                            Color(0xff6F6F6F),
                          ],
                          stops: [
                            0.02,
                            0.5,
                          ]),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            '23°',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                            ),
                          ),
                          Image.asset('assets/images/Cloudy-night.png'),
                          const Text(
                            '09:00',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                        ]),
                  ),
                  Container(
                    width: 90,
                    height: 160,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xffFCE570),
                            Color(0xffDA8300),
                          ],
                          stops: [
                            0.1,
                            0.7,
                          ]),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            '35°',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                            ),
                          ),
                          Image.asset('assets/images/Thunder.png'),
                          const Text(
                            '01:00',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                        ]),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
