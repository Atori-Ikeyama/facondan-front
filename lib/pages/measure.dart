import 'dart:convert';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ne_chu_show/features/add_nechu/movie_picker.dart';
import 'package:ne_chu_show/viewmodel/add_nechu_view_model.dart';
import 'package:video_player/video_player.dart';

class Measure extends StatelessWidget {
  const Measure({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Measure'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Consumer(builder: (context, ref, _) {
        return TextButton(
          onPressed: () async {
            ref.read(addNechuViewModelProvider.notifier).uploadNechu();
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.red,
            ),
            height: 60,
            width: 200,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.thermostat_outlined,
                  size: 45,
                  color: Colors.white,
                ),
                Text(
                  "熱を測る",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                )
              ],
            ),
          ),
        );
      }),
      body: Consumer(builder: (context, ref, _) {
        return Center(
          child: Column(
            children: <Widget>[
              uploadContainerWidget(ref),
              uploadInputForm(),
            ],
          ),
        );
      }),
    );
  }

  Widget uploadInputForm() {
    const items = <String>[
      "アニメ",
      "映画",
      "ドラマ",
      "音楽",
    ];
    final formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: SizedBox(
        width: 270,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Consumer(builder: (context, ref, _) {
              return TextFormField(
                onChanged: (value) {
                  ref.read(addNechuViewModelProvider.notifier).changeTitle(value);
                },
                controller: TextEditingController(text: ref.watch(addNechuViewModelProvider).title),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'タイトル',
                  hintText: 'タイトルを入力してください',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'タイトルを入力してください';
                  }
                  return null;
                },
              );
            }),
            const SizedBox(
              height: 20,
            ),
            Consumer(builder: (context, ref, _) {
              final catego = ref.watch(addNechuViewModelProvider).category;
              return DropdownButtonFormField(
                validator: (value) => value == null || value.isEmpty ? 'ジャンルを選択してください' : null,
                value: (catego.isNotEmpty) ? catego : null,
                hint: Text("ヒント"),
                items: items.map((String value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(value),
                    ),
                    // onTap: () => ref.read(addNechuViewModelProvider.notifier).changeCategory(value),
                  );
                }).toList(),
                onChanged: (value) {
                  ref.read(addNechuViewModelProvider.notifier).changeCategory(value ?? "");
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'ジャンル',
                ),
              );
            })
          ],
        ),
      ),
    );
  }

  Widget uploadContainerWidget(WidgetRef ref) {
    const double containerSize = 250;
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
        onPressed: () async {
          XFile? file = await MoviePicker.PickMovie();
          if (file != null) {
            ref.read(addNechuViewModelProvider.notifier).changeVideo(file);
          }
        },
        child: (ref.watch(addNechuViewModelProvider).video == null)
            ? Stack(children: [
                DottedBorder(
                  child: Container(
                    decoration: BoxDecoration(border: Border.all(color: Colors.black, style: BorderStyle.none)),
                    height: containerSize,
                    width: containerSize,
                  ),
                ),
                const SizedBox(
                  height: containerSize,
                  width: containerSize,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.file_upload_outlined,
                          size: 50,
                        ),
                        Text(
                          "アップロードする",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ])
            : Consumer(builder: (context, ref2, _) {
                return SizedBox(
                  height: 280,
                  child: AspectRatio(
                    aspectRatio: ref2.watch(addNechuViewModelProvider).videoController!.value.aspectRatio,
                    child: VideoPlayer(ref2.watch(addNechuViewModelProvider).videoController!),
                  ),
                );
              }),
      ),
    );
  }
}
