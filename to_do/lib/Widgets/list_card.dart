import 'package:flutter/material.dart';

class Listcard extends StatelessWidget {
  const Listcard({
    super.key,
    required this.theDay,
    required this.theTime,
    required this.listTitle,
    required this.backgroundColor,
    required this.value,
    required this.onChanged,
  });

  final String theDay;
  final String theTime;
  final String listTitle;
  final Color backgroundColor;
  final bool value;
  final void Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.date_range, size: 20, color: Colors.black87),
                const SizedBox(width: 5),
                Text(
                  theDay,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                const SizedBox(width: 10),
                Icon(Icons.more_time_outlined, size: 20, color: Colors.black87),
                const SizedBox(width: 5),
                Text(
                  theTime,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 15,
                  child: Checkbox(
                    value: value,
                    onChanged: onChanged,
                    shape: CircleBorder(),
                  ),
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.more_horiz_rounded,
                    size: 20,
                    color: const Color.fromARGB(255, 84, 60, 150),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text(
                  listTitle,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
