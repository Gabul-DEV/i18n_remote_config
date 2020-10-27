# i18n_remote_config

Integration i18n with Remote Config. The package help you implements remote config. The objective is create redundance your application, if remote config failure the package return your local json.




## Getting Start

### STEP 00

You can use [FlutterModular](https://pub.dev/packages/flutter_modular) your application for package running!

### STEP 01

Create folder lang your root application.

![](https://image.prntscr.com/image/_6T5XNugTiCtRZeHldL4Mw.png)

### STEP 2

Add folder your pubspec.yaml.

![](https://image.prntscr.com/image/xMWeHHovQfaZFy5g9f7Kdg.png)

### STEP 3

Add your locale.json in folder lang.

ATTENTION! : language_COUNTRY.json

![](https://image.prntscr.com/image/g_ydvgaPSfmtERBJi5eiDw.png)


### STEP 4

Add file configuration [Firebase](https://pub.dev/packages/firebase_core), Android(GoogleService.json) and iOS(GoogleService-Info.plist)

### STEP 5

Configure your __MaterialApp__. Add LocalizationsDelegates and supportedLocales your application


![](https://image.prntscr.com/image/9EocT9dSSwa_j46V0-_fKA.png)

### STEP 6

Add __I18nLocalizations__ your __AppModule__

![](https://image.prntscr.com/image/dri37D4-SdKydAithBXpdg.png)

### STEP 7 

For you use extension i18n import your page or widget

```dart
import 'package:i18n_remote_config/i18n_remote_config.dart';
```

And simple use your application. "KEY".i18n()

![](https://image.prntscr.com/image/lfD85paLTg2P9VzemM72vA.png)

### BONUS

If you can pass params your string, use:

- JSON FILE

```json
{
    "title" : "WITH PARAMS ONE: $0, TWO: $1"
}
```
- EXAMPLE DART

```dart
"title".i18n("FLUTTER","DART")
```
