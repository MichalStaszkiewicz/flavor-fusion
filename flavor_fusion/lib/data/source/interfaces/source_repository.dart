import 'package:flavor_fusion/data/source/interfaces/local_source.dart';
import 'package:flavor_fusion/data/source/interfaces/remote_source.dart';

abstract class ISourceRepository implements ILocalSource, IRemoteSource {}
