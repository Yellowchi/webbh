//增加商品数量按钮
export function add(tr){
    let numid = "num"+tr;
    let num = Number(document.getElementById(numid).value);
    document.getElementById("num"+tr).value=String(num+1);
    total(tr);
}

//减少商品数量按钮
export function minus(tr){
    let numid = "num"+tr;
    let num = Number(document.getElementById(numid).value);
    if(num>1){
        document.getElementById("num"+tr).value=String(num-1);
        total(tr);
    }
}

//价格小计
export function total(tr){
    /*let num = document.getElementById("cart-table").rows[tr].cells[3].getElementsByTagName("input")[0].value;
    let price = document.getElementById("cart-table").rows[tr].cells[2].innerText;
    document.getElementById("cart-table").rows[tr].cells[4].innerHTML=String((num*price).toFixed(2));*/
    document.getElementById("total-price"+tr).innerHTML=String((document.getElementById("price"+tr).innerText*document.getElementById("num"+tr).value).toFixed(2));
}

//价格总计
export function finaltotal(){
    let sum = 0;
    let table = document.getElementById("cart-table");
    for(let i=1;i<table.rows.length;i++){
        if(table.rows[i].cells[0].getElementsByTagName("input")[0].checked){
            sum+=Number(table.rows[i].cells[4].innerText);
        }
    }
    document.getElementById("money").innerText=sum;
}
