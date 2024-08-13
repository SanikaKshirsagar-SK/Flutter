import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("NETFLIX",
            style: TextStyle(
              color: Colors.red
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          color: Color.fromARGB(255, 18, 17, 17),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 25,
                ),
                const Text("Movies",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color:  Colors.white,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Image.network("https://occ-0-2085-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABU_QoJ_ZpH--QTAPwFeXBVXi8v5LdfeS8h1gercZHd18BL-U0IfhGjIkbh68LVh1Ov07xBy_5Q5VEhOIqjUWAzU9zZaBBaVnxtueIp_u9-vQv9LWHZqzgag0HiACu6kI_wCsOUvlIB-QqHdYArNuODAX_P6bL6RyTi8.jpg?r=434",
                        width: 400,
                        height: 270,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.network("https://occ-0-2085-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABfy95of8FYtMRuh-_oNpO9W5x2r9P1M2HxubRKnOG35yMSwN1y8OWlhnItcAVzS1FdXma1bzNXJBGrxUQGMuxIbyxquqy2WBkT30RBINL1439VbcbYc6HBwcDjMfRLvVvnrWBev62D3rfoWCYlcjJWKBVv-qP-LyFz5k9S_X3rKkY6i9Ewh1QaMWgdC5WOS3DaZgJn7P3O09GrE9kiHhtqfK6_K2gf4hXQwjNs8KJvoa9hp2NE1TW8coakMQiTgJyI2DM2JBXfcx-udzApAKx904oUSazHVFsi4Q8kmCLTOLCUb1aQYNdXsmAPkmuFGzSub7rZjh_VH9yGbBcEEilQA.jpg?r=804",
                        width: 400,
                        height: 270,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.network("https://occ-0-2085-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABTULUtZ5q-GPTmmw0e7XElkRTRmixRK6asyR4D1ItWbuezRMQX4DdJ2RxAUeePsTovRQETEsa0UeiUCBhro1YVi17DKxe3J9Qys.jpg?r=974",
                        width: 400,
                        height: 270,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.network("https://occ-0-2085-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABXdseW6oX8Qw5IDoCFVzlqOoZOBZ6v7kkpykqfpJfsyTvUGV5BgSp-U1-oz4z-umy3nUaUdevsEC-Fpy4nIFK7HV941nc1YJDsY.jpg?r=b0a",
                        width: 400,
                        height: 270,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.network("https://occ-0-2085-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABWu5J2EGSaTX4B53xEQjsETAbQVJUUFRZ57q6vZ9ENvvHPkOQLqpXePQgahZvgYgUWSMw_uMiWcATtQapLLFm37IpeoJRWrkabE.jpg?r=106",
                        width: 400,
                        height: 270,
                      ),
                    ],
                  ),
                ),
          
                const SizedBox(
                  height: 25,
                ),
                const Text("Web Series",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color:  Colors.white,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Image.network("https://occ-0-2085-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABS1WSqsKT1OPiv9riD6Uf0NTpOh7PN96C5IuFzBIDLw_V4jKvDfr9H3H-JfuWQ_G-Q9R41dHJSDyLvKpWCJkGlyPU1TTyS9MulE.jpg?r=1fc",
                        width: 400,
                        height: 270,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.network("https://occ-0-2085-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABcfPkG9xHOXVTkr_yR22dlRYCQjHpX1lhUNk8SCcIiXzTW54jA9001U-6xvUQUkuq2083BONG4yBds_ySDLdshoCQTrdtkFTpgw.jpg?r=f5a",
                        width: 400,
                        height: 270,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.network("https://occ-0-2085-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABXFIXbzzrhgKDE5HzOnDSlFEB0lwL2G5jRhWmgwyoP6KevXbXw_zC_4TikgPe7qDokxxQjN2Ao6QQySmXc56m38Di59Vnwo0A9M.jpg?r=2f0",
                        width: 400,
                        height: 270,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.network("https://occ-0-2085-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABWq8LpFBZgua51HS6zqDNme5_Cr_Q43mdqpqvr8QKKeUsXeOv9cy8J01QmMziB1xVWSh63jE4QiyLSmeu5B2QSG5x7B2Jt9OwiJLvnEZ5vKawZXjLP9nMBAvb6uDofgzyv7G.jpg?r=ba6",
                        width: 400,
                        height: 270,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.network("https://occ-0-2085-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABZrMLnw8WE5hCJsepUt8asAgLAOczm8tGn3WGO3OvnZengYhUh7ZT3tncJ9z00fK6zlch9fBhVMKHQI77cCFiCHmxTQEDwpjuUBNiEzyxgCrRXNDQtECKDbrH5pR5s5oagYG.jpg?r=488",
                        width: 400,
                        height: 270,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text("Most Popular",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color:  Colors.white,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Image.network("https://occ-0-2085-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABUmLgKmFrl2Tq5jDmIBIdp-L6_fRFsTE7KslWARHa4Yb8f8q32MOBiACOoYAGFn4k8Pc_1P7QlN-F41Btkx4q8bp2gg0yA4kCWxamkIcyRVtyIoln6PDWQVi1_IAZHe4PALj.jpg?r=326",
                        width: 400,
                        height: 270,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.network("https://occ-0-2085-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABc_QuOdHzJa9WwBiBlfEvpcFRKq9TAIgdJv0KoSilQZ8JMEsdCdQS4VGD6gwVg2CYCYNhTJIald5uVsXbMf-3QaF1k1fnFRbovQr6ddWUtkSOUzil_dtlD1wOIeD_pSI6pAx.jpg?r=c68",
                        width: 400,
                        height: 270,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.network("https://occ-0-2085-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABc5URtqG36cHmUzXPrn9qaN1prCdZB3Llrhe8w4fvPKUxMp1phgN738mP1ctTe9QshMH8f0NlK-GdSAZDYJpXtvofUffd8o4BQuB7AKZogG-KbG0kR5H5w9kp3pXbogjGHSN.jpg?r=082",
                        width: 400,
                        height: 270,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.network("https://occ-0-2085-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABdZBaHsvXZnrbMdEHXnbVS0L_vJGxtbBlyvajQo0f13vY97Qz4i9juE9NCtMUVRXmZ_knzGi1h84E3kejHMqxJ2oW9yASD7pgRaz5H4_Hs_76uyER-qKUcuIWqVysHlA0r4s.jpg?r=71f",
                        width: 400,
                        height: 270,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.network("https://occ-0-2085-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABVwnQNtURenCHigErGdvPYSlAHfDxgMj82_yIfZJMXwP1LdzkTfRSTjXnKK0uizo0yRlPkHU0LRVJuMu9rma7U2OCjueFT698s5jgimVU10NyT1FPy3o6XFXzBVPyWztl7S0.jpg?r=c5b",
                        width: 400,
                        height: 270,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
