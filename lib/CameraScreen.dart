import 'package:flutter/material.dart';


class CameraScreen extends StatefulWidget {
//  List<CameraDescription> cameras;
//
//  CameraScreen(this.cameras);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  //CameraController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    controller = CameraController(widget.cameras[0], ResolutionPreset.medium);
//    controller.initialize().then((_) {
//      if (!mounted) {
//        return;
//      }
//      setState(() {});
//    });
  }

  @override
  void dispose() {
    //controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
//    if (controller.value.isInitialized) {
//      return Container();
//    }
//    return AspectRatio(
//      aspectRatio: controller.value.aspectRatio,
//      child: CameraPreview(controller),
//    );
  return Container();
  }
}
