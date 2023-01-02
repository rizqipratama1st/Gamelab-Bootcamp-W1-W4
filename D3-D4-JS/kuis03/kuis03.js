// kodisi 1 sesuai 0 tidak

let a = 1;
let b = 1;
let c = 1;

let minLt = 800; //luas tanah
let minLb = 400; //luas bangunan

let kolamRenang = 1;
let parkirLuas = 1;
let kebunBelakang = 1;

function seleksi(k1, k2, k3, k4, k5, k6, k7, k8)
{
 
    if (k1 == a && k2 == b && k3 == c && k4 >= minLt && k5 >=minLb && k6 == 1 && k7 == 1 && k8 == 1  ) 
{
    return console.log("sesuai");
}
else
{
    return console.log("tidak sesuai");
}
}


//sesuai
console.log(seleksi(1, 1, 1, 800, 400, 1, 1,1)); 
//tidak sesuai
console.log(seleksi(1, 1, 1, 800, 400, 1, 1, 1));