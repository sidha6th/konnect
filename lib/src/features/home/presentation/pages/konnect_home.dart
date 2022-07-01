import 'package:flutter/material.dart';
import 'package:konnect/src/core/constants/res/colors.dart';
import 'package:konnect/src/features/comman_widgets/widgets/konnect_appbar_widget.dart';
import 'package:konnect/src/features/common_widgets/konnect_text_widget.dart';

class KonnectHome extends StatelessWidget {
  const KonnectHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double opacity = 1.0;
    final ScrollController scrollController = ScrollController();
    return Scaffold(
      backgroundColor: transp,
      body: SingleChildScrollView(
        padding: EdgeInsets.zero,
        controller: scrollController,
        child: Column(
          children: [
            const KonnectAppBar(
              toolbarHeight: 0,
            ),
            Stack(
              children: [
                StatefulBuilder(
                  builder: (context, changeState) {
                    scrollController.addListener(() {
                      scrollController.offset > 20
                          ? opacity = 0
                          : opacity = 1.0;
                      changeState(() {});
                    });
                    return AnimatedOpacity(
                      duration: const Duration(milliseconds: 300),
                      opacity: opacity,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              darkBlue,
                              Color.fromARGB(193, 19, 15, 219),
                              black,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: <double>[
                              0.1,
                              0.15,
                              0.3,
                            ],
                          ),
                        ),
                        height: 300,
                        width: double.infinity,
                      ),
                    );
                  },
                ),
                Column(
                  children: List.generate(
                    40,
                    (index) => const SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: KonnectTextWidget(
                        text: 'data',
                        textColor: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
