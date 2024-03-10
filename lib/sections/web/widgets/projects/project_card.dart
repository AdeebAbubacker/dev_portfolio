import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class ProjectService extends StatelessWidget {
  const ProjectService({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProjectCard(frontdata: Text('data')),
            ProjectCard(frontdata: Text('data')),
            ProjectCard(frontdata: Text('data')),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProjectCard(frontdata: Text('data')),
            ProjectCard(frontdata: Text('data')),
          ],
        ),
      ],
    );
  }
}

class ProjectCard extends StatefulWidget {
  final Widget frontdata;

  const ProjectCard({
    super.key,
    required this.frontdata,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  Color? shadowColor1;
  bool isFlipped = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            // Change shadow color to red when mouse enters
            shadowColor1 = Colors.red;
            isFlipped = true;
          });
        },
        onExit: (_) {
          setState(() {
            // Reset shadow color when mouse exits
            shadowColor1 = Colors.grey;
            isFlipped = false;
          });
        },
        child: Container(
          width: 290,
          height: 180,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7),
            boxShadow: [
              BoxShadow(
                color: shadowColor1 ?? Colors.grey,
                blurRadius: 4,
                offset: const Offset(-1, 2),
              ),
            ],
          ),
          child: widget.frontdata,
        ),
      ),
    );
  }
}
