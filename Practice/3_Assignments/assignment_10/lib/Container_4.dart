import 'package:flutter/material.dart';

class Container_4 extends StatelessWidget {
  const Container_4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 10"),
        backgroundColor: Colors.deepPurple,
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Image.network(
              "https://occ-0-2085-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABU_QoJ_ZpH--QTAPwFeXBVXi8v5LdfeS8h1gercZHd18BL-U0IfhGjIkbh68LVh1Ov07xBy_5Q5VEhOIqjUWAzU9zZaBBaVnxtueIp_u9-vQv9LWHZqzgag0HiACu6kI_wCsOUvlIB-QqHdYArNuODAX_P6bL6RyTi8.jpg?r=434",
              height: 300,
              width: 150,
            ),
            Image.network(
              "https://occ-0-2085-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABTULUtZ5q-GPTmmw0e7XElkRTRmixRK6asyR4D1ItWbuezRMQX4DdJ2RxAUeePsTovRQETEsa0UeiUCBhro1YVi17DKxe3J9Qys.jpg?r=974",
              height: 300,
              width: 150,
            ),
            Image.network(
              "https://occ-0-2085-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABWu5J2EGSaTX4B53xEQjsETAbQVJUUFRZ57q6vZ9ENvvHPkOQLqpXePQgahZvgYgUWSMw_uMiWcATtQapLLFm37IpeoJRWrkabE.jpg?r=106",
              height: 300,
              width: 150,
            ),
            Image.network(
              "https://occ-0-2085-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABcfPkG9xHOXVTkr_yR22dlRYCQjHpX1lhUNk8SCcIiXzTW54jA9001U-6xvUQUkuq2083BONG4yBds_ySDLdshoCQTrdtkFTpgw.jpg?r=f5a",
              height: 300,
              width: 150,
            ),
            Image.network(
              "https://occ-0-2085-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABUmLgKmFrl2Tq5jDmIBIdp-L6_fRFsTE7KslWARHa4Yb8f8q32MOBiACOoYAGFn4k8Pc_1P7QlN-F41Btkx4q8bp2gg0yA4kCWxamkIcyRVtyIoln6PDWQVi1_IAZHe4PALj.jpg?r=326",
              height: 300,
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}
