import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/domain/account/usecases/change_user_info.dart';
import 'package:birthflow_movil/src/domain/account/usecases/get_user_usecase.dart';
import 'package:birthflow_movil/src/ui/configuration/blocs/change_user_info/bloc.dart';
import 'package:birthflow_movil/src/ui/configuration/blocs/change_user_info/events/change_user_info_events.dart';
import 'package:birthflow_movil/src/ui/configuration/blocs/change_user_info/states/change_user_info_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditarInfoScreen extends StatefulWidget {
  @override
  _EditarInfoState createState() => _EditarInfoState();
}

class _EditarInfoState extends State<EditarInfoScreen> {
  final _formKey = GlobalKey<FormState>();
  final _newCorreo = TextEditingController();
  final _newNombre = TextEditingController();
  final _newFirstName = TextEditingController();
  final _newSecondName = TextEditingController();
  final _newPhoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangeUserInfoBloc(
        locator<GetUserUseCase>(),
        locator<ChangeUserInfoUseCase>(),
      )..add(const GetUser()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Editar Información'),
          centerTitle: true,
        ),
        body: BlocConsumer<ChangeUserInfoBloc, ChangeUserInfoState>(
          listener: (context, state) {
            if (state is Error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.errorMessage)),
              );
            }
            if (state is Updated) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.message)),
              );
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            if (state is Loaded) {
              _newCorreo.text = state.user.email;
              _newNombre.text = state.user.userName;
              _newFirstName.text = state.user.name;
              _newSecondName.text = state.user.secondName;
              _newPhoneNumber.text = state.user.phoneNumber.toString();

              return _buildForm(context, state);
            }
            if (state is Loading) {
              return const Center(child: CircularProgressIndicator());
            }
            return const Center(child: Text('Cargando...'));
          },
        ),
      ),
    );
  }

  Widget _buildForm(BuildContext context, Loaded state) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const Text('Nuevos datos:', style: TextStyle(fontSize: 16)),
              const SizedBox(height: 20),
              TextFormField(
                controller: _newCorreo,
                decoration: const InputDecoration(
                  labelText: 'Nuevo Correo',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) => _validateEmail(value),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _newNombre,
                decoration: const InputDecoration(
                  labelText: 'Nuevo Nombre de usuario',
                  border: OutlineInputBorder(),
                ),
                validator: (value) => _validateName(value),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _newFirstName,
                decoration: const InputDecoration(
                  labelText: 'Nuevo Primer Nombre',
                  border: OutlineInputBorder(),
                ),
                validator: (value) => _validateName(value),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _newSecondName,
                decoration: const InputDecoration(
                  labelText: 'Nuevo Segundo Nombre',
                  border: OutlineInputBorder(),
                ),
                validator: (value) => _validateName(value),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _newPhoneNumber,
                decoration: const InputDecoration(
                  labelText: 'Nuevo Número de Teléfono',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
                validator: (value) => _validatePhone(value),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => _submitForm(context, state.user.id!),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.blue[700],
                ),
                child: const Text(
                  'Actualizar Datos',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitForm(BuildContext context, String userId) {
    if (_formKey.currentState!.validate()) {
      context.read<ChangeUserInfoBloc>().add(
            ChangeUserInfo(
              id: userId,
              userName: _newNombre.text,
              email: _newCorreo.text,
              name: _newFirstName.text,
              secondName: _newSecondName.text,
              phoneNumber: int.parse(_newPhoneNumber.text),
            ),
          );
    }
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) return 'Por favor ingrese un correo';
    if (!value.contains('@')) return 'Correo no válido';
    return null;
  }

  String? _validateName(String? value) {
    if (value == null || value.isEmpty) return 'Por favor ingrese un nombre';
    if (value.length < 3) return 'Mínimo 3 caracteres';
    return null;
  }

  String? _validatePhone(String? value) {
    if (value == null || value.isEmpty)
      return 'Por favor ingrese un número de teléfono';
    if (value.length < 8) return 'Número de teléfono no válido';
    return null;
  }
}
