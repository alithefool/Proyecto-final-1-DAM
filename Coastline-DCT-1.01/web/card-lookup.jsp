<%-- 
    Document   : card-lookup
    Created on : May 13, 2024, 1:30:08 PM
    Author     : cerrchus
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Result</title>
    <link rel="stylesheet" href="css/card-lookup-styles.css">
</head>
<body>

<div class="container">
    <h1>Search Result</h1>
    <div class="search-result">
        <%-- Retrieve the search results list from the session and display it --%>
        <%
            List<String> searchResults = (List<String>) session.getAttribute("searchResults");
            if (searchResults != null && !searchResults.isEmpty()) {
                for (String result : searchResults) {
        %>
                    <p><%= result %></p>
        <%
                }
            } else {
        %>
                <p>No search results found.</p>
        <%
            }
        %>
    </div>
</div>

</body>
</html>
