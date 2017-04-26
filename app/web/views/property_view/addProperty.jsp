<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Real estate agency - Add Property</title>
    <jsp:include page="../html_head_common.jsp" />
</head>
<body>
<div class="wrapper">
    <jsp:include page="../header.jsp" />
    <div class="content">
        <h1>Add property page</h1>
        <div class="property-form-wrapper">
            <form id="property-form" method="post" action="/addProperty">
                <table>
                    <tr>
                        <td width="30%">Property Type:</td>
                        <td>
                            <select id="propertyType" class="property-form-input" name="type">
                                <c:forEach var="item" items="${types}">
                                    <option>${item}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>City:</td>
                        <td><input id="cityInput" type="text" class="property-form-input" name="city"/></td>
                    </tr>
                    <tr>
                        <td>Street:</td>
                        <td><input id="streetInput" type="text" class="property-form-input" name="street"/></td>
                    </tr>
                    <tr>
                        <td>House number:</td>
                        <td><input id="houseNumberInput" type="number" class="property-form-input" name="houseNumber"/></td>
                    </tr>
                    <tr>
                        <td>Flat number:</td>
                        <td><input id="flatNumberInput" type="number" class="property-form-input" name="flatNumber"/></td>
                    </tr>
                    <tr>
                        <td>Rooms count:</td>
                        <td><input id="roomsCountInput" type="number" class="property-form-input" name="roomsCount"/></td>
                    </tr>
                    <tr>
                        <td>Area:</td>
                        <td><input id="areaInput" type="number" class="property-form-input" name="area"/></td>
                    </tr>
                    <tr>
                        <td>Distance to subway:</td>
                        <td><input id="subwayInput" type="number" class="property-form-input" name="subway"/></td>
                    </tr>
                    <tr>
                        <td>Distance to bus stop:</td>
                        <td><input id="busInput" type="number" class="property-form-input" name="bus"/></td>
                    </tr>
                    <tr>
                        <td>Furniture:</td>
                        <td>
                            <label>
                                <input id="furnitureInput" type="checkbox" class="property-form-checkbox" name="furniture"/>
                                <span class="property-form-checkbox-custom"></span>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>Internet:</td>
                        <td>
                            <label>
                                <input id="internetInput" type="checkbox" class="property-form-checkbox" name="internet"/>
                                <span class="property-form-checkbox-custom"></span>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>TV:</td>
                        <td>
                            <label>
                                <input id="tvInput" type="checkbox" class="property-form-checkbox" name="tv"/>
                                <span class="property-form-checkbox-custom"></span>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>Phone:</td>
                        <td>
                            <label>
                                <input id="phoneInput" type="checkbox" class="property-form-checkbox" name="phone"/>
                                <span class="property-form-checkbox-custom"></span>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>Fridge:</td>
                        <td>
                            <label>
                                <input id="fridgeInput" type="checkbox" class="property-form-checkbox" name="fridge"/>
                                <span class="property-form-checkbox-custom"></span>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>Stove:</td>
                        <td>
                            <label>
                                <input id="stoveInput" type="checkbox" class="property-form-checkbox" name="stove"/>
                                <span class="property-form-checkbox-custom"></span>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>Description:</td>
                        <td><textarea id="descriptionInput" class="property-form-textarea" name="description" rows="6"></textarea></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input id="submitInput" type="submit" class="property-form-button" value="Add"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <jsp:include page="../footer.jsp" />
</div>
</body>
</html>