import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  int selectedIndex = 0;
  String selectedCategory = 'Cat 1';
  String? filePath;
  List<String> allCategories = [
    "Cat 1",
    "Cat 2",
    "Cat 3",
  ];
  changeCat(value) {
    selectedCategory = value;
    update();
  }

  String selectedSoftwareType = 'Soft 1';

  List<String> allSoftwareTypes = [
    "Soft 1",
    "Soft 2",
    "Soft 3",
  ];
  changeSoftwareType(value) {
    selectedSoftwareType = value;
    update();
  }

  String selectedSkillType = 'Skill 1';

  List<String> allSkillTypes = [
    "Skill 1",
    "Skill 2",
    "Skill 3",
  ];
  changeSkillType(value) {
    selectedSkillType = value;
    update();
  }

  String selectedVideoType = 'Type 1';
  List<String> allVideoTypes = [
    "Type 1",
    "Type 2",
    "Type 3",
  ];
  changeVideoType(value) {
    selectedVideoType = value;
    update();
  }

  changeIndex(int index) {
    selectedIndex = index;
    update();
  }

  pickImage() async {
    var result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );
    if (result != null) {
      filePath = result.files.first.path;
      return filePath;
    }
  }
}
