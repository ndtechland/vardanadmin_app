import 'dart:async';
import 'package:get/get.dart';
import '../models/get_contact_us_model.dart';
import '../modules/api_services/api_services.dart';

class ContactUsGetController extends GetxController {
  RxBool isLoading = true.obs;

  GetContactUsModel? getContactUsModel;

  Future<void> contactusApi() async {
    isLoading(true);
    getContactUsModel = await ApiProvider.GetContactUSApi();

    if (getContactUsModel?.data!.id == null) {
      Timer(
        const Duration(seconds: 1),
            () {
          //Get.snackbar("Fail", "${medicinecheckoutModel?.data}");
          //Get.to(() => MedicineCart());
          //Get.to((page))
          ///
        },
      );
      isLoading(true);
      getContactUsModel = await ApiProvider.GetContactUSApi();
    }
    if (getContactUsModel?.data!.id != null) {
      //Get.to(() => TotalPrice());
      isLoading(false);
    }
  }

  @override
  void onInit() {
    super.onInit();
    contactusApi();
  }

  @override
  void onClose() {
    super.onClose();
  }
}