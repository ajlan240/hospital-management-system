<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>MediHome | Hospital Management System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/index.css">
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm fixed-top">
    <div class="container">
        <a class="navbar-brand fw-bold text-primary" href="#">
            <i class="bi bi-hospital me-2"></i>MediHome
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav align-items-center">
                <li class="nav-item"><a class="nav-link" href="#hero">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="#about">About</a></li>
                <li class="nav-item"><a class="nav-link" href="#services">Services</a></li>
                <li class="nav-item"><a class="nav-link" href="#doctors">Doctors</a></li>
                <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
                <li class="nav-item ms-3">
                    <a href="user-login.jsp" class="btn btn-primary">Login</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- ====== Hero Section ====== -->
<section id="hero" class="hero d-flex align-items-center">
    <div class="container text-center text-white">
        <h1 class="fw-bold mb-3">Welcome to MediHome</h1>
        <p class="lead mb-4">Your trusted Hospital Management System for online appointments, medical records, and care.</p>
        <a href="user-reg.jsp" class="btn btn-light btn-lg text-primary fw-semibold me-2">Register Now</a>
        <a href="user-login.jsp" class="btn btn-outline-light btn-lg">Login</a>
    </div>
</section>

<!-- ====== About Section ====== -->
<section id="about" class="py-5">
    <div class="container">
        <div class="text-center mb-4">
            <h2 class="fw-bold text-primary">About Us</h2>
            <p class="text-muted">Caring for life, every step of the way.</p>
        </div>
        <div class="row align-items-center">
            <div class="col-md-6 mb-4 mb-md-0">
                <img src="https://img.freepik.com/free-vector/modern-hospital-building_1441-2131.jpg" class="img-fluid rounded-4 shadow-sm" alt="Hospital">
            </div>
            <div class="col-md-6">
                <p class="text-muted fs-5">
                    MediHome simplifies hospital operations and enhances patient care by providing an efficient and user-friendly platform for managing appointments, records, and billing.
                </p>
                <ul class="list-unstyled fs-6 mt-3">
                    <li><i class="bi bi-check-circle-fill text-primary me-2"></i>Online Appointment Booking</li>
                    <li><i class="bi bi-check-circle-fill text-primary me-2"></i>Instant Access to Medical Reports</li>
                    <li><i class="bi bi-check-circle-fill text-primary me-2"></i>Secure Patient Data Management</li>
                </ul>
            </div>
        </div>
    </div>
</section>

<!-- ====== Services Section ====== -->
<section id="services" class="py-5 bg-light">
    <div class="container text-center">
        <h2 class="fw-bold text-primary mb-4">Our Services</h2>
        <div class="row g-4">
            <div class="col-md-4">
                <div class="service-card p-4 shadow-sm rounded-4 bg-white">
                    <i class="bi bi-calendar2-check display-4 text-primary mb-3"></i>
                    <h5>Online Appointments</h5>
                    <p class="text-muted">Book and manage appointments easily through our online portal.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="service-card p-4 shadow-sm rounded-4 bg-white">
                    <i class="bi bi-file-earmark-medical display-4 text-success mb-3"></i>
                    <h5>Medical Records</h5>
                    <p class="text-muted">Access your medical history, prescriptions, and lab reports anytime.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="service-card p-4 shadow-sm rounded-4 bg-white">
                    <i class="bi bi-cash-stack display-4 text-warning mb-3"></i>
                    <h5>Billing & Payments</h5>
                    <p class="text-muted">Pay hospital bills securely online with multiple payment options.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- ====== Doctors Section ====== -->
<section id="doctors" class="py-5">
    <div class="container text-center">
        <h2 class="fw-bold text-primary mb-4">Our Doctors</h2>
        <div class="row g-4">
            <div class="col-md-4">
                <div class="doctor-card bg-white p-4 rounded-4 shadow-sm">
                    <img src="https://img.freepik.com/free-photo/portrait-smiling-doctor-with-stethoscope_23-2147896197.jpg" class="rounded-circle mb-3" width="120" height="120" alt="Doctor">
                    <h5>Dr. John Smith</h5>
                    <p class="text-muted">Cardiologist</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="doctor-card bg-white p-4 rounded-4 shadow-sm">
                    <img src="https://img.freepik.com/free-photo/portrait-handsome-young-doctor_144627-37956.jpg" class="rounded-circle mb-3" width="120" height="120" alt="Doctor">
                    <h5>Dr. Sarah Lee</h5>
                    <p class="text-muted">Neurologist</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="doctor-card bg-white p-4 rounded-4 shadow-sm">
                    <img src="https://img.freepik.com/free-photo/portrait-young-doctor-with-stethoscope_23-2147896176.jpg" class="rounded-circle mb-3" width="120" height="120" alt="Doctor">
                    <h5>Dr. Ahmed Khan</h5>
                    <p class="text-muted">Pediatrician</p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- ====== Contact Section ====== -->
<section id="contact" class="py-5 bg-light">
    <div class="container text-center">
        <h2 class="fw-bold text-primary mb-4">Contact Us</h2>
        <p class="text-muted mb-5">Have questions? Get in touch with our support team.</p>

        <div class="row justify-content-center">
            <div class="col-md-6">
                <form>
                    <div class="mb-3">
                        <input type="text" class="form-control form-control-lg" placeholder="Your Name">
                    </div>
                    <div class="mb-3">
                        <input type="email" class="form-control form-control-lg" placeholder="Your Email">
                    </div>
                    <div class="mb-3">
                        <textarea class="form-control form-control-lg" rows="4" placeholder="Message"></textarea>
                    </div>
                    <button class="btn btn-primary btn-lg w-100">Send Message</button>
                </form>
            </div>
        </div>
    </div>
</section>

<!-- ====== Footer ====== -->
<footer class="text-center text-white py-3" style="background:#0d6efd;">
    <p class="mb-0">&copy; 2025 MediHome | All Rights Reserved</p>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
