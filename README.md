# Doubt Solving Portal (DSP)

DSP (Doubt Solving Portal) is a web application built using PHP and MySQL. It provides a platform for students to ask questions, get answers from faculty members, and engage in collaborative learning. The project aims to facilitate knowledge sharing and provide a seamless experience for users.

## Database

The application utilizes a MySQL database to store information about categories, questions, answers, and user details. Here's an overview of the database schema:

### Tables

1. **category**: Stores information about different categories of questions.
2. **quacat**: Maps questions to their respective categories.
3. **quans**: Contains questions, answers, and related user information.
4. **users**: Stores user details such as username, password, name, email, join date, and roles.

## Roles

DSP has three roles for users:

1. **Student**: Students can ask questions on various topics and view answers provided by faculty members.
2. **Faculty**: Faculty members have the authority to answer questions asked by students.
3. **Admin**: Admins can change user roles.

## Pages

The application consists of several pages, each serving a specific purpose:

1. **Home**: The landing page of the portal, providing an overview and introduction.
2. **Categories**: Displays a list of available question categories.
3. **Contact**: Allows users to get in touch with the support team for any queries or issues.
4. **Ask Question**: Enables students to ask questions and submit them to the portal.
5. **Login**: Provides a login interface for users to access their accounts.
6. **Signup**: Allows new users to create an account on the DSP platform.
7. **Profile**: Displays user-specific information, including activity history and account settings.

## Getting Started

To set up and run the DSP project locally, follow these steps:

1. Clone the repository to your local machine.
2. Change the information in `connect.php`.
3. Import the provided MySQL database schema from `project.sql` file.
4. Configure the database connection in the PHP files as per your local environment.
5. Install PHP and a web server (e.g., Apache) if not already installed.
6. Start the web server and access the project in your browser.

`To login as admin use admin as username and password`
