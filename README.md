# Art Museum Database Management Application

## Project Description

This project is an Art Museum Database Management Application developed as part of the ENSF 300 course for the Fall 2022 term. The goal of this application is to provide an efficient and user-friendly system for managing the museum's art objects, exhibitions, and user accounts.

### Art Objects Management
- The application allows museum staff to add detailed information about each art object, including its unique ID, artist (if known), creation year (if known), title, description, and more.
- Art objects are categorized based on their type, such as painting, sculpture, statue, or other.
- Each category has its own set of attributes. For example, a painting has paint type, material, and style, while a sculpture has material, height, weight, and style.
- Art objects are further categorized as either part of the permanent collection or borrowed. For permanent collection items, details like date acquired, status (on display, on loan, or stored), and cost are recorded. For borrowed items, information includes the collection it was borrowed from, date borrowed, and date returned.
- Information about the country or culture of origin and the epoch (Renaissance, Modern, Ancient, etc.) is captured for each art object.

### Artist Information
- The application stores information about artists, including their name, birthdate (if known), date of death (if applicable), country of origin, epoch, main style, and description.

### Exhibition Management
- The museum hosts various exhibitions, each with a unique name, start date, and end date. The application associates art objects with the exhibitions during which they were on display.

### Collection Information
- Information about different collections that the museum interacts with is recorded. This includes the collection name (unique), type (museum, personal, etc.), description, address, phone number, and current contact person.

### User Management
- The application has user authentication with different access levels:
  - Administrators: Can add, edit, and block users, and make changes to the database structure.
  - Data Entry Users: Can add and modify data in the database.
  - End Users: Can browse the museum's offerings.

### Application Features
- The application provides a command-line interface for user interaction.
- Users can log in with their credentials to access their respective functionalities.
- Administrators can perform SQL commands, execute SQL script files, and manage users.
- Data entry users can perform data lookup, insert new data, and update or delete existing data.
- End-users can browse the database content through a user-friendly menu.

## Getting Started

To get started with this application:

1. Clone this repository to your local machine.
2. Set up a MySQL database and execute the provided SQL script to create the database schema.
3. Install the required Python packages listed in the `requirements.txt` file.
4. Run the Python application to access the different interfaces based on your user role.

## Contributors
- Ethan Bensler   Email: ethan.bensler@ucalgary.ca
- Liam Brennan    Email: liam.brennan@ucalgary.ca
- Andrew Duong    Email: andrew.duong@ucalgary.ca
- Joseph Duong    Email: joseph.duong@ucalgary.ca

## Distribution
- EERD : Joseph & Andrew
- Relational Model : Liam
- SQL Database creation script : Ethan & Joseph
- SQL Queries : Ethan & Andrew
- SQL Data insertion script : Ethan & Liam & Joseph
- User Access Code : Joseph & Liam
- Code Functions : ALL

## Feedback and Contributions

If you have suggestions for improvements or encounter any issues, please feel free to contribute or open an issue in this repository. Your feedback is valuable in enhancing this museum database management application.
