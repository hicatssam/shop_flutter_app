import 'package:flutter/material.dart';

class AppListTile extends StatefulWidget {
  final String? title;

  final String? time;
  final String? subTitle;
  final String? orderNum;
  final String? period;
  final IconData? iconData;
  final Color? color;
  final Color? iconColor;
  final String? image;
  final String? source;

  const AppListTile({
    super.key,
    this.title,
    this.time,
    this.subTitle,
    this.orderNum,
    this.period,
    this.iconData,
    this.color,
    this.iconColor,
    this.image,
    this.source,
  });

  @override
  State<AppListTile> createState() => _AppListTileState();
}

class _AppListTileState extends State<AppListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage(widget.image.toString()),fit: BoxFit.fill),
        ),
      ),
      title: Text('${widget.subTitle}${widget.orderNum} as shipped.'),
      trailing: Column(
        children: [
          Text(
           widget.time !=null && widget.period !=null ? '${widget.time}${widget.period}' : '',
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
