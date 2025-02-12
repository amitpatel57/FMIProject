<!--Preloader section start-->
<div class="container-fluid" id="preloader">
<div class="row">
    <div class="col-sm-12 p-0" style="overflow:hidden;">
        <div class="d-flex justify-content-center bg-white" style="align-items:center; height:100vh; width:100vw;">
            <div class="spinner" >
                <div></div>   
                <div></div>    
                <div></div>    
                <div></div>    
                <div></div>    
                <div></div>  
                <div></div>  
            </div>
        </div>
    </div>
</div>
</div>
<style>
    .spinner {
        position: relative;
        width: 56px;
        height: 56px;
        animation: spinner-3a5251 1.25s infinite linear;
    }

    .spinner div {
        position: absolute;
        top: 50%;
        left: 50%;
        width: 0;
        height: 0;
        border-left: 3.6px solid transparent;
        border-right: 3.6px solid transparent;
        border-bottom: 10.8px solid #474bff;
        transform-origin: center 10.8px;
    }

    .spinner div:before,
    .spinner div:after {
        content: '';
        position: absolute;
        width: 0;
        height: 0;
        display: block;
        border-left: 10.8px solid transparent;
        border-right: 10.8px solid transparent;
        border-bottom: 7.2px solid #474bff;
    }

    .spinner div:before {
        transform: translate(-10.8px, 7.2px) rotate(35deg);
    }

    .spinner div:after {
        transform: translate(-10.8px, 7.2px) rotate(-35deg);
    }

    .spinner div:nth-child(1) {
        transform: translate(-50%, -10.8px) rotate(51.42857deg) translate(0, 320%);
    }

    .spinner div:nth-child(2) {
        transform: translate(-50%, -10.8px) rotate(102.85714deg) translate(0, 320%);
    }

    .spinner div:nth-child(3) {
        transform: translate(-50%, -10.8px) rotate(154.28571deg) translate(0, 320%);
    }

    .spinner div:nth-child(4) {
        transform: translate(-50%, -10.8px) rotate(205.71429deg) translate(0, 320%);
    }

    .spinner div:nth-child(5) {
        transform: translate(-50%, -10.8px) rotate(257.14286deg) translate(0, 320%);
    }

    .spinner div:nth-child(6) {
        transform: translate(-50%, -10.8px) rotate(308.57143deg) translate(0, 320%);
    }

    .spinner div:nth-child(7) {
        transform: translate(-50%, -10.8px) rotate(360deg) translate(0, 320%);
    }

    @keyframes spinner-3a5251 {
        to {
            transform: rotate(360deg);
        }
    }
</style>
<!--Preloader Section close-->