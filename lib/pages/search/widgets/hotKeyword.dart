// ignore: file_names
import 'package:flutter/material.dart';

class HotKeyword extends StatelessWidget {
  final double? width;
  final List? hotSearchList;
  final Function? onClick;
  const HotKeyword({
    this.width,
    this.hotSearchList,
    this.onClick,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 0.4,
      spacing: 5.0,
      children: [
        for (var i in hotSearchList!)
          SizedBox(
            width: width! / 2 - 8,
            child: Material(
              borderRadius: BorderRadius.circular(3),
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () => onClick!(i.keyword),
                child: Row(
                  children: [
                    SizedBox(
                      width: width! / 2 -
                          (i.icon != null && i.icon != '' ? 50 : 12),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(6, 5, 0, 5),
                        child: Text(
                          i.keyword!,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    if (i.icon != null && i.icon != '')
                      SizedBox(
                        width: 40,
                        child: Image.network(
                          i.icon!,
                          height: 15,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
