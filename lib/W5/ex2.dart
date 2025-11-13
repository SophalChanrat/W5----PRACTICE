import 'package:flutter/material.dart';

enum ButtonType {
  primary,
  secondary,
  disabled
}

enum IconPosition {
    left, 
    right
}

void main() {
    runApp(
        MaterialApp(
            home: Scaffold(
                appBar: AppBar(title: Text("Custom buttons"),),
                body: Padding(padding: EdgeInsetsGeometry.all(20),
                    child: Column(
                        spacing: 20,
                        children: [
                            CustomButton(
                                label: "Submit",
                                icon: Icons.check,
                                type: ButtonType.primary,
                            ),

                            CustomButton(
                                label: "Time",
                                icon: Icons.access_time,
                                iconPosition: IconPosition.right,
                                type: ButtonType.secondary,
                            ),

                            CustomButton(
                                label: "Account",
                                icon: Icons.account_tree,
                                iconPosition: IconPosition.right,
                                type: ButtonType.disabled,
                            ),

                            // Container(
                            //     padding: EdgeInsets.all(10),
                            //     decoration: BoxDecoration(
                            //         borderRadius: BorderRadius.circular(20),
                            //         color: Colors.blue
                            //     ),
                            //     child: Center(
                            //         child: Row(
                            //             mainAxisAlignment: MainAxisAlignment.center,
                            //             children: [
                            //                 Padding(padding: EdgeInsets.only(right: 10),
                            //                     child: Icon(
                            //                         Icons.check,
                            //                         color: Colors.blueGrey,
                            //                     )
                            //                 ),
                            //                 Text("Submit",
                            //                     style: TextStyle(color: Colors.white),
                            //                 )
                            //             ],
                            //         ),
                            //     ),
                            // )
                        ],
                    ),
                ),
            ),
        )
    );
}

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final IconPosition iconPosition;
  final ButtonType type;

  IconPosition get iconPos {
    if (iconPosition == IconPosition.left) {
      return IconPosition.left;
    } else {
      return IconPosition.right;
    }
  }

  ButtonType get buttonType => type;
  Color get backgroundColor {
    switch (buttonType) {
      case ButtonType.primary:
        return Colors.blue;
      case ButtonType.secondary:
        return Colors.green;
      case ButtonType.disabled:
        return Colors.grey;
    }
  }

  const CustomButton({
    super.key,
    required this.label,
    required this.icon,
    this.iconPosition = IconPosition.left,
    this.type = ButtonType.primary,
  });

  @override
  Widget build(BuildContext context) {
    Widget iconWidget = Icon(
      icon,
      color: Colors.blueGrey,
    );
    
    Widget textWidget = Text(
      label,
      style: TextStyle(color: Colors.blueGrey),
    );
  
    List<Widget> rowChildren = iconPos == IconPosition.left
        ? [iconWidget, SizedBox(width: 10), textWidget]
        : [textWidget, SizedBox(width: 10), iconWidget];

    return Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: backgroundColor,
            ),
            child: Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: rowChildren,
                    // children: [
                    //     Padding(padding: EdgeInsets.only(right: 10),
                    //         child: Icon(
                    //             icon,
                    //             color: Colors.blueGrey,
                    //         )
                    //     ),
                    //     Text(label,
                    //         style: TextStyle(color: Colors.blueGrey),
                    //     )
                    // ],
                ),
            ),
    );
  }
}