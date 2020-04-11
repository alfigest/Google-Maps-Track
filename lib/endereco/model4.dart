import 'package:maps_test/endereco/model5.dart';

class EnderecoMooc{
  static List<EnderecoModel> getEnderecos(){
    return [
      EnderecoModel(
        titulo: "CCIT FTUI",
        endereco: "Fakultas Teknik Universitas Indonesia",
        iconCodePoint: 0xe0af,
        latitude: -6.362129,
        longitude: 106.824924,
      ),
      EnderecoModel(
        titulo: "Rumah Ku",
        endereco: "Jl. Srengseng Sawah No.3",
        iconCodePoint: 0xe88a,
        latitude: -6.348947,
        longitude: 106.819946,
      ),

      EnderecoModel(
        titulo: "Kantor",
        endereco: "Jl. Corona campur Covid",
        iconCodePoint: 0xe0af,
        latitude: -6.3521101,
        longitude: 106.8160399,
      ),
    ];
  }
}