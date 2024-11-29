function nav_click(element) {
        element.classList.toggle("fa-bars");
        element.classList.toggle("fa-xmark");
        let col_2=document.getElementById("col_2");
        let col_12=document.getElementById("col_10");
        let nav_item=document.querySelectorAll(".nav_item");
        col_2.classList.toggle("col-sm-2");
        col_2.classList.toggle("col-sm-1");
        col_10.classList.toggle("col-sm-10");
        col_10.classList.toggle("col-sm-11");
        for(let item of nav_item){
            item.classList.toggle("d-none");
        }       
    }