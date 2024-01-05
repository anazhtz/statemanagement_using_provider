import 'package:get/get.dart';
import 'package:statemanagement_using_provider/getx_statemanagemnt/model/datamodel.dart';
import 'package:statemanagement_using_provider/getx_statemanagemnt/service/dataservice.dart';

class DataController extends GetxController{
  //create instance variablr
  DataModel dataModel = DataModel().obs as DataModel;
  getData()async{
    //create instrance  of getservice
   try{
     var data = await DataService().getService();
     //check condition
     if(data!= null){
       dataModel.value=data;  
     }
   }catch(e){
     Get.snackbar("title", "$e");

   }
  }
  //step call function
@override
  void onInit() {
    getData();
    super.onInit();
  }
}