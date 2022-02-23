<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

Use Glassmorphic container in your apps to make your UI more attractive

## Features

->You can use Color/Gradients
->Add height and width
->child of container

## Getting started

Add glassycontainer in your pubspec file and run pub get
## Usage

Use in your Home Screen to make it more attractive.


```dart
class GlassyContainer extends StatelessWidget {
  const GlassyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Center(
      child: GlassyContainer(
        child: Center(child: Text("we are testing")),
        height: 200,
        width: 200,
        color: Colors.white,
        blur: 20,
        opacity: 0.3,
        radius: 30,
        //Gradient for your GlassyContainer
        gradient: LinearGradient(colors: [Colors.red, Colors.yellow]),
      ),
    );
  }
}
```

<table>
<tr>
<td>
<a href="https://ibb.co/824K1Q4"><img src="https://i.ibb.co/9238Qd3/Instagram-Story-1.png" alt="Instagram-Story-1" border="0" height="640" width="360"></a>
</td>
</tr>
</table>

## Additional information

Check our git repo for contribution or any issue.
