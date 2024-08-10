import 'package:flutter/material.dart';

class NeChuList extends StatefulWidget {
  const NeChuList({super.key});

  @override
  State<NeChuList> createState() => _NeChuListState();
}

class _NeChuListState extends State<NeChuList> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 200),
        child: CarouselView(
          itemExtent: 330,
          shrinkExtent: 200,
          children: List<Widget>.generate(20, (int index) {
            return UncontainedLayoutCard(index: index, label: 'Item $index');
          }),
        ),
      ),
    );
  }
}

class UncontainedLayoutCard extends StatelessWidget {
  const UncontainedLayoutCard({
    super.key,
    required this.index,
    required this.label,
  });

  final int index;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.primaries[index % Colors.primaries.length].withOpacity(0.5),
      child: Center(
        child: Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 20),
          overflow: TextOverflow.clip,
          softWrap: false,
        ),
      ),
    );
  }
}
