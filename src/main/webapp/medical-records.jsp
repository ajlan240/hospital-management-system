<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Medical Records | HMS</title>
    <link rel="stylesheet" href="css/medical-records.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
    <div class="logo-details">
        <i class='bx bxs-clinic'></i>
        <span class="logo_name">MediHome</span>
    </div>
    <ul class="nav-links">
        <li><a href="user-dashboard.jsp"><i class='bx bx-grid-alt'></i><span>Dashboard</span></a></li>
        <li><a href="appointment.jsp"><i class='bx bx-calendar'></i><span>Appointments</span></a></li>
        <li><a href="medicalRecords.jsp" class="active"><i class='bx bx-file'></i><span>Medical Records</span></a></li>
        <li><a href="#"><i class='bx bx-credit-card'></i><span>Payments</span></a></li>
        <li><a href="user-profile.jsp"><i class='bx bx-user'></i><span>Profile</span></a></li>
        <li class="logout"><a href="logout"><i class='bx bx-log-out'></i><span>Logout</span></a></li>
    </ul>
</div>

<!-- Main Section -->
<section class="home-section">
    <nav>
        <div class="sidebar-button">
            <i class='bx bx-menu sidebarBtn'></i>
            <span class="dashboard">Medical Records</span>
        </div>
        <div class="profile-details">
            <i class='bx bx-user-circle'></i>
            <span class="admin_name">Welcome, John Doe</span>
        </div>
    </nav>

    <div class="home-content">

        <!-- Success Message -->
        <p class="success-msg">Medical record added successfully!</p>

        <h2 class="page-title">Upload New Medical Record</h2>
        <div class="record-form">
            <form>
                <div class="form-group">
                    <label for="recordType">Record Type</label>
                    <select id="recordType" name="recordType" required>
                        <option value="">-- Choose Record Type --</option>
                        <option value="Prescription">Prescription</option>
                        <option value="Lab Report">Lab Report</option>
                        <option value="Scan Report">Scan Report</option>
                        <option value="Discharge Summary">Discharge Summary</option>
                        <option value="Other">Other</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="recordDate">Date</label>
                    <input type="date" id="recordDate" name="recordDate" required>
                </div>

                <div class="form-group">
                    <label for="recordFile">Upload File</label>
                    <input type="file" id="recordFile" name="recordFile" accept=".pdf,.jpg,.jpeg,.png" required>
                </div>

                <button type="submit" class="btn-primary">Upload Record</button>
            </form>
        </div>

        <h2 class="page-title">Your Medical Records</h2>
        <div class="table-container">
            <table class="styled-table">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Type</th>
                    <th>Date</th>
                    <th>File</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>Prescription</td>
                    <td>2025-10-25</td>
                    <td><a href="#" class="file-link">View</a></td>
                    <td><a href="#" class="delete-btn">Delete</a></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Lab Report</td>
                    <td>2025-09-12</td>
                    <td><a href="#" class="file-link">View</a></td>
                    <td><a href="#" class="delete-btn">Delete</a></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Scan Report</td>
                    <td>2025-08-20</td>
                    <td><a href="#" class="file-link">View</a></td>
                    <td><a href="#" class="delete-btn">Delete</a></td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Discharge Summary</td>
                    <td>2025-07-18</td>
                    <td><a href="#" class="file-link">View</a></td>
                    <td><a href="#" class="delete-btn">Delete</a></td>
                </tr>
                </tbody>
            </table>
        </div>

    </div>
</section>
</body>
</html>
