 Quarkus RBAC Demo Project README

Quarkus RBAC Demo Project
=========================

This project is a simple demonstration of Role-Based Access Control (RBAC) in a Quarkus application using the `quarkus-elytron-security-properties-file` extension. The application defines three roles: `ADMIN`, `AUTHOR`, and `USER`, each with different access rights to various API endpoints.

Getting Started
---------------

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

You need the following installed on your system:

*   Java 11 or newer
*   Maven 3.8.1 or newer
*   Quarkus CLI

### Installation

Follow these steps to get your development environment set up:

1.  Clone the repository to your local machine:
    
        git clone https://github.com/yourusername/rbac-v1.git
    
2.  Navigate to the project directory:
    
        cd rbac-v1
    
3.  Start the application in dev mode that enables live coding using:
    
        quarkus dev
    

### Running the Tests

To run the tests, execute:

    ./mvnw test

### Deployment

To deploy this project on a live system, compile the application into a runnable JAR file using:

    ./mvnw package

### Built With

*   [Quarkus](https://quarkus.io/) - The Java Framework used
*   [Maven](https://maven.apache.org/) - Dependency Management

### Security

The application uses `quarkus-elytron-security-properties-file` extension to handle security. User credentials and roles are defined in `src/main/resources/test-users.properties` and `src/main/resources/test-roles.properties`.

### Authors

**Your Name** - Initial work - [YourUsername](https://github.com/yourusername)

### License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

### Acknowledgments

*   Hat tip to anyone whose code was used
*   Inspiration
*   etc