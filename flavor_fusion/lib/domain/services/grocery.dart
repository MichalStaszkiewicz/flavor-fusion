import 'package:flavor_fusion/data/models/grocery.dart';
import 'package:flavor_fusion/data/repository/source_repository.dart';
import 'package:flavor_fusion/domain/services/interfaces/grocery.dart';

import '../../data/models/recipe.dart';

class SavedGroceryService implements ISavedGrocery {
  SourceRepository _sourceRepository;

  SavedGroceryService(this._sourceRepository);
  @override
  Future<List<Recipe>> getGroceryList() async {
    return await _sourceRepository.getGroceryList();
  }

  @override
  void removeGrocery(int id) {
    _sourceRepository.removeGrocery(id);
  }

  @override
  void saveGrocery(Recipe recipe) {
    _sourceRepository.saveGrocery(recipe);
  }
}
