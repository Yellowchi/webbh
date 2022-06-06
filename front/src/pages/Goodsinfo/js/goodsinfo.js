// window.onload = function(){
//     var plus = document.getElementById("plus");
//     var i = document.getElementById("text").value;
//     var reduce = document.getElementById("reduce");
//     plus.onclick = function(){
//         i++;
//         document.getElementById("text").value = i;
//     }
//     reduce.onclick = function(){
//         if (i>0) {
//             i--;
//             document.getElementById("text").value = i;
//         } else{
//             i=0;
//             document.getElementById("text").value = i;
//         }
//     }
// }

export function info(){
    var ininfo=document.getElementById("ininfo");
    var indata=document.getElementById("indata");
    var incomment=document.getElementById("incomment");

    var info=document.getElementById("info");
    var data=document.getElementById("data");
    var comment=document.getElementById("comment");
    info.className="bright";
    data.className="";
    comment.className="";

    ininfo.className="show";
    indata.className="noshow ";
    incomment.className="noshow";
}

export function data(){
    var ininfo=document.getElementById("ininfo");
    var indata=document.getElementById("indata");
    var incomment=document.getElementById("incomment");

    var info=document.getElementById("info");
    var data=document.getElementById("data");
    var comment=document.getElementById("comment");
    info.className="";
    data.className="bright";
    comment.className="";

    ininfo.className="noshow";
    indata.className="show ";
    incomment.className="noshow";
}

export function comment(){
    var ininfo=document.getElementById("ininfo");
    var indata=document.getElementById("indata");
    var incomment=document.getElementById("incomment");

    var info=document.getElementById("info");
    var data=document.getElementById("data");
    var comment=document.getElementById("comment");
    info.className="";
    data.className="";
    comment.className="bright";

    ininfo.className="noshow";
    indata.className="noshow ";
    incomment.className="show";
}
