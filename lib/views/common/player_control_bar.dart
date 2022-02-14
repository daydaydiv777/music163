import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music163/controllers/player_controller.dart';
import 'package:music163/public/iconfont.dart';

class PlayerControlBar extends StatefulWidget {
  const PlayerControlBar({Key? key}) : super(key: key);

  @override
  _PlayerControlBarState createState() => _PlayerControlBarState();
}

class _PlayerControlBarState extends State<PlayerControlBar>
    with SingleTickerProviderStateMixin {
  final PlayerController _playerController = Get.find<PlayerController>();
  late AnimationController rotationAnimationController;

  @override
  void initState() {
    super.initState();
    rotationAnimationController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          rotationAnimationController.reset();
          rotationAnimationController.forward();
        }
      });
  }

  @override
  void dispose() {
    super.dispose();
    rotationAnimationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(width: 0.5, color: Colors.black12)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Transform.translate(
                    offset: const Offset(0, -5),
                    child: RotationTransition(
                      turns: rotationAnimationController,
                      child: const CircleAvatar(
                        child: FlutterLogo(size: 20),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  RichText(
                    text: TextSpan(
                      text: '我说我当不了县长 ',
                      style: DefaultTextStyle.of(context).style,
                      children: const <TextSpan>[
                        TextSpan(text: ' - ', style: TextStyle(fontSize: 12)),
                        TextSpan(text: '花粥', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Obx(() => CirclePlayWidget(
                    isPlaying: _playerController.isPlaying.value,
                    toggle: () {
                      _playerController.togglePausePlaying();
                      if (_playerController.isPlaying.value) {
                        rotationAnimationController.forward();
                      } else {
                        rotationAnimationController.stop();
                      }
                    },
                  )),
              const SizedBox(width: 20),
              const Icon(IconFont.icon_gengduo),
              const SizedBox(width: 20)
            ],
          ),
        ],
      ),
    );
  }
}

/// 圆形播放操作按钮
class CirclePlayWidget extends StatelessWidget {
  final Function() toggle;
  final bool isPlaying;
  const CirclePlayWidget(
      {Key? key, required this.toggle, required this.isPlaying})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        border: Border.all(color: Colors.black),
      ),
      child: Center(
        child: GestureDetector(
          onTap: toggle,
          child: Icon(
            isPlaying ? IconFont.icon_pause : IconFont.icon_playfill,
            size: 16,
          ),
        ),
      ),
    );
  }
}
