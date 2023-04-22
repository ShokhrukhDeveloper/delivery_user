import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class ImageViewer extends StatefulWidget {

  const ImageViewer({Key? key,required this.img}) : super(key: key);
final Uint8List img;
  @override
  State<ImageViewer> createState() => _ImageViewerState();
}

class _ImageViewerState extends State<ImageViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.transparent,
      body: Stack(
        children: [

          InteractiveViewer(child: Center(
            child: Image.memory(widget.img,
              // width: double.infinity,height: double.infinity,
            ),
          )),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: const EdgeInsets.only(right: 25),
                child: IconButton(onPressed: ()=>Navigator.pop(context),
                  icon: const Icon(Icons.clear_rounded,size: 56,),color: Colors.black.withOpacity(0.5),),),
          )
        ],
      ),
    );
  }
}
