import 'package:flutter/material.dart';
import 'package:okay/Components/watch_Tile.dart';
import 'package:okay/Models/cart.dart';
import 'package:okay/Models/watch.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add watch to Cart
  void addWatchToCart(Watch watch){
    Provider.of<Cart> (context, listen: false).addItemToCart(watch);
    //alert the user , watch succesfully added
  showDialog(context: context, builder: (context)=> 
  const AlertDialog(title: Text('Successfully Added!'),
  content: Text('Check your cart'),));
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        //Searchbar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(color: const Color.fromARGB(255, 190, 189, 189), borderRadius: BorderRadius.circular(8),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              Text('Search', style: TextStyle(color: Color.fromARGB(255, 44, 43, 43)),),
              Icon(Icons.search, color: Color.fromARGB(255, 44, 43, 43),),
            ],
          ),
        ),

        //massage
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: Text('Everyone flies.. some longer than others', style: TextStyle(color: Color.fromARGB(255, 27, 27, 27)),),
        ),

        //hot picks
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Hot Picks', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
              Text('See all', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),)
            ],
          ),
        ),
        const SizedBox(height: 10,),

        Expanded(child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
            Watch watch = value.getWatchList()[index];
            return WatchTile(
              watch: watch,
              onTap: ()=> addWatchToCart(watch),
            );
          }
        )
       ),
       const Padding(
         padding: EdgeInsets.only(top: 25, left: 25, right: 25,),
         child: Divider(color: Colors.white,),
       )
      ],
    ),
   );
  }
}