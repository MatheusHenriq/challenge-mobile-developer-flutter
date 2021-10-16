import 'package:flutter/material.dart';
import 'package:obifilmes/app/utils/textstyles.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).cardColor,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              'Hello, welcome to ObiFilmes!',
              style: Theme.of(context).textTheme.headline3,
            ),
            Text(
              'Search Movies and favorite ones you like :)',
              style: TextStyles.smallStyle
                  .apply(color: Theme.of(context).hintColor),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Here you can find the following movie information: ',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .apply(fontWeightDelta: 0),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Movie Overview',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .apply(fontWeightDelta: 2),
            ),
            Image.asset(
              'assets/images/overview.jpg',
              height: 150,
              width: 150,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'User vote avarage',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .apply(fontWeightDelta: 2),
            ),
            Image.asset(
              'assets/images/user_avaliation.jpg',
              height: 150,
              width: 150,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              ' Movie Popularity',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .apply(fontWeightDelta: 2),
            ),
            Image.asset(
              'assets/images/popularity.png',
              height: 150,
              width: 150,
            )
          ],
        ),
      ),
    );
  }
}
