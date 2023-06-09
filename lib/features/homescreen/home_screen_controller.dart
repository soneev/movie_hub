import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../models/movie_list_response_model.dart';

class HomeController extends GetxController {

   List<String>movieDatalist=[];
  @override
  void onInit()async {
    // TODO: implement onInit
    super.onInit();
   await getMovieData();
   LoadJson();
  }
 var movieListEnity=MovieListResponseModel(result:List<Result>.empty(growable: true),
 queryParam:QueryParam() ).obs;


 LoadJson(){

  for(int i=0;i<movieListEnity.value.result[i].stars.length;i++ ){
print("tyyyyyyy${movieListEnity.value.result[i].stars[i]}tytyty");

 String jsonResult=movieListEnity.value.result[i].stars[i];
 List<String>movieData=[];

movieData.addAll(jsonResult.split(","));
for(int i=0; i<movieData.length;i++){

  movieDatalist.add(movieData[i]);
}
print("******$movieDatalist*********");
print("2------$movieData--------2");

  }



 }





  Future<void> getMovieData() async {
    http.Response response;
    try {
      response = await http.post(
          Uri.parse("https://hoblist.com/api/movieList"),
          headers: {
            'content-Type': 'application/json',
          },
          body: jsonEncode({
            "category": "movies",
            "language": "kannada",
            "genre": "all",
            "sort": "voting"
          }));

          if( response .statusCode==200){
movieListEnity.value=MovieListResponseModel.fromJson(jsonDecode(response.body));


print("get data success");
print(response.body.toString());
// print(movieListEnity.value.result[1].stars[1].toString());


          }
          else{

            print("api call failed");
          }

    } catch (e) {
      print("get product list failed");
      print(e.toString());
    }
    update();

  }

}
