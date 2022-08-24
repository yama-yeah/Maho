import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/ui/login/login_controller.dart';
import 'package:maho/domain/const/text_style.dart';
import 'package:maho/domain/model/fun_model.dart';
import 'package:go_router/go_router.dart';

import '../../domain/apis/funapi/funapi_domain.dart';
import '../../domain/data/secure_storage.dart';
import '../../domain/states/funapi_state.dart';

class LoginView extends HookConsumerWidget {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(context, ref) {
    final userIdController = useTextEditingController();
    final passwordController = useTextEditingController();
    final loginController = LoginController(context, ref);
    void login() {
      final user = FunUserModel(
          userid: userIdController.text,
          password: passwordController.text); //usecaseに渡すデータ
      loginController.login(user);
    }

    return Stack(
      children: [
        Scaffold(
            body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/login_bg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        )),
        Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.transparent,
          appBar: GlassAppBar(
            title: GlassText(
              'Login',
              style: GoogleFonts.getFont(
                'Caveat',
                color: Colors.white.withOpacity(0.5),
                fontSize: 32,
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) => const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff00ff28),
                    Color(0xfc18e6b4),
                    //Color(0xfa197cd7),
                    Color(0xf9aeebff)
                  ],
                ).createShader(
                  Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                ),
                child: Text("Maho", style: ref.read(appTitleStyleProvider)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: GlassContainer(
                  width: 250,
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    controller: userIdController,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                child: GlassContainer(
                  width: 250,
                  child: TextField(
                    onEditingComplete: login,
                    controller: passwordController,
                  ),
                ),
              ),
              GlassButton(
                child: const GlassText('Login'),
                onPressed: login,
              ),
              Container(),
            ],
          ),
        )
      ],
    );
  }
}
