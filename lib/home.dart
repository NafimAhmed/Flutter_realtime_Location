



// import 'package:enorsia/app/modules/utill/app_colors.dart';
// import 'package:enorsia/app/modules/utill/app_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget{

  static final CameraPosition _kGoogle = const CameraPosition(
    target: LatLng(23.8103, 90.4125),
    zoom: 10,
  );

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  double poslat=0.00;
  double poslong=0.00;
  LatLng currentpos=LatLng(23.7547124, 90.3630302);



  Future<void> getpos() async {

    Position position = await GeolocatorPlatform.instance.getCurrentPosition();
    poslat=position.longitude;
    poslong=position.longitude;

    setState(() {
      currentpos=LatLng(position.latitude, position.longitude);
    });



  }




  // @override
  // void initState() {
  //   // TODO: implement initState
  //
  //   determinePosition();
  //   getpos();
  //   super.initState();
  //
  // }



  // final List<Marker> _markers = <Marker>[
  //   Marker(
  //       markerId: MarkerId('1'),
  //       infoWindow: InfoWindow(
  //         title: 'My Position',
  //       ),
  //
  //   ),
  // ];




  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    determinePosition();
    getpos();

    return Scaffold(
      appBar: AppBar(
        title: Text("Store Front"),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(

              height: 40.h,
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Stack(
                children: [

                  GoogleMap(
                    //initialCameraPosition: _kGoogle,
                    markers: {
                      Marker(
                        markerId: MarkerId("Source"),
                        position: currentpos,
                      ),
                    },
                    mapType: MapType.normal,
                    myLocationEnabled: true,
                    compassEnabled: true,
                    initialCameraPosition: CameraPosition(
                      target: currentpos,
                      zoom: 13,
                    ),
                    onMapCreated: (GoogleMapController controller){
                      //_controller.complete(controller);
                    },
                  ),






                ],
              ),
            ),

            ListTile(
                title: Text("Storefront in",
                  style: GoogleFonts.yantramanav(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp
                  ),
                ),
                subtitle:Text("Rugby road, Twickenham Trading Estate, TW1 1DQ MiddleSex, London,",

                  style: GoogleFonts.yantramanav(
                      fontWeight: FontWeight.w400,
                      fontSize: 10.sp
                  ),

                )
            ),


            ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context,index){

                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(

                      // leading: Image.asset("assets/images/clark-street-mercantile-qnKhZJPKFD8-unsplash.jpg",
                      //
                      //   width: 18.w,
                      //   height: 18.w,
                      //
                      //
                      // ),
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Enorsia Storefont1",
                                style: GoogleFonts.yantramanav(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.add_circle_outline_sharp,

                                    size: 10,
                                  ),
                                  Text("Add to my store",
                                    style: GoogleFonts.yantramanav(
                                        fontSize: 8,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black,

                                    ),

                                  ),
                                ],
                              )
                            ],
                          ),
                          
                          
                          Text("ENORSIA Storefront 11st Floor Skill Center | "
                              "Twickenham WarehouseRugby road, Twickenham Trading Estate | "
                              "TW1 1DQ MiddleSex I London, United Kingdom",

                            style: GoogleFonts.openSans(
                              fontSize: 8,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,

                            ),

                          )
                          
                          
                          
                        ],
                      ),

                      subtitle: Column(
                        children: [

                          SizedBox(height: 5,),

                          Row(
                            children: [


                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [


                                  Text("OPEN NOW ",
                                    style: GoogleFonts.yantramanav(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                        color: Colors.black
                                    ),
                                  ),

                                  Text("till 19.00",
                                    style: GoogleFonts.yantramanav(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 10,
                                      color: Colors.black
                                    ),
                                  ),

                                ],
                              ),

                              SizedBox(width: 9,),


                              Container(
                                padding: EdgeInsets.all(2),
                                width: 18.w,
                                height: 25,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey.shade400),
                                    borderRadius: BorderRadius.circular(5)
                                  ),

                                child: Row(
                                  children: [
                                    //Image.asset("assets/images/mdi_shop-time-outline.png"),

                                    SizedBox(width: 2.w,),
                                    Text("Schedule",
                                      style: GoogleFonts.yantramanav(
                                        fontSize: 10
                                      ),
                                    ),
                                  ],
                                )
                              )
                               




                            ],
                          ),

                          SizedBox(height: 5,),

                          Row(
                            children: [




                             // SizedBox(width: 9,),


                              Container(
                                  padding: EdgeInsets.all(2),
                                  width: 18.w,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey.shade400),
                                      borderRadius: BorderRadius.circular(5)
                                  ),

                                  child: Row(
                                    children: [
                                      Icon(Icons.messenger_outline,
                                        color: Color.fromARGB(255, 238, 98, 49),
                                        size: 12,
                                      ),

                                      SizedBox(width: 02.w,),
                                      Text("Message",
                                        style: GoogleFonts.yantramanav(
                                            fontSize: 10,
                                          color: Color.fromARGB(255, 238, 98, 49),
                                        ),
                                      ),
                                    ],
                                  )
                              ),

                              SizedBox(width: 9,),


                              Container(
                                  padding: EdgeInsets.all(2),
                                  width: 18.w,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey.shade400,),
                                      borderRadius: BorderRadius.circular(5)
                                  ),

                                  child: Row(
                                    children: [
                                     // Image.asset("assets/images/mdi_shop-time-outline.png"),
                                      Icon(Icons.phone,
                                        color: Color.fromARGB(255, 238, 98, 49),
                                        size: 12,
                                      ),

                                      SizedBox(width: 02.w,),
                                      Text("Call",
                                        style: GoogleFonts.yantramanav(
                                            fontSize: 10,
                                          color: Color.fromARGB(255, 238, 98, 49),
                                        ),
                                      ),
                                    ],
                                  )
                              ),

                              SizedBox(width: 9,),


                              Container(
                                  padding: EdgeInsets.all(2),
                                  width: 18.w,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey.shade400,),
                                      borderRadius: BorderRadius.circular(5)
                                  ),

                                  child: Row(
                                    children: [
                                      Icon(Icons.email_outlined,
                                        color: Color.fromARGB(255, 238, 98, 49),
                                        size: 12,
                                      ),


                                      SizedBox(width: 02.w,),
                                      Text("Email",
                                        style: GoogleFonts.yantramanav(
                                            fontSize: 10,
                                          color: Color.fromARGB(255, 238, 98, 49),
                                        ),
                                      ),
                                    ],
                                  )
                              )





                            ],
                          )

                        ],
                      ),
                    ),
                  );

                })




          ],
        ),
      ),
    );
  }











  /////////////////////////////////////////////////////////////////////////////////
  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }



  /////////////////////////////////////////////////////////////////////////




}