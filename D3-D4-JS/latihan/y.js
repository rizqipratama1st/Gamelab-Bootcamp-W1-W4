var text = "";
for (var x = 10; x > 0; x--) {
  text += x + " ";
}
console.log(text);

var text = "";
for (var x = 0; x < 5; x++) {
  for (var y = 0; y <= x; y++) {
    text += "*";
  }
  text += "\n";
}
console.log(text);
