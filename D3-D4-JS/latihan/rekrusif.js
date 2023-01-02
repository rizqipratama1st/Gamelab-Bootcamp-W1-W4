function perhitunganMenurun(angkaAwal){
    console.log(angkaAwal);

    let angkaBerikutnya = angkaAwal -1;

    if (angkaBerikutnya > 0 )
    {
        perhitunganMenurun(angkaBerikutnya)
    }
    else
    {
        console.log("selesai");
    }
}

perhitunganMenurun(5);