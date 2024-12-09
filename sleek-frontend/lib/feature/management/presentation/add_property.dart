// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:propertymanagementsys/feature/management/application/cubit/property_cubit.dart';
import 'package:propertymanagementsys/utils/app_textfield_with_title.dart';
import 'package:propertymanagementsys/utils/responsive.dart';
import 'package:repository/repository.dart';

class AddProperty extends StatefulWidget {
  const AddProperty({super.key, this.property});

  final PropertyModel? property;

  @override
  State<AddProperty> createState() => _AddPropertyState();
}

class _AddPropertyState extends State<AddProperty> {
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  final TextEditingController property_name = TextEditingController();
  final TextEditingController property_type = TextEditingController();
  final TextEditingController property_description = TextEditingController();
  final TextEditingController property_price = TextEditingController();
  final TextEditingController property_status = TextEditingController();
  final TextEditingController property_image = TextEditingController();
  final TextEditingController property_location = TextEditingController();
  final TextEditingController property_contact = TextEditingController();

  void pickFile() {
    final ImagePicker picker = ImagePicker();
    picker.pickImage(source: ImageSource.gallery).then((value) {
      if (value != null) {
        setState(() {
          property_image.text = value.path;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    if (widget.property != null) {
      property_name.text = widget.property!.name ?? '';
      property_type.text = widget.property!.type ?? '';
      property_description.text = widget.property!.description ?? '';
      property_price.text = widget.property!.price ?? '';
      property_status.text = widget.property!.status ?? '';
      property_image.text = widget.property!.image ?? '';
      property_location.text = widget.property!.location ?? '';
      property_contact.text = widget.property!.contact ?? '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: _autovalidateMode,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          children: [
            const Text('Add Property',
                style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
            SizedBox(
              height: Responsive.size(context).width * 0.05,
            ),
            AppTextFieldWithTitle(
              hasSuffixIcon: true,
              height: 50,
              width: Responsive.size(context).width,
              controller: property_name,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field is required';
                }
                return null;
              },
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 0.4,
                ),
              ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 0.4,
                ),
              ),
              // readOnly: false,
              hasTitle: false,
              title: 'Property Name',
              labelText: 'Property Name',
              contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
            ),
            SizedBox(
              height: Responsive.size(context).width * 0.05,
            ),
            AppTextFieldWithTitle(
              hasSuffixIcon: true,
              height: 50,
              width: Responsive.size(context).width,
              controller: property_type,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field is required';
                }
                return null;
              },
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 0.4,
                ),
              ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 0.4,
                ),
              ),
              // readOnly: false,
              hasTitle: false,
              title: 'Property Type',
              labelText: 'Property Type',
              contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
            ),
            SizedBox(
              height: Responsive.size(context).width * 0.05,
            ),
            AppTextFieldWithTitle(
              hasSuffixIcon: true,
              height: 50,
              width: Responsive.size(context).width,
              controller: property_price,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field is required';
                }
                return null;
              },
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 0.4,
                ),
              ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 0.4,
                ),
              ),
              // readOnly: false,
              hasTitle: false,
              title: 'Property Price',
              labelText: 'Property Price',
              textInputType: TextInputType.number,
              contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
            ),
            SizedBox(
              height: Responsive.size(context).width * 0.05,
            ),
            AppTextFieldWithTitle(
              hasSuffixIcon: true,
              height: 50,
              width: Responsive.size(context).width,
              controller: property_status,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field is required';
                }
                return null;
              },
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 0.4,
                ),
              ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 0.4,
                ),
              ),
              // readOnly: false,
              hasTitle: false,
              title: 'Property Status',
              labelText: 'Property Status',
              contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
            ),
            SizedBox(
              height: Responsive.size(context).width * 0.05,
            ),
            InkWell(
              onTap: pickFile,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                    width: 0.4,
                    style: BorderStyle.solid,
                  ),
                  image: property_image.text.isEmpty
                      ? null
                      : widget.property?.image != null
                          ? DecorationImage(
                              image: NetworkImage(
                                widget.property!.image!,
                              ),
                              fit: BoxFit.cover)
                          :
                      DecorationImage(
                          image: FileImage(
                            File(property_image.text),
                          ),
                          fit: BoxFit.cover),
                ),
                child: const Center(
                  child: Text(
                    'Click to Select Photo',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Responsive.size(context).width * 0.05,
            ),
            AppTextFieldWithTitle(
              hasSuffixIcon: true,
              height: 50,
              width: Responsive.size(context).width,
              controller: property_location,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field is required';
                }
                return null;
              },
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 0.4,
                ),
              ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 0.4,
                ),
              ),
              // readOnly: false,
              hasTitle: false,
              title: 'Property Location',
              labelText: 'Property Location',
              contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
            ),
            SizedBox(
              height: Responsive.size(context).width * 0.05,
            ),
            AppTextFieldWithTitle(
              hasSuffixIcon: true,
              height: 50,
              width: Responsive.size(context).width,
              controller: property_contact,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field is required';
                }
                return null;
              },
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 0.4,
                ),
              ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 0.4,
                ),
              ),
              // readOnly: false,
              hasTitle: false,
              title: 'Property Contact',
              labelText: 'Property Contact',
              textInputType: TextInputType.phone,
              contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
            ),
            SizedBox(
              height: Responsive.size(context).width * 0.05,
            ),
            AppTextFieldWithTitle(
              hasSuffixIcon: true,
              height: 50,
              width: Responsive.size(context).width,
              controller: property_description,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field is required';
                }
                return null;
              },
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 0.4,
                ),
              ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 0.4,
                ),
              ),
              // readOnly: false,
              maxLines: 5,
              hasTitle: false,
              title: 'Property Description',
              labelText: 'Property Description',
              contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
            ),
            SizedBox(
              height: Responsive.size(context).width * 0.05,
            ),
            TextButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    Map<String, dynamic> data = {
                      'property_name': property_name.text,
                      'property_type': property_type.text,
                      'property_price': property_price.text,
                      'property_status': property_status.text,
                      'property_image': property_image.text,
                      'property_location': property_location.text,
                      'property_contact': property_contact.text,
                      'property_description': property_description.text,
                    };

                      if (widget.property != null) {
                        data['id_for_update'] = widget.property!.id;
                        await context.read<PropertyCubit>().update(data).then((value) async {
                          await context.read<PropertyCubit>().getProperties();
                          Navigator.pop(context);
                        });
                      }else{

                        await context.read<PropertyCubit>().addProperty(data).then((value) async {
                          await context.read<PropertyCubit>().getProperties();
                          Navigator.pop(context);
                        });
                      }


                  } else {
                    setState(() {
                      _autovalidateMode = AutovalidateMode.onUserInteraction;
                    });
                  }
                },
                child: const Text('Add Property'))
          ],
        ),
      ),
    );
  }
}
