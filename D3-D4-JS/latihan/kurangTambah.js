function jumlahDigit(aw)
{
    let ab = aw - 1;
    if (ab > 0)
    {
        return aw + jumlahDigit(ab);
    }
    return 1
}

console.log(jumlahDigit(5));

