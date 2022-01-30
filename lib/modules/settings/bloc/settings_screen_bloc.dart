import 'package:flutter_bloc/flutter_bloc.dart';

import 'settings_screen_event.dart';
import 'settings_screen_state.dart';

class SettingsScreenBloc
    extends Bloc<SettingsScreenEvent, SettingsScreenState> {
  SettingsScreenBloc() : super(SettingsScreenState.initial());
}
