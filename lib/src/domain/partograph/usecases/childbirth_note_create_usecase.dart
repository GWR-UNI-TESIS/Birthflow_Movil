import 'package:birthflow_movil/src/domain/partograph/entities/childbirth_note.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class CreateChildbirthNoteUseCase {
  Future<ChildbirthNote?> execute({
    required String partographId,
    String? description,
    required String date,
    required String hour,
    required String sex,
     required String peso,
    required String apgar,
    required String temperature,
    required String caputto,
    required String circular,
    required String lamniotico,
    required String miccion,
    required String meconio,
    required String pa,
    required String expulsivo,
    required String placenta,
    required String alumbramiento,
    required String huellaPlantar,
    required String pc,
    required String talla,
    required String brazalete,
    required String huellaDig,
  });
}

class CreateChildbirthNoteUseCaseImplementation implements CreateChildbirthNoteUseCase {
  final PartographRepository _partographRepository;

  CreateChildbirthNoteUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  Future<ChildbirthNote?> execute({
    required String partographId,
    String? description,
    required String date,
    required String hour,
    required String sex,
     required String peso,
    required String apgar,
    required String temperature,
    required String caputto,
    required String circular,
    required String lamniotico,
    required String miccion,
    required String meconio,
    required String pa,
    required String expulsivo,
    required String placenta,
    required String alumbramiento,
    required String huellaPlantar,
    required String pc,
    required String talla,
    required String brazalete,
    required String huellaDig,
  }) async {
    return await _partographRepository.createChildbirthNote(
      partographId: partographId,
      description: description,
      date: date,
      hour: hour,
      sex: sex,
      peso: peso,
      apgar: apgar,
      temperature: temperature,
      caputto: caputto,
      circular: circular,
      lamniotico: lamniotico,
      miccion: miccion,
      meconio: meconio,
      pa: pa,
      expulsivo: expulsivo,
      placenta: placenta,
      alumbramiento: alumbramiento,
      huellaPlantar: huellaPlantar,
      pc: pc,
      talla: talla,
      brazalete: brazalete,
      huellaDig: huellaDig,
    );
  }
}
