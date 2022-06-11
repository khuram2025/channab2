import 'package:channab/constants.dart';
import 'package:channab/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if(!Responsive.isDesktop(context))
        IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
        if(!Responsive.isMobile(context))
        Text("Dashboard", style: Theme.of(context).textTheme.headline6,),
        if(!Responsive.isMobile(context))
         Spacer(flex: Responsive.isDesktop(context) ? 2: 1),
        Expanded(child: SearchField()),
        ProfileCard()
      ],
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.green.shade400
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),

        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.green.shade400
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),

        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.green.shade400
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),

        ),
        suffixIcon: InkWell(
          onTap: (){},
          child: Container(
            padding: EdgeInsets.all(defaultPadding * 0.75),
            margin: EdgeInsets.symmetric(horizontal: defaultPadding/2),
            decoration: BoxDecoration(
              color: Colors.green.shade400,
              borderRadius: BorderRadius.all(Radius.circular(10)),

            ),
            child: SvgPicture.asset("assets/icons/Search.svg", color: Colors.white,),
          ),
        )

      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(horizontal: defaultPadding, vertical: defaultPadding/2),
      decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.green.shade300)

      ),
      child: Row(
        children: [
          Image.asset("assets/images/profile_pic.png", height: 33,),
          if(!Responsive.isMobile(context))
            Padding(padding: EdgeInsets.symmetric(horizontal: defaultPadding/2),
              child: Text("Khan Ji"),

            ),
          Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}

