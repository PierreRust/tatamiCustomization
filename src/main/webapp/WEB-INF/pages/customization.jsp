<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="includes/header.jsp"/>

<body>

<jsp:include page="includes/topmenu.jsp"/>

<div id="mainPanel" class="container">
    <div class="row">

        <div class="offset2 span8 ">
            <h1>Tatami customization</h1>
            <br><br>
        </div>

    </div>
    <div class="row">

        <div class="span4"><img src="/img/presentation_tatami.jpg" height="267" width="400" alt="Tatami"></div>
        <div class="span8">
            <br>
            <p><h2>Adding new pages is simple</h2>
            To add a new page with <a href="http://github.com/PierreRust/tatamiCustomization">tatamiCustomization</a>,
            simply add a jsp file <code>myFile.jsp</code> in <code>WEB-INF/pages</code>.
            It will be available on <a href="/tatami/myFile/">/tatami/myFile/</a>.

            You can then use this new page in your customized top-menu or where-ever you like.
            </p>

        </div>

    </div>
</div>
<br>
<br>
<br>
<br>
<jsp:include page="includes/footer.jsp"/>

</body>
</html>
