export function clickbutton_myinfo() {
    document.getElementById("myinfo").classList.add("active");
    document.getElementById("deliveryinfo").classList.remove("active");
    document.getElementById("orderinfo").classList.remove("active");
    document.getElementById("notificationinfo").classList.remove("active");
    document.getElementById("goodsinfo").classList.remove("active");
    document.getElementById("myinfo_table").style.cssText="display:block;";
    document.getElementById("deliveryinfo_table").style.cssText="display:none;";
    document.getElementById("orderinfo_table").style.cssText="display:none;";
    document.getElementById("notificationinfo_table").style.cssText="display:none;";
    document.getElementById("goodsinfo_table").style.cssText="display:none;";

}
export function clickbutton_deliveryinfo() {
    document.getElementById("myinfo").classList.remove("active");
    document.getElementById("deliveryinfo").classList.add("active");
    document.getElementById("orderinfo").classList.remove("active");
    document.getElementById("notificationinfo").classList.remove("active");
    document.getElementById("goodsinfo").classList.remove("active");
    document.getElementById("myinfo_table").style.cssText="display:none;";
    document.getElementById("deliveryinfo_table").style.cssText="display:block;";
    document.getElementById("orderinfo_table").style.cssText="display:none;";
    document.getElementById("notificationinfo_table").style.cssText="display:none;";
    document.getElementById("goodsinfo_table").style.cssText="display:none;";
}
export function clickbutton_orderinfo() {
    document.getElementById("myinfo").classList.remove("active");
    document.getElementById("deliveryinfo").classList.remove("active");
    document.getElementById("orderinfo").classList.add("active");
    document.getElementById("notificationinfo").classList.remove("active");
    document.getElementById("goodsinfo").classList.remove("active");
    document.getElementById("myinfo_table").style.cssText="display:none;";
    document.getElementById("deliveryinfo_table").style.cssText="display:none;";
    document.getElementById("orderinfo_table").style.cssText="display:block;";
    document.getElementById("notificationinfo_table").style.cssText="display:none;";
    document.getElementById("goodsinfo_table").style.cssText="display:none;";
}
export function clickbutton_notificationinfo() {
    document.getElementById("myinfo").classList.remove("active");
    document.getElementById("deliveryinfo").classList.remove("active");
    document.getElementById("orderinfo").classList.remove("active");
    document.getElementById("notificationinfo").classList.add("active");
    document.getElementById("goodsinfo").classList.remove("active");
    document.getElementById("myinfo_table").style.cssText="display:none;";
    document.getElementById("deliveryinfo_table").style.cssText="display:none;";
    document.getElementById("orderinfo_table").style.cssText="display:none;";
    document.getElementById("notificationinfo_table").style.cssText="display:block;";
    document.getElementById("goodsinfo_table").style.cssText="display:none;";
}
export function clickbutton_goodsinfo() {
    document.getElementById("myinfo").classList.remove("active");
    document.getElementById("deliveryinfo").classList.remove("active");
    document.getElementById("orderinfo").classList.remove("active");
    document.getElementById("notificationinfo").classList.remove("active");
    document.getElementById("goodsinfo").classList.add("active");
    document.getElementById("myinfo_table").style.cssText="display:none;";
    document.getElementById("deliveryinfo_table").style.cssText="display:none;";
    document.getElementById("orderinfo_table").style.cssText="display:none;";
    document.getElementById("notificationinfo_table").style.cssText="display:none;";
    document.getElementById("goodsinfo_table").style.cssText="display:block;";
}