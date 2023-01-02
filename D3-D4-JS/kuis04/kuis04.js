// let star = "";
// for (i = 0; i < 1; i++) {
//   star += "*";
// }

let star2 = "";
for (let x = 1; x <= 5; x++) {
  for (let y = 0; y < 5 - x; y++) {
    star2 += " ";
  }
  for (let z = 0; z < x; z++) {
    star2 += "*";
  }
  star2 += "\n";
}

console.log(star2);
