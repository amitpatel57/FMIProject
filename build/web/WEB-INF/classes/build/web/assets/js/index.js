function preload() {
    var timer = 0;
    var main_container=document.getElementById("main_container");
    var preloader=document.getElementById("preloader");
            setInterval(()=>{
            timer++;
            if (timer == 1) {
main_container.classList.remove("d-none");
preloader.classList.add("d-none");

ScrollReveal({
    reset: true,
    distance: '100px',
    duration: 1000,
    delay: 400,
});
ScrollReveal().reveal('.fs-21', {origin: 'bottom'});
ScrollReveal().reveal('.fs-15', {delay: 500, origin: 'bottom'});
ScrollReveal().reveal('.footer_content', {origin: 'left', interval: 200});
ScrollReveal().reveal('.button2', {delay: 600, origin: 'bottom'});
ScrollReveal().reveal('.fs-1', {origin: 'bottom'});
ScrollReveal().reveal('.icon', {delay: 500, origin: 'left', interval: 200});
ScrollReveal().reveal('.about_text', {origin: 'left'});
ScrollReveal().reveal('.about_img', {origin: 'right'});
ScrollReveal().reveal('.specialities_section', {origin: 'left', interval: 200});
ScrollReveal().reveal('.card', {origin: 'bottom', interval: 200});
//console.log("hello");
                }
            }
            , 1000);

}

function show_click_call() {
//    alert("hello");
    let page = document.getElementById("click_call");
    let b = document.querySelector("body");
    let n = document.querySelector("#nav_bar");
    b.classList.toggle("overflow_hidden");
    page.classList.toggle("d-none");
    n.classList.toggle("d-none");
}

