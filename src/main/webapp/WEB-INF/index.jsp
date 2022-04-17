<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.Date" %>
    <!-- Here we have to import the Date class. -->
    <!-- You will put the import in the first line of the jsp tag. Use the import attribute -->

    <!-- c:out ; c:forEach ; c:if -->
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!-- Formatting (like dates) -->
        <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
            <!-- form:form -->
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <!-- for rendering errors on PUT routes -->
                <%@ page isErrorPage="true" %>

                    <!DOCTYPE html>

                    <html>

                    <head>
                        <meta charset="UTF-8" />
                        <title>Craig Burke - Dojos and Ninjas - landing/Dashboard</title>
                        <!-- Bootstrap -->
                        <!-- CSS only -->
                        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
                            rel="stylesheet"
                            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                            crossorigin="anonymous" />
                        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
                            integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
                            crossorigin="anonymous"></script>
                        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
                            integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
                            crossorigin="anonymous"></script>
                        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
                        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
                        <link rel="stylesheet" type="text/css" href="/css/style.css">
                    </head>

                    <body>
                        <!-- Buttons -->
                        <div class="container w-75">
                            <!-- == Delete button == -->
                            <!-- <p class="w-100"></p>
                            <a class="btn btn-danger float-end mb-3 me-3" href="/lookify/delete/${song.id}">Delete</a>
                            <p class="w-100"></p> -->
                            <!-- == Update button == -->
                            <!-- <p class="w-100"></p>
                            <a class="btn btn-warning float-end mb-3 me-3" href="/lookify/newSong">Create Song</a>
                            <p class="w-100"></p> -->
                            <!-- == Top Ten button == -->
                            <!-- <p class="w-100"></p>
                            <a class="btn btn-success float-end mb-3 me-3" href="/lookify/topTen">Top Ten</a>
                            <p class="w-100"></p> -->
                            <!-- == ShowOne button == -->
                            <!-- <p class="w-100"></p>
                            <a class="btn btn-success float-end mb-3 me-3" href="/lookify/showSong">Show Song</a>
                            <p class="w-100"></p> -->
                            <!-- == Search button == -->
                            <!-- <p class="w-100"></p>
                            <a class="btn btn-primary float-end mb-3 me-3" href="/lookify/search">Search</a>
                            <p class="w-100"></p> -->
                            <!-- == Create Ninja button == -->
                            <p class="w-100"></p>
                            <a class="btn btn-success float-end mb-3 me-3" href="/dojos/newNinja">Create Ninja</a>
                            <p class="w-100"></p>
                            <!-- == Create Dojo button == -->
                            <p class="w-100"></p>
                            <a class="btn btn-warning float-end mb-3 me-3" href="/dojos/newDojo">Create Dojo</a>
                            <p class="w-100"></p>

                        </div>

                        <!-- Beginning of Container -->
                        <div class="container text-center mt-5">

                            <div>
                                <h1 class="bg-primary text-light ps-5">Welcome to Dojos and Ninjas</h1>
                                <h3 class="bg-primary text-light ps-5">List of Dojos</h3>
                            </div>
                            <p class="w-100"></p>



                            <!-- SCROLLING FROM BOOTSTRAP -->

                            <!-- Custom css that makes this example work like it does: -->
                            <!--   <style type="text/css">
                                .scrollspy-example {
                                    position: relative;
                                    height: 400px;
                                    margin-top: .5rem;
                                    overflow: auto;
                                }
                            </style> -->
                            <nav id="navbar-scrollspy" class="navbar navbar-light bg-light px-1">
                                <table class="table table-striped p-2 border border-2">
                                    <thead>
                                        <tr>
                                            <th scope="col" class="h4 text-center">Dojo</th>
                                            <!-- <th scope="col" class="h4 text-center">Brand</th>
                                            <th scope="col" class="h4 text-center">Rating</th>
                                            <th scope="col" class="h4 text-center">Price</th> -->
                                            <th scope="col" class="h4 text-center">Actions</th>
                                        </tr>
                                    </thead>
                                </table>
                            </nav>
                            <div data-bs-spy="scroll" data-bs-target="#navbar-scrollspy" data-bs-offset="0" tabindex="0"
                                class="scrollspy-example">
                                <table class="table table-striped p-2 border border-2">
                                    <tbody>
                                        <c:forEach var="dojo" items="${dojos}">
                                            <tr>
                                                <td scope="row">
                                                    <a href="/dojos/showOneDojo/${dojo.id}">

                                                        <c:out value="${dojo.name}"></c:out>

                                                    </a>
                                                </td>

                                                <td scope="row">
                                                    <p class="text-center">
                                                        <a href="/dojos/showOneDojo/${dojo.id}">view</a>
                                                        <!-- <span> | </span>
                                                        <a href="/dojos/updateDojo/${dojo.id}">edit</a> -->
                                                        <!-- <span> | </span>
                                                        <a href="/dojos/deleteDojo/${dojo.id}">delete</a> -->
                                                    </p>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <!-- end of scrolling table -->



                            <p class="w-100"></p>

                            <!-- End of Container -->
                        </div>

                    </body>

                    </html>