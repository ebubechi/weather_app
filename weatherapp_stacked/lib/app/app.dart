import 'package:weatherapp_stacked/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:weatherapp_stacked/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:weatherapp_stacked/ui/views/home/home_view.dart';
import 'package:weatherapp_stacked/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:weatherapp_stacked/services/weatherreposetory_service.dart';
import 'package:weatherapp_stacked/ui/views/get_weather_view/get_weather_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: GetWeatherView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: WeatherReposetoryService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
