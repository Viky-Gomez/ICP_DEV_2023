// Realizado por: Viktoria Gómez Aguilera y Brayan Domínguez Saucedo.
import Float "mo:base/Float";

// Función para convertir un valor a distintas longitudes.
actor {
  public query func convertirLongitud(
    value: Float, // cantidad a convertir.
    fromUnit: Text, // longitud de la cual se desea hacer la conversión.
    toUnit: Text) // lognitud a la que se desea convertir.
    : async Text {
    let conversionFactor = switch (fromUnit, toUnit) {
      case ("cm", "m") { 0.01 };
      case ("km", "m") { 1000.0 };
      case ("m", "cm") { 100.0 };
      case ("m", "km") { 0.001 };
      case("cm", "in") { 0.3937 };
      case("cm", "mm") { 10.0 };
      case("ft", "m") { 0.3048 };
      case("in", "cm") { 2.54 };
      case("in", "m") { 0.0254 };
      case("m", "ft") { 3.281 };
      case("mm", "cm") { 0.1 };
      case("mm", "m") { 0.001 };
      case ("km", "ft") { 3280.84 };
      // En caso de pedir una conversión que no se encuentre declarado, nos indicará el caso de excepción.
      case _ { return "Las unidades ingresadas no son posibles de convertir.\n Intenta con otra."; };
    };
    let valorConvertido = value * conversionFactor;
    return Float.toText(valorConvertido) # " " # toUnit;
  };
};