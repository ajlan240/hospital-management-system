<%@ page import="java.sql.Connection" %>
<%@ page import="com.db.DbConnect" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
<%@include file="component/all_css.jsp"%>
    <style type="text/css">
        .paint-card {
            box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>
<%@include file="component/navbar.jsp"%>

        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="img/wallpaper-1.jpg" class="d-block w-100" alt="..." height="650px">
        </div>
        <div class="carousel-item">
            <img src="img/hos-wp-1.jpg" class="d-block w-100" alt="..." height="650px">
        </div>
        <div class="carousel-item">
            <img src="img/wallpaper-3.jpg" class="d-block w-100" alt="..." height="650px">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>

<div class="container p-3">
    <p class="text-center fs-2">Key features of our hospital</p>
    <div class="row">
        <div class="col-md-8 p-5">
            <div class="row">
                <div class="col-md-6">
                    <div class="card paint-card">
                        <div class="card-body">
                            <p class="fs-5">100% Safety</p>
                            <p>Lorem ipsum   hfbdo dohfby hfbyd9ob dsoyfgdybfd  ydhfyd dfhbn</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card paint-card">
                        <div class="card-body">
                            <p class="fs-5">100% Safety</p>
                            <p>Lorem ipsum   hfbdo dohfby hfbyd9ob dsoyfgdybfd  ydhfyd dfhbn</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card paint-card">
                        <div class="card-body">
                            <p class="fs-5">100% Safety</p>
                            <p>Lorem ipsum   hfbdo dohfby hfbyd9ob dsoyfgdybfd  ydhfyd dfhbn</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card paint-card">
                        <div class="card-body">
                            <p class="fs-5">100% Safety</p>
                            <p>Lorem ipsum   hfbdo dohfby hfbyd9ob dsoyfgdybfd  ydhfyd dfhbn</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4" style="justify-content: center">
            <img src="img/Dct-10.png" height="285px" width="250px" style="margin-top: 50px">
        </div>
    </div>
</div>
<hr>
<div class="container p-2">
    <p class="text-center fs-2">Our Team</p>
    <div class="row">
        <div class="col-md-3">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <img src="img/Dct-1.jpg" height="300px" width="250px">
                    <p class="fw-bold fs-5">Dr. David Patel</p>
                    <p class="fs-7">(CEO & Chairman)</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <img src="img/Dct-4.jpg" height="300px" width="250px">
                    <p class="fw-bold fs-5">Dr. Christopher Jhonson</p>
                    <p class="fs-7">(Neurosurgeon & ViceChairman)</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <img src="img/Dct-3.jpg" height="300px" width="250px">
                    <p class="fw-bold fs-5">Dr. Benjamine Scott</p>
                    <p class="fs-7">(Cardiologist)</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <img src="img/Dct-6.png" height="300px" width="250px">
                    <p class="fw-bold fs-5">Dr. Micheal Anderson</p>
                    <p class="fs-7">(Orthopedic Surgeon)</p>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="component/footer.jsp"%>

</body>
</html>
