


const main = require('./scripts/deploy');
let con = {}
main().then(async(data)=>{con = data;
console.log(await con.giveValue())})
;
