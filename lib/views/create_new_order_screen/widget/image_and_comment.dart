import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../utils/colors.dart';
import '../../../utils/style.dart';
class ImageAndComment extends StatefulWidget {
  const ImageAndComment({Key? key}) : super(key: key);

  @override
  State<ImageAndComment> createState() => _SState();
}

class _SState extends State<ImageAndComment> {
  List<Uint8List> images=[];
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Izoh yozish va suratga olishmaj buriy emas"),
          const SizedBox(height: 3,),
          TextField(
            keyboardType: TextInputType.multiline,
            maxLines: 3,

            decoration: InputDecoration(
            labelText: "Ushu buyurtma haqidagi biror nima kiriting",
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(1),
              )
            ),
          ),
          const SizedBox(height: 14,),
          Wrap(
            runAlignment: WrapAlignment.start,
            alignment: WrapAlignment.start,
            children: [
              InkWell(
                onTap: ()async{
                  var res= await  _picker.pickImage(source: ImageSource.gallery);
                  if(res!=null)
                    {
                      images.add(await res.readAsBytes());
                      setState(() {
                      });
                    }
                },
                child: Container(
                  margin: EdgeInsets.all(3),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black)
                  ),
                  child: const Center(
                    child: Icon(Icons.add_a_photo),
                  ),
                ),
              ),
             ...images.map((e) =>Container(
               margin: const EdgeInsets.all(3),
               width: 50,
               height: 50,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(5),
                   border: Border.all(color: Colors.black),
                 image: DecorationImage(
                   image: MemoryImage(e),fit: BoxFit.cover
                 )
               ),
             ) ) ,
            ],
          ),
        ],
      ),
    );
  }
}
