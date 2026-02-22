// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'karaoke_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$libraryViewModelHash() => r'0623a3d18feb601594d22e8610ea83754d869cec';

/// See also [LibraryViewModel].
@ProviderFor(LibraryViewModel)
final libraryViewModelProvider =
    AutoDisposeAsyncNotifierProvider<
      LibraryViewModel,
      List<LibrarySong>
    >.internal(
      LibraryViewModel.new,
      name: r'libraryViewModelProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$libraryViewModelHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$LibraryViewModel = AutoDisposeAsyncNotifier<List<LibrarySong>>;
String _$sessionViewModelHash() => r'd633e8c0d5b6ce577f7a54790f82ef7b466967c7';

/// See also [SessionViewModel].
@ProviderFor(SessionViewModel)
final sessionViewModelProvider =
    AutoDisposeAsyncNotifierProvider<SessionViewModel, List<Session>>.internal(
      SessionViewModel.new,
      name: r'sessionViewModelProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$sessionViewModelHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$SessionViewModel = AutoDisposeAsyncNotifier<List<Session>>;
String _$performerViewModelHash() =>
    r'441f3769bacddcf08a577003364a0f3cfaf0a403';

/// See also [PerformerViewModel].
@ProviderFor(PerformerViewModel)
final performerViewModelProvider =
    AutoDisposeAsyncNotifierProvider<
      PerformerViewModel,
      List<Performer>
    >.internal(
      PerformerViewModel.new,
      name: r'performerViewModelProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$performerViewModelHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$PerformerViewModel = AutoDisposeAsyncNotifier<List<Performer>>;
String _$sessionDetailViewModelHash() =>
    r'43ad668ae7081fc3d6a40ba78513d57ec6cb43b3';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$SessionDetailViewModel
    extends BuildlessAutoDisposeAsyncNotifier<List<Map<String, dynamic>>> {
  late final String sessionId;

  FutureOr<List<Map<String, dynamic>>> build(String sessionId);
}

/// See also [SessionDetailViewModel].
@ProviderFor(SessionDetailViewModel)
const sessionDetailViewModelProvider = SessionDetailViewModelFamily();

/// See also [SessionDetailViewModel].
class SessionDetailViewModelFamily
    extends Family<AsyncValue<List<Map<String, dynamic>>>> {
  /// See also [SessionDetailViewModel].
  const SessionDetailViewModelFamily();

  /// See also [SessionDetailViewModel].
  SessionDetailViewModelProvider call(String sessionId) {
    return SessionDetailViewModelProvider(sessionId);
  }

  @override
  SessionDetailViewModelProvider getProviderOverride(
    covariant SessionDetailViewModelProvider provider,
  ) {
    return call(provider.sessionId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'sessionDetailViewModelProvider';
}

/// See also [SessionDetailViewModel].
class SessionDetailViewModelProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          SessionDetailViewModel,
          List<Map<String, dynamic>>
        > {
  /// See also [SessionDetailViewModel].
  SessionDetailViewModelProvider(String sessionId)
    : this._internal(
        () => SessionDetailViewModel()..sessionId = sessionId,
        from: sessionDetailViewModelProvider,
        name: r'sessionDetailViewModelProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$sessionDetailViewModelHash,
        dependencies: SessionDetailViewModelFamily._dependencies,
        allTransitiveDependencies:
            SessionDetailViewModelFamily._allTransitiveDependencies,
        sessionId: sessionId,
      );

  SessionDetailViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.sessionId,
  }) : super.internal();

  final String sessionId;

  @override
  FutureOr<List<Map<String, dynamic>>> runNotifierBuild(
    covariant SessionDetailViewModel notifier,
  ) {
    return notifier.build(sessionId);
  }

  @override
  Override overrideWith(SessionDetailViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: SessionDetailViewModelProvider._internal(
        () => create()..sessionId = sessionId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        sessionId: sessionId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    SessionDetailViewModel,
    List<Map<String, dynamic>>
  >
  createElement() {
    return _SessionDetailViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SessionDetailViewModelProvider &&
        other.sessionId == sessionId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, sessionId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SessionDetailViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<List<Map<String, dynamic>>> {
  /// The parameter `sessionId` of this provider.
  String get sessionId;
}

class _SessionDetailViewModelProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          SessionDetailViewModel,
          List<Map<String, dynamic>>
        >
    with SessionDetailViewModelRef {
  _SessionDetailViewModelProviderElement(super.provider);

  @override
  String get sessionId => (origin as SessionDetailViewModelProvider).sessionId;
}

String _$dataManagementViewModelHash() =>
    r'a1fc4806265965c608e79df943672db0a4b36927';

/// See also [DataManagementViewModel].
@ProviderFor(DataManagementViewModel)
final dataManagementViewModelProvider =
    AutoDisposeNotifierProvider<DataManagementViewModel, void>.internal(
      DataManagementViewModel.new,
      name: r'dataManagementViewModelProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$dataManagementViewModelHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$DataManagementViewModel = AutoDisposeNotifier<void>;
String _$songRankingViewModelHash() =>
    r'1128a31cc06e5023c1034c7d9422c6805ae479c7';

/// See also [SongRankingViewModel].
@ProviderFor(SongRankingViewModel)
final songRankingViewModelProvider =
    AutoDisposeAsyncNotifierProvider<
      SongRankingViewModel,
      List<Map<String, dynamic>>
    >.internal(
      SongRankingViewModel.new,
      name: r'songRankingViewModelProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$songRankingViewModelHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$SongRankingViewModel =
    AutoDisposeAsyncNotifier<List<Map<String, dynamic>>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
