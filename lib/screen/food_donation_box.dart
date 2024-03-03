import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ngo/screen/pick_up_schedule.dart';

class FoodDonationBox extends StatefulWidget {
  const FoodDonationBox({Key? key}) : super(key: key);

  @override
  State<FoodDonationBox> createState() => _FoodDonationBoxState();
}

class _FoodDonationBoxState extends State<FoodDonationBox> {
  final TextStyle textStyle = const TextStyle();
  final double sizedBox = 15;
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  String? selectedFoodType;
  List<String> foodItems = [];
  TextEditingController foodItemController = TextEditingController();
  List<String> foodTypes = ['Veg', 'Non-veg', 'Both'];
  List<File> selectedImages = [];
  Uint8List? _image;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  Future<void> selectImage() async {
    try {
      XFile? pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        setState(() {
          // Use the pickedImage directly
          selectedImages.add(File(pickedImage.path));
        });
      }
    } catch (e) {
      log("Error picking image: $e");
    }
  }

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        selectedImages.add(File(pickedFile.path));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Food Donation Box',
            style: textStyle.copyWith(fontWeight: FontWeight.w700, fontSize: 26),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black, size: 35),
            onPressed: () {},
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height*1.4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Divider(height: 25, color: Colors.white),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Donor name',
                      hintText: 'XYZ',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: sizedBox),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        flex: 1,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Address',
                            hintText: 'XYZ',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.location_on_sharp, size: 50),
                    ],
                  ),
                  SizedBox(height: sizedBox),
                  Flexible(
                    flex: 1,
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.account_circle_sharp, size: 45)),
                        labelText: 'Person  In charge',
                        hintText: 'XYZ Event Organizer',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: sizedBox),
                  Flexible(
                    flex: 1,
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.phone, size: 45),
                        ),
                        labelText: 'Contact Number',
                        hintText: '91 XXXXXXXXXXX',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: sizedBox),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        flex: 1,
                        child: TextField(
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                _selectDate(context);
                              },
                              icon: Icon(Icons.date_range_outlined, size: 45),
                            ),
                            labelText: 'Cooking Date',
                            hintText: selectedDate != null
                                ? '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}'
                                : '',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        flex: 1,
                        child: TextField(
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                _selectTime(context);
                              },
                              icon: Icon(Icons.watch_later, size: 45),
                            ),
                            labelText: 'Cooking Time',
                            hintText: selectedTime != null
                                ? '${selectedTime!.format(context)}'
                                : '',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: sizedBox),
                  Flexible(
                    flex: 1,
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/box/quantity.png'),
                        ),
                        labelText: 'Food Quantity Available',
                        hintText: '20' + ' people',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: sizedBox),
                  Flexible(
                    flex: 1,
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/box/quantity.png'),
                        ),
                        labelText: 'Food Quantity Available',
                        hintText: '20' + ' people',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: sizedBox),
                  Flexible(
                    flex: 1,
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            _selectTime(context);
                          },
                          icon: Icon(Icons.watch_later, size: 45),
                        ),
                        labelText: 'Food pick Up Time',
                        hintText: selectedTime != null
                            ? '${selectedTime!.format(context)}'
                            : '',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: sizedBox),
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      value: selectedFoodType,
                      onChanged: (value) {
                        setState(() {
                          selectedFoodType = value;
                        });
                      },
                      items: foodTypes.map((type) {
                        return DropdownMenuItem<String>(
                          value: type,
                          child: Text(type),
                        );
                      }).toList(),
                      decoration: InputDecoration(
                        labelText: 'Food Type',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: sizedBox),
                  Column(
                    children: [
                      TextField(
                        controller: foodItemController,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                foodItems.add(foodItemController.text);
                                foodItemController.clear();
                              });
                            },
                            icon: Icon(Icons.add),
                          ),
                          labelText: 'Food Item',
                          hintText: 'Enter food item',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text('Food Items:'),
                  SizedBox(height: 5),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: foodItems.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(foodItems[index]),
                          // Add delete functionality if needed
                        );
                      },
                    ),
                  ),
                  SizedBox(height: sizedBox),
                  ElevatedButton(
                    onPressed: selectImage,
                    child: Text('Upload Image'),
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: selectedImages.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.file(selectedImages[index]),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: sizedBox,),
                  ElevatedButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => PickUpSchdule(),)), child: Text('Post Availabality')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}