# Note Taking App

* **Name** : Himanshu Goyal
 * **University** : Indian Institute of Technology (Indian school of mines) , Dhanbad
 * **Department** : Bachelor's of technology in Electrical Engineering
 * **Email** : 20je0420@ee.iitism.ac.in / goyalhimanshu424@gmail.com
 * **Phone** : +91-74129 72658
 * **Addmission Number** : 20JE0420

This is a simple note-taking application built with Ruby on Rails. It provides RESTful API endpoints for user registration, authentication, note management, sharing notes, and version history tracking.

## Features

- User registration (signup) and authentication (login) with JWT tokens
- CRUD operations for notes (Create, Read, Update, Delete)
- Sharing notes with other users
- Tracking version history of notes

## Technologies Used

- Ruby on Rails
- PostgreSQL (as the database)
- bcrypt (for password hashing)
- JWT (for token-based authentication)

## Getting Started

### Prerequisites

- Ruby (version 2.6.3 or higher)
- Rails (version 6.0 or higher)
- PostgreSQL

### Installation

1. Clone the repository:

    ```bash
    git clone <url>
    ```

2. Install dependencies:

    ```bash
    bundle install
    ```

3. Set up the database:

    ```bash
    rails db:create
    rails db:migrate
    ```

### Usage

1. Start the Rails server:

    ```bash
    rails s
    ```

2. Use tools like Postman or cURL to send requests to the API endpoints.

### API Endpoints

- **User Registration**:
  - POST /signup: Create a new user account.
  
- **User Authentication**:
  - POST /login: Log in to the application and get an authentication token.
  
- **Note Management**:
  - POST /notes: Create a new note.
  - GET /notes/:id: Retrieve a specific note by its ID.
  - PUT /notes/:id: Update an existing note.
  - DELETE /notes/:id: Delete a note.
  
- **Sharing Notes**:
  - POST /shared_notes: Share a note with other users.

- **Version History Tracking**:
  - GET /note_versions/:id: Get the version history of a note.

### Testing

- Run the test suite:

    ```bash
    bundle exec rspec
    ```

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request with your improvements.