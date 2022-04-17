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
                        <title>Craig Burke - Dojos and Ninjas - New Ninja</title>
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
                            <!-- <p class="w-100"></p>
                            <a class="btn btn-primary float-end mb-3 me-3" href="/dojos/newNinja">Create Ninja</a>
                            <p class="w-100"></p> -->
                            <!-- == Create Dojo button == -->
                            <p class="w-100"></p>
                            <a class="btn btn-warning float-end mb-3 me-3" href="/dojos/newDojo">Create Dojo</a>
                            <p class="w-100"></p>
                            <!-- == Dashboard button == -->
                            <p class="w-100"></p>
                            <a class="btn btn-primary float-end mb-3 me-3" href="/dojos">Dashboard</a>
                            <p class="w-100"></p>

                        </div>

                        <!-- Beginning of Container -->
                        <div class="container text-center mt-5">

                            <div>
                                <h1 class="bg-primary text-light ps-5">Dojos and Ninjas</h1>
                                <h3 class="bg-primary text-light ps-5">Create a Ninja</h3>
                            </div>
                            <p class="w-100"></p>

                            <!-- New Ninja Form START -->
                            <div
                                class="container bg-secondary text-light rounded-3 w-50 mt-5 border border-info border-5 pb-5 p-3">
                                <form:form action="/dojos/newNinja" method="post" modelAttribute="ninja">



                                    <div class="mb-3">
                                        <p>
                                            <form:label path="firstName" class="float-start">First Name</form:label>
                                            <form:errors path="firstName" class="text-danger h5" />
                                            <form:input path="firstName" class="form-control text-dark"
                                                placeholder="firstName" />
                                        </p>
                                    </div>

                                    <div class="mb-3">
                                        <p>
                                            <form:label path="lastName" class="float-start">Last Name</form:label>
                                            <form:errors path="lastName" class="text-danger h5" />
                                            <form:input path="lastName" class="form-control text-dark"
                                                placeholder="lastName" />
                                        </p>
                                    </div>

                                    <div class="mb-3">
                                        <p>
                                            <form:label path="age" class="float-start">Age:</form:label>
                                            <form:errors path="age" class="text-danger h5" />
                                            <br>
                                            <form:input type="number" step="1" path="age" class="form-control w-25"
                                                placeholder="age" />
                                        </p>
                                    </div>

                                    <div class="mb-3">
                                        <p>
                                            <form:label path="dojo" class="float-start me-2">Dojo:</form:label>
                                            <form:errors path="dojo" class="text-danger h5" />
                                            <form:select path="dojo" class="float-start">

                                                <!-- for each dojo in dojos -->
                                                <c:forEach items="${dojos}" var="dojo">
                                                    <form:option value="${dojo.id}" label="${dojo.name}">
                                                    </form:option> <!-- end of for each -->
                                                </c:forEach>

                                            </form:select>
                                        </p>
                                    </div>

                                    <br>
                                    <br>

                                    <input type="submit" value="Add New Ninja" class="btn btn-warning float-start" />
                                    <!-- == Cancel button == -->
                                    <p class="w-100"></p>
                                    <a class="btn btn-info float-end mb-3" href="/dojos">Cancel</a>
                                    <p class="w-100"></p>

                                </form:form>

                            </div>

                            <!-- New Ninja Form END -->

                            <p class="w-100"></p>

                            <!-- End of Container -->
                        </div>

                    </body>

                    </html>