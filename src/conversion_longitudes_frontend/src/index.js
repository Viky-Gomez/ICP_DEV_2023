import { conversion_longitudes_backend } from "../../declarations/conversion_longitudes_backend";

document.querySelector("form").addEventListener("submit", async (e) => {
  e.preventDefault();

  const button = e.target.querySelector("button");
  const value = parseFloat(document.getElementById("value").value);
  const fromUnit = document.getElementById("fromUnit").value;
  const toUnit = document.getElementById("toUnit").value;

  button.setAttribute("disabled", true);

  const result = await conversion_longitudes_backend.convertirLongitud(value, fromUnit, toUnit);

  button.removeAttribute("disabled");

  document.getElementById("result").innerText = result;

  return false;
});
