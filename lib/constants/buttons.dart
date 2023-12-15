import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final Icon? icon; // Make the icon parameter optional
  final Color textColor;
  final double buttonWidth;
  final double buttonHeight;
  final Color? borderColor;
   final Color? backgroundColor;
   bool loading ;

   CustomButton({
    Key? key, // Use Key instead of super.key
    required this.text,
    required this.onPressed,
    this.icon, // Icon is now optional
    this.textColor = Colors.black,
    this.buttonWidth = 200,
    this.buttonHeight = 60,
    this.borderColor,
    this.backgroundColor,
    this.loading = false,
  }) : super(key: key); // Pass the key to the superclass constructor

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed, // Use the onPressed function from the widget
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(color: widget.borderColor ?? Colors.transparent, width: 2),
        ),
        padding: EdgeInsets.zero,
        minimumSize: Size(widget.buttonWidth, widget.buttonHeight),
        backgroundColor: widget.backgroundColor ?? Colors.white,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ 
          
          widget.loading ? CircularProgressIndicator() :
          
          Row(children: [
            if (widget.icon != null) widget.icon!,  // Use widget.icon
           SizedBox(width: 10),
          Text(
            widget.text,
            style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.bold,
              color: widget.textColor,
            ),
          ),
          ],)
           
        ],
      ),


      // Previous One in any casse if the upper one not work
      // Row(
      //   mainAxisSize: MainAxisSize.min,
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [ 
      //     if (widget.icon != null) widget.icon!,  // Use widget.icon
      //      SizedBox(width: 10),
      //     Text(
      //       widget.text,
      //       style: TextStyle(
      //         fontSize: 17.0,
      //         fontWeight: FontWeight.bold,
      //         color: widget.textColor,
      //       ),
      //     ),
      //   ],
      // ),
      
    );
  }
}
