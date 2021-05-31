import 'package:flutter_bloc/flutter_bloc.dart';

enum PageEvent { event_first, event_second }

class PageViewBloc extends Bloc<PageEvent, bool> {
  PageViewBloc(bool initialState) : super(initialState);

  @override
  Stream<bool> mapEventToState(PageEvent event) async* {
    if (event == PageEvent.event_second) {
      yield true;
    } else if (event == PageEvent.event_first){
      yield false;
    }
  }
}
