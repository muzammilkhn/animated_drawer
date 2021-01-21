# Animated Drawer

A simple yet fully customizable drawer with animations for flutter.

![Black Technology LinkedIn Banner (1)](https://user-images.githubusercontent.com/38032118/104093143-65287400-52aa-11eb-8392-ebed28bf7200.gif)

## Screenshots
![Untitled_design-removebg-preview](https://user-images.githubusercontent.com/38032118/95982281-5d873980-0e39-11eb-8415-dcd963c38fca.png)<br />
![4igeoh](https://user-images.githubusercontent.com/38032118/95981858-c7531380-0e38-11eb-8ec7-7eb1ba81654a.gif)

## Salient Features
- Set speed of animations.
- Set coordinates of X-Axis and Y-Axis to which widget will translate.
- Set Angle of rotation to which widget will rotate.
- Supports gradient colors.
- Support full customization of widgets
- Any type of widget can be passed in  HomePageContent and MenuPageContent.
- Shadow Widget to enhance the presentation of drawer.
- Shadow Widget can be customized.

## Usage
```dart
AnimatedDrawer(
      homePageXValue: 150,
      homePageYValue: 80,
      homePageAngle: -0.2,
      homePageSpeed: 250,
      shadowXValue: 122,
      shadowYValue: 110,
      shadowAngle: -0.275,
      shadowSpeed: 550,
      openIcon: Icon(Icons.menu_open, color: Color(0xFF1f186f)),
      closeIcon: Icon(Icons.arrow_back_ios, color: Color(0xFF1f186f)),
      shadowColor: Color(0xFF4c41a3),
      backgroundGradient: LinearGradient(
        colors: [Color(0xFF4c41a3), Color(0xFF1f186f)],
      ),
      menuPageContent: Padding(
        padding: const EdgeInsets.only(top: 100.0, left: 15),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FlutterLogo(
                size: MediaQuery.of(context).size.width / 4,
              ),
              Row(
                children: [
                  Text(
                    "FLUTTER",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "HOLIC",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.blue[200],
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 40),
              ),
              Text(
                "Home Screen",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
              ),
              Text(
                "Screen 2",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
              ),
              Divider(
                color: Color(0xFF5950a0),
                thickness: 2,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
              ),
              Text(
                "About",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      homePageContent: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue[200],
        child: Center(
          child: Image.network(
            "https://user-images.githubusercontent.com/38032118/105316779-2a480980-5be3-11eb-900e-18fcd599493d.png",
            height: MediaQuery.of(context).size.height / 2,
          ),
        ),
      ),
    );
```
