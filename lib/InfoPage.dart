import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:empathy_exhibition/Themes.dart';
import 'package:empathy_exhibition/Modes.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

class InfoPage extends StatefulWidget {
  InfoPage({Key? key, required this.theme, required this.mode})
      : super(key: key);

  final Themes theme;
  final Modes mode;

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  static Widget theBluestEye = _buildCard(title: 'The Bluest Eye', author: 'Toni Morrison', blurb: 'A moving story following young black girls in 1940, '
      'creating empathy by viewing the world through their identities', link: 'https://www.google.com/search?q=the+bluest+eye', imagePath: 'images/bluest.png');
  static Widget theUrgency = _buildCard(title: 'The Urgency of Intersectionality', author: 'Kimberlé Crenshaw', blurb: 'A great starting video to understanding intersectionality. '
      'Kimberlé Crenshaw delivers anecdotes and uses her tone to engage the audience.', link: 'https://www.youtube.com/watch?v=akOe5-UsQ2o', imagePath: 'images/kimberle.png');
  static Widget march = _buildCard(title: 'March: Book Two', author: 'John Lewis, Andrew Aydin, and Nate Powell', blurb: 'A memoir to John Lewis and the Civil Rights Movements, '
      'March: Book Two combines striking black and white panels and impactful dialogue to create a graphic novel that outlines the struggle for civil rights.', link: 'https://www.bcri.org/product/march-book-two-paperback/', imagePath: 'images/march.png');
  static Widget theirEyes = _buildCard(title: 'Their Eyes Were Watching God', author: 'Zora Neale Hurston', blurb: 'Similar to The Bluest Eye, Their Eyes Were Watching God uses the affordances '
      "of the written mode to follow a black woman as she searches for love as well as herself. Through beautiful natural imagery, the book perfectly captures Janie's self discovery.",
      link: 'https://www.zoranealehurston.com/books/their-eyes-were-watching-god/', imagePath: 'images/theirEyes.png');
  static Widget thug = _buildCard(title: 'The Hate U Give', author: 'Angie Thomas', blurb: 'A more modern artifact, THe Hate U Give follow Starr Carter, a black teenager, '
      'as she struggles with being split between white and black cultures. The book and movie also make use of their affordances to present a nuanced view of police brutality and protests like Black Lives Matter.',
      link: 'https://angiethomas.com/the-hate-u-give/', imagePath: 'images/thug.png');
  static Widget starshine = _buildCard(title: 'Starshine & Clay', author: 'Kamilah Aisha Moon', blurb: "As a collection of poems, Starshine & Clay covers a multitude "
      "of themes including intersectionality, empathy, and resilience. Stand out poems include but are not limited to #17, These are the Breaks, and Shared Plight.",
      link: 'http://www.kamilahaishamoon.org/starshine-and-clay.php', imagePath: 'images/starshine.png');
  static Widget oatmeal = _buildCard(title: "You're not going to believe what I'm about to tell you", author: 'The Oatmeal', blurb: 'Using humor and contrasting'
      ' monochrome and colorful panels, this comic makes readers painfully aware of our biases while informing us how to change.',
      link: 'https://theoatmeal.com/comics/believe', imagePath: 'images/oatmeal.png');
  static Widget friend = _buildCard(title: 'Your Black Friend', author: 'Ben Passmoore', blurb: 'With a distinctive visual style, this comic takes on the '
      'everyday thoughts of an everyday "black friend." Similar to THUG, it also focuses on the duality of being a African American split between black and white communities.',
      link: 'https://www.silversprocket.net/2017/09/19/ben-passmores-your-black-friend-wins-ignatz-brick-for-outstanding-comic/', imagePath: 'images/friend.png');
  static Widget amplify = _buildCard(title: 'Protesting Classes', author: '', blurb: 'This graphic exemplifies the utility of the electronic mode '
      'as it spread throughout the recent protests. It is accessible, concise, and conveys the importance of amplifying voices instead of speaking for them.',
      imagePath: 'images/amplify.png');
  static Widget inaugural = _buildCard(title: 'The Hill We Climb', author: 'Amanda Gorman', blurb: 'Of course, the iconic inaugural spoken word evokes a '
      'sense of hope and unity for the new era of the US. It is a perfect example of sharing the experiences of underrepresented groups.',
      link: 'https://www.youtube.com/watch?v=LZ055ilIiN4', imagePath: 'images/inaugural.png');
  static Widget marriage = _buildCard(title: 'An American Marriage', author: 'Tayari Jones', blurb: 'Using a unique structure of switching first-person '
      'perspectives, An American Marriage generates empathy for all characters. t is one of the best uses of perspective.',
      link: 'http://www.tayarijones.com/books/an-american-marriage/', imagePath: 'images/marriage.png');

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return buildAppBar(context, '${widget.theme.name} in the ${widget.mode.name} mode',
        ListView(
          primary: true,
          physics: BouncingScrollPhysics(),
          children: _buildList(widget.theme, widget.mode),
        )
    );
  }

  List<Widget> _buildList(Themes theme, Modes mode) {
    switch (theme) {
      case Themes.empathy:
        return _buildEmpathy(mode);
      case Themes.intersectionality:
        return _buildIntersectionality(mode);
      case Themes.respect:
        return _buildResilience(mode);
    }
  }

  List<Widget> _buildIntersectionality(Modes mode) {
    switch (mode) {
      case Modes.written:
        return [theBluestEye, theirEyes, starshine, thug, marriage];
      case Modes.oral:
        return [theUrgency, inaugural
        ];
      case Modes.visual:
        return [friend, thug];
      case Modes.electronic:
        return [theUrgency, inaugural
        ];
      case Modes.nonverbal:
        return [theUrgency, inaugural
        ];
    }
  }

  List<Widget> _buildEmpathy(Modes mode) {
    switch (mode) {
      case Modes.written:
        return [theBluestEye, theirEyes, marriage, thug];
      case Modes.oral:
        return [inaugural, thug];
      case Modes.visual:
        return [march, thug, oatmeal, friend];
      case Modes.electronic:
        return [friend, oatmeal, amplify];
      case Modes.nonverbal:
        return [theUrgency, march, thug];
    }
  }

  List<Widget> _buildResilience(Modes mode) {
    switch (mode) {
      case Modes.written:
        return [theBluestEye, theirEyes, inaugural];
      case Modes.oral:
        return [theUrgency, thug, inaugural];
      case Modes.visual:
        return [march, thug, friend];
      case Modes.electronic:
        return [friend, amplify,];
      case Modes.nonverbal:
        return [thug, inaugural,];
    }
  }

  static Widget _buildCard({required String title, String author = '', String blurb = '', String link = '', String imagePath = ''}) {
    return InkWell(
      onTap: () => launch(link),
      child: Card(
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.white,
        child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
               FittedBox(
                 fit: BoxFit.fitWidth,
                 child: Row(
                   children: [link == '' ? Container() : Icon(Icons.touch_app_outlined, size: 30,),
                     FittedBox(
                       fit: BoxFit.fitWidth,
                       child: Text('$title',
                                style: GoogleFonts.merriweather(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21,
                                    color: Colors.deepOrangeAccent),),
                     ),
                   ],
                 ),
               ),
                Text("$author",
                            style: GoogleFonts.lato(
                                fontStyle: FontStyle.italic,
                                fontSize: 18,
                                color: Colors.grey
                            ),
                          ),
                imagePath == '' ? Container(): Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: ClipRRect(child: Image.asset(imagePath),
                    borderRadius: BorderRadius.circular(20),),
                ),
          Text(blurb,
                              style: GoogleFonts.lato(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black)),
              ],
            )),
      ),
    );
  }
}