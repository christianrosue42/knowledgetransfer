This project is a Spring Boot application with a GraphQL endpoint. Here are the main components:

Entities:

Book and Author are JPA entities that represent tables in your database.
Book has fields like id, name, pageCount, and a reference to an Author.
Author has fields like id, firstName, lastName, and a list of Books.

Repositories:

BookRepository and AuthorRepository are interfaces that extend JpaRepository to perform CRUD operations on Book and Author entities.

Service Layer:

BookService contains business logic for fetching books and authors.
Methods like findBooksByAuthor and findAllAuthors use repositories to get data from the database.

GraphQL Resolver:

BookResolver implements GraphQLQueryResolver and defines methods to handle GraphQL queries.
Methods in BookResolver call BookService to fetch data and return it as GraphQL responses.
Configuration:

application.properties contains configurations for the Spring Boot application, including database connection settings and GraphQL settings.
schema.graphqls defines the GraphQL schema, including types like Book and Author and queries like books and authors.