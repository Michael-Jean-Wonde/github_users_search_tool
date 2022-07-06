import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:github_search/ui/Repos.dart';
import 'package:meta/meta.dart';

import '../ui/User.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final Repos _profileRepo;
  ProfileBloc(this._profileRepo) : super(ProfileInitial());

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    // TODO: implement mapEventToState
    try {
      if (event is GetUser) {
        yield (ProfileLoading());
        final profile = await _profileRepo.fetchUser(event.userName);
        yield (ProfileLoaded(profile));
      }
    } catch (e) {
      yield (ProfileError('This User was Not Found!'));
    }
  }
}
