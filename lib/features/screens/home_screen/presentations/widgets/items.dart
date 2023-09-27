import 'package:flutter/material.dart';
class ItemsList extends StatefulWidget {
  const ItemsList({super.key});

  @override
  State<ItemsList> createState() => _ItemsListState();
}

class _ItemsListState extends State<ItemsList> {

  final List<String>txt=["Top Up","Transfer","Withdraw","More"];
  final List<IconData>icons=[Icons.wallet,Icons.swap_horiz_outlined,
    Icons.arrow_downward_outlined,Icons.more_horiz,];
  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 70,
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return  Padding(
            padding: const EdgeInsets.only(right: 25,left: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 24,
                    child: Icon(icons[index],color: Colors.black,),
                  ),
                ),
                Text(txt[index],style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 14),)
              ],
            ),
          );
        },
      ),
    );
  }
}
