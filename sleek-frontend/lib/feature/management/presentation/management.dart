import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:propertymanagementsys/feature/management/application/cubit/property_cubit.dart';
import 'package:propertymanagementsys/feature/management/presentation/add_property.dart';
import 'package:repository/repository.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class Management extends StatefulWidget {
  const Management({super.key});

  @override
  State<Management> createState() => _ManagementState();
}

class _ManagementState extends State<Management> {
  @override
  Widget build(BuildContext context) {
    final properties = context.watch<PropertyCubit>().state.payload.properties;
    final DataGridSource dataGridSource = PropertyDataSource(properties);
    return RefreshIndicator(
      onRefresh: () async {
        await context.read<PropertyCubit>().getProperties();
      },
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Properties",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return const AddProperty();
                          });
                    },
                    child: const Text('Add Property'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SfDataGrid(
                source: dataGridSource,
                frozenRowsCount: 1,
                frozenColumnsCount: 1,
                footerFrozenColumnsCount: 2,
                columns: [
                  GridColumn(
                    columnName: 'id',
                    label: Container(
                      padding: const EdgeInsets.all(16.0),
                      alignment: Alignment.center,
                      child: const Text(
                        'ID',
                      ),
                    ),
                  ),
                  GridColumn(
                    columnName: 'name',
                    label: Container(
                      padding: const EdgeInsets.all(16.0),
                      alignment: Alignment.center,
                      child: const Text(
                        'Name',
                      ),
                    ),
                  ),
                  GridColumn(
                    columnName: 'location',
                    label: Container(
                      padding: const EdgeInsets.all(16.0),
                      alignment: Alignment.center,
                      child: const Text(
                        'Location',
                      ),
                    ),
                  ),
                  GridColumn(
                    columnName: 'Status',
                    label: Container(
                      padding: const EdgeInsets.all(16.0),
                      alignment: Alignment.center,
                      child: const Text(
                        'Status',
                      ),
                    ),
                  ),
                  GridColumn(
                    columnName: 'type',
                    label: Container(
                      padding: const EdgeInsets.all(16.0),
                      alignment: Alignment.center,
                      child: const Text(
                        'Type',
                      ),
                    ),
                  ),
                  GridColumn(
                    columnName: '',
                    label: Container(
                      padding: const EdgeInsets.all(16.0),
                      alignment: Alignment.center,
                      child: const Text(
                        'Action',
                      ),
                    ),
                  ),
                  GridColumn(
                    columnName: '',
                    label: Container(
                      padding: const EdgeInsets.all(16.0),
                      alignment: Alignment.center,
                      child: const Text(
                        '',
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PropertyDataSource extends DataGridSource {
  final List<PropertyModel> properties;

  PropertyDataSource(this.properties) {
    _buildDataGridRows(properties);
  }

  List<DataGridRow> _dataGridRows = <DataGridRow>[];

  // Overrides
  @override
  List<DataGridRow> get rows => _dataGridRows;

  /// Building DataGridRows
  void _buildDataGridRows(List<PropertyModel> data) {
    _dataGridRows = data.map<DataGridRow>((PropertyModel property) {
      return DataGridRow(cells: <DataGridCell>[
        DataGridCell<int>(columnName: 'Id', value: property.id),
        DataGridCell<String>(columnName: 'name', value: property.name),
        DataGridCell<String>(columnName: 'location', value: property.location),
        DataGridCell<String>(columnName: 'status', value: property.status),
        DataGridCell<String>(columnName: 'type', value: property.type),
        DataGridCell<PropertyModel>(columnName: 'Action', value: property),
        DataGridCell<int>(columnName: 'Action', value: property.id),
      ]);
    }).toList();
  }

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: <Widget>[
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: Text(row.getCells()[0].value.toString()),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: Text(row.getCells()[1].value.toString()),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: Text(row.getCells()[2].value.toString()),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: Text(row.getCells()[3].value.toString()),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: Text(row.getCells()[4].value.toString()),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                showModalBottomSheet(
                  context: Get.context!,
                  builder: (BuildContext context) {
                    return AddProperty(
                      property: row.getCells()[5].value,
                    );
                  },
                );
              },
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8.0),
              icon: const Icon(
                Icons.edit,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () async {
                await Get.context!
                    .read<PropertyCubit>()
                    .deleteProperty(row.getCells()[6].value)
                    .then((value) {
                  Get.context!.read<PropertyCubit>().getProperties();
                });
              },
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8.0),
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
