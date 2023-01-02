let star = "";
for (i=0; i<1; i++){
    star += "*";
}

let star2 = "";
for (let i = 2; i <= 5; i++) {
  // printing spaces
  for (let j = 0; j < 5 - i; j++) {
    star2 += " ";
  }
  // printing star
  for (let k = 0; k < i; k++) {
    star2 += "*";
  }
  star2 += "\n";
}

console.log(star + "\n" + star2);