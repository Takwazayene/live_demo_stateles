          import 'package:flutter/material.dart';

          class InteractivePage extends StatefulWidget {
          const InteractivePage({super.key});

          @override
          State<StatefulWidget> createState() => InteractivePageState();
          }

          class InteractivePageState extends State<InteractivePage> {
          Color bgcolor = Colors.white;
          Color textcolor = Colors.black;
          bool textButtonPressed = false;
          IconData btIcon = Icons.favorite;
          String nameTextEntry = "";
          late TextEditingController nameController;

          @override
          void initState() {
          // TODO: implement initState
          nameController = TextEditingController();
          super.initState();
          }

          @override
          void dispose() {
          nameController.dispose();
          super.dispose(); // tjs à la fin
          }

          @override
          Widget build(BuildContext context) {
          return Scaffold(
          backgroundColor: bgcolor,
          appBar: AppBar(
          title: Text(textButtonPressed ? "TextButton pressed" : "Interactive Widgets")
          ),
          body: Center(
          child: Column(
          children: [
          Text("Interactive Widget Demo",
          style: TextStyle(fontSize: 28, color: textcolor),
          ),
          TextButton(
          onPressed: updateAppBarText,
          child: const Text("Je suis un TextButton", style: TextStyle(fontSize: 28 ),)
          ),
          ElevatedButton(
          onPressed: () => print("pressed EB"),
          onLongPress: ()=> print("long pressed EB"),
          //onPressed: null,
          style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber,
          disabledBackgroundColor: Colors.pink,
          elevation: 15
          ),
          child: const Text(
          "Je suis un elevated button",
          style: TextStyle(fontSize: 28),
          ),
          ),
          IconButton(
          //onPressed: () => print("icon button pressed"),
          onPressed: updateBtIcon,
          icon: Icon(btIcon, size: 40),
          color: Colors.pink,
          splashColor: Colors.green,
          splashRadius: 50,
          ),
          TextField(
          decoration: const InputDecoration(
          hintText: "Entrez votre prénom",
          border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))
          )
          ),
          obscureText: false,
          // onChanged: (value) {
          // setState(() {
          // nameTextEntry = value;
          // });
          // },
          onSubmitted: (value) => setState(() => nameTextEntry = value),
          keyboardType: TextInputType.phone,
          ),
          Text(nameTextEntry, style: const TextStyle(color: Colors.blue, fontSize: 30),),
          TextField(
          decoration: const InputDecoration(hintText: "Entrez votre nom"),
          controller: nameController,
          ),
          //Text()
          ],
          )
          ),
          floatingActionButton: FloatingActionButton(
          onPressed: updateBgColors
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          );
          }

          updateAppBarText() {
          setState(() => textButtonPressed = ! textButtonPressed);
          }

          updateBtIcon() {
          print("updateBtIcon()");
          setState(() => btIcon == Icons.favorite ? Icons.play_arrow : Icons.favorite);
          }


          updateBgColors() {
          print("FAB button pressed");
          print("bgc=$bgcolor txtc=$textcolor");
          setState(() {
          textcolor = textcolor == Colors.black ? Colors.white : Colors.black;
          bgcolor = bgcolor == Colors.white ? Colors.black : Colors.white;
          });
          }

          }


