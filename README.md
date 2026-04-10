# Job Portal Web Application

## 📌 Overview

This is a web-based Job Portal application developed using **ASP.NET MVC 4**, **Entity Framework**, and **SQL Server**. The system provides a platform for employers to post job opportunities and for job seekers to search and apply for jobs.

The application supports three types of users:

* **Admin**
* **Employer**
* **Job Seeker**

---

## 🚀 Features

### 👨‍💼 Admin

* Manage users (Employers & Job Seekers)
* Monitor job postings
* Oversee applications and system activities

---

### 🏢 Employer

* Register and create an employer profile
* Post new job openings
* View applications submitted for posted jobs
* Shortlist candidates
* Call candidates for interviews

---

### 👤 Job Seeker

* Register and create a profile
* Create and manage resumes
* Browse available job listings
* Apply for jobs
* Track application status

---

## 🛠️ Technologies Used

* **Frontend:** HTML, CSS, JavaScript, Bootstrap
* **Backend:** ASP.NET MVC 4 (C#)
* **ORM:** Entity Framework
* **Database:** SQL Server
* **IDE:** Visual Studio

---

## 🗂️ Project Structure

* **Controllers** – Handles user requests and application logic
* **Models** – Represents application data and business rules
* **Views** – UI components rendered to users
* **DAL / EF Context** – Database interaction using Entity Framework

---

## ⚙️ Setup Instructions

### Prerequisites

* Visual Studio (2013 or later recommended)
* SQL Server
* .NET Framework 4.5 or above

---

### Installation Steps

1. Clone or download the repository
2. Open the solution file (`.sln`) in Visual Studio
3. Restore NuGet packages
4. Configure the database connection string in `Web.config`
5. Run database migrations (if applicable) or update database
6. Build and run the application

---

## 🔑 User Roles & Access

| Role       | Permissions                    |
| ---------- | ------------------------------ |
| Admin      | Full system control            |
| Employer   | Post jobs, manage applications |
| Job Seeker | Apply for jobs, manage resume  |

---

## 📄 Database

* Uses **Code First / Database First (depending on your implementation)**
* Main entities include:

  * Users
  * Jobs
  * Applications
  * Resumes

---

## 🔒 Authentication & Authorization

* Role-based authentication
* Separate dashboards for each user type

---

## 📈 Future Improvements

* Upgrade to ASP.NET Core
* Add email notifications for job applications
* Implement advanced job search filters
* Add file upload for resumes (PDF/Word)
* Improve UI/UX

---

## 📧 Contact

For any queries or support, please contact the project maintainer.

---

## 📝 License

This project is for educational purposes and can be modified as needed.

