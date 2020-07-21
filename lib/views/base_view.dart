import 'package:flutter/material.dart';
import 'package:myf2app/utils/utils.dart';
import 'package:myf2app/widgets/footer_widget.dart';
import 'package:myf2app/widgets/header_widget.dart';
import 'login_view/login_view.dart';

class BaseView extends StatelessWidget {
  final Widget child;
  final double positionedTop;
  final bool companyTitle;
  final bool footerTitle;
  final bool exitButton;
  const BaseView(
      {Key key,
      this.child,
      this.positionedTop,
      this.companyTitle = false,
      this.footerTitle = false,
      this.exitButton = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          width: screenAwareWidth(375, context),
          height: screenAwareHeight(675, context),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                child: Container(
                  height: screenAwareHeight(675, context),
                  child: Header(companyTitle: companyTitle),
                ),
              ),
              exitButton
                  ? Positioned(
                      top: 30,
                      right: 4,
                      child: IconButton(
                        onPressed: () => Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => LoginView())),
                        icon: Icon(Icons.exit_to_app,
                            size: 26, color: Colors.black.withOpacity(0.4)),
                      ),
                    )
                  : SizedBox(height: 1),
              Positioned(
                  left: 0,
                  right: 0,
                  top: positionedTop,
                  child: Container(
                    height: screenAwareHeight(675 - positionedTop, context),
                    child: child,
                  )),
              Positioned(
                  bottom: 10,
                  right: 10,
                  left: 10,
                  child: footerTitle
                      ? footer
                      : SizedBox(
                          height: 0,
                        ))
            ],
          ),
        ),
      ),
    );
  }
}
