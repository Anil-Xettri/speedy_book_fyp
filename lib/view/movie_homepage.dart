import 'package:flutter/material.dart';
import 'package:speedy_book/model/movie_model.dart';
import 'package:speedy_book/view/movie_details.dart';

class MoviesHomePage extends StatelessWidget {
  MoviesHomePage({super.key});

  final scaffol = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffol,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
          child: const Icon(
            Icons.drafts,
            color: Colors.white,
          ),
          onTap: () {
            scaffol.currentState?.openDrawer();
          },
        ),
        title: const Text(
          "Currently Showing",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.black,
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text(
                "Tony Stark",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              accountEmail: Text(
                "tony@email.com",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/tony.jpg"),
              ),
            ),
            ListTile(
              title: const Text(
                "Home",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                // handle edit profile action
              },
            ),
            ListTile(
              title: const Text(
                "My Tickets",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                // handle home action
              },
            ),
            ListTile(
              title: const Text(
                "Edit Profile",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                // handle my tickets action
              },
            ),
            ListTile(
              title: const Text(
                "Logout",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                ),
              ),
              onTap: () {
                // handle logout action
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 550,
            width: 550,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 2 / 3),
              itemCount: movies.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MoviesDetailsPage(
                          model: movies[index],
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        movies[index].image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 300,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Next Change",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                        child: Container(
                          height: 250,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: const DecorationImage(
                              image: AssetImage("assets/spiderman.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                        child: Container(
                          height: 250,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: const DecorationImage(
                              image: AssetImage("assets/doctorstrange.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                        child: Container(
                          height: 250,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: const DecorationImage(
                              image: AssetImage("assets/premgeet3.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                        child: Container(
                          height: 250,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: const DecorationImage(
                              image: AssetImage("assets/spiderman.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                        child: Container(
                          height: 250,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: const DecorationImage(
                              image: AssetImage("assets/thor.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
