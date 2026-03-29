# CSK Fan Page

This is a full-stack web application developed for fans of Chennai Super Kings (CSK). The application presents information about the history of CSK, achievements of iconic players, and details of the 2026 squad. It is built using a modern web development stack with a clear separation between frontend, backend, and database layers.

---

## Tech Stack

### Frontend

* React.js

### Backend

* Spring Boot (developed using IntelliJ IDEA)
* RESTful APIs

### Database

* MySQL (XAMPP)
* Database Name: `ipl`

---

## Project Structure

```
CSK-FAN-PAGE/
├── frontend/        # React application
├── backend/         # Spring Boot application
├── database/        # SQL file
└── README.md
```

---

## Setup Instructions

### 1. Clone the Repository

```
git clone https://github.com/ABSTERGO1706/ShadowFox.git
cd ShadowFox
```

---

### 2. Database Setup (MySQL using XAMPP)

1. Open XAMPP Control Panel
2. Start MySQL
3. Open phpMyAdmin
4. Create a database named:

```
ipl
```

5. Import the SQL file available in the `database/` folder

---

### 3. Backend Setup (Spring Boot)

```
cd backend
```

Update the `application.properties` file:

```
spring.datasource.url=jdbc:mysql://localhost:3306/ipl?useSSL=false&serverTimezone=UTC
spring.datasource.username=root
spring.datasource.password=

```

Run the backend:

```
mvn spring-boot:run
```

The backend will be available at:

```
http://localhost:8080
```

---

### 4. Frontend Setup (React)

```
cd frontend
npm install
npm run dev
```

The frontend will be available at:

```
http://localhost:5173
```

---

## Features

* Displays the history of Chennai Super Kings
* Highlights achievements of iconic CSK players
* Provides details of the CSK 2026 squad
* Full-stack integration between frontend, backend, and database
* Responsive user interface

---

## API Overview

The frontend communicates with backend REST APIs.

Example endpoints:

```
GET /players
GET /icons
GET /players_achievements
GET /timeline
```

---

## Important Notes

* Do not upload sensitive files such as:

  * `.env`
  * `application.properties` with actual credentials

* It is recommended to use a sample configuration file for sharing.

---

## Author

Hari Roshan BG
GitHub: https://github.com/ABSTERGO1706

---

## Future Improvements

* Implement search functionality for players
* Add match statistics and analytics
* Enhance UI/UX design
* Introduce authentication and user features

---

## License

This project is intended for educational and portfolio purposes.
