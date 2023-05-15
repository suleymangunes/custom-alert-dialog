import 'package:flutter/material.dart';

class DialogCustom extends StatelessWidget {
  const DialogCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          const CircleAvatar(
            backgroundColor: Color.fromARGB(255, 255, 57, 42),
            radius: 60,
          ),
          Container(
            decoration: const ShapeDecoration(
              color: Colors.amber,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
            ),
            height: 100,
          ),
          const Text("data"),
          const Icon(Icons.abc),
        ],
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.centerLeft, children: [
      Positioned(
        // top: MediaQuery.of(context).size.height * 0.40,
        left: MediaQuery.of(context).size.width * 0.07,
        // left: 25,
        child: CircleAvatar(
          backgroundColor: const Color.fromARGB(255, 255, 57, 42),
          radius: MediaQuery.of(context).size.width * 0.18,
        ),
      ),
      Dialog(
        backgroundColor: Colors.white,
        // clipBehavior: Clip.antiAlias,
        // insetAnimationCurve: Curves.bounceIn,
        // insetPadding: const EdgeInsets.all(0),
        // surfaceTintColor: Colors.black
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            topLeft: Radius.circular(50),
            topRight: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
          // borderRadius: BorderRadius.circular(50),
        ),
        child: SizedBox(
          height: 100,
          child: Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              const Icon(
                shadows: [
                  Shadow(
                    color: Colors.black,
                    offset: Offset(2, 2),
                  ),
                ],
                Icons.error,
                color: Color.fromARGB(255, 255, 57, 42),
                size: 70,
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Alert!",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ),
                  const Text(
                    "This is a text description.",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  Row(
                    children: [
                      // ElevatedButton(
                      //   onPressed: () {},
                      //   child: const Text("Cancel"),
                      // ),
                      TextButton(
                        // style: ButtonStyle(
                        //   shape: MaterialStateProperty.all(
                        //     const RoundedRectangleBorder(
                        //       side: BorderSide(
                        //         color: Colors.black,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        onPressed: () {},
                        child: const Text(
                          "Cancel",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 57, 42),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        // alignment: Alignment.bottomLeft,
        // shape: const CircleBorder(),

        // child: Stack(
        //   children: const [
        //     Text("data"),
        //     SizedBox(
        //       height: 100,
        //     ),
        //     Icon(Icons.abc),
        //   ],
        // ),
      ),
    ]);
  }
}
