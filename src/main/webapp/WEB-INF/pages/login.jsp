<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="includes/header.jsp"/>

<body>

<jsp:include page="includes/topmenu.jsp"/>

<div id="mainPanel" class="container">
    <c:if test="${action eq 'register'}">
        <div class="alert alert-info">
            <fmt:message key="tatami.register.msg"/>
        </div>
    </c:if>
    <c:if test="${action eq 'registerFailure'}">
        <div class="alert alert-error">
            <fmt:message key="tatami.register.msg.error"/>
        </div>
    </c:if>
    <c:if test="${action eq 'loginFailure'}">
        <div class="alert alert-error">
            <fmt:message key="tatami.authentification.error"/>
        </div>
    </c:if>
    <c:if test="${action eq 'lostPassword'}">
        <div class="alert alert-info">
            <fmt:message key="tatami.lost.password.msg"/>
        </div>
    </c:if>
    <c:if test="${action eq 'lostPasswordFailure'}">
        <div class="alert alert-error">
            <fmt:message key="tatami.lost.password.msg.error"/>
        </div>
    </c:if>

    <div class="row">
        <div class="hero-unit">
            <h1><fmt:message key="tatami.presentation"/></h1>
            <p>
                [<a href="/tatami/presentation"><fmt:message key="tatami.presentation.moreinfo"/></a>]
            </p>
        </div>
    </div>

    <div class="row">
        <div class="alert alert-discuss">
            <h4><fmt:message key="tatami.beta.alert"/></h4>
        </div>
    </div>
    <div class="row">
        <div class="span4">
            <div class="row-fluid">
                <h1>Authentification</h1>

                <form action="/tatami/authentication" method="post" accept-charset="utf-8" id="loginForm" class="well">
                    <fieldset class="row-fluid">
                        <div class="controle-group">
                            <label>
                                <fmt:message key="tatami.login"/> :
                            </label>
                            <input id="j_username" name="j_username" type="email" required="required" autofocus
                                   class="span12" placeholder="Your e-mail..."/>
                        </div>
                        <div class="controle-group">
                            <label>
                                <fmt:message key="tatami.password"/> :
                            </label>
                            <input id="j_password" name="j_password" type="password" required="required"
                                   class="span12" placeholder="Your password..."/>
                        </div>
                        <div class="controle-group">
                            <fmt:message key="tatami.remember.password.time"/> :
                            <input id="_spring_security_remember_me" name="_spring_security_remember_me"
                                   type="checkbox"/>
                        </div>
                        <div class="controle-group">
                            <button type="submit" class="span12 btn btn-success" id="loginButton">
                                <fmt:message key="tatami.authentificate"/>
                            </button>
                        </div>
                    </fieldset>
                </form>

            </div>
        </div>

        <div class="span8">
            <div class="row-fluid">
                <h1>This is an example !</h1>

                <p>
                    This examples shows you how you can customize the login page in order to match your
                    custom instance of tatami.
                </p>
                <p>
                    For example you might use an internal ldap for authentication (or even an internal SSO solution).
                    In that case you'll probably want to remove some features from the login page :
                    <ul>
                        <li>account creation</li>
                        <li>password reset</li>
                        <li>openId login</li>
                        <li>etc.</li>
                    </ul>

                </p>
                <p>You can do this be copying simply copying login.jsp to tatamiCustomization and modify it
                there. This customized login page will be used instead of the original one.</p>
            </div>
        </div>


	<div id="modalTimeoutWindow" class="modal hide fade">
	  <div class="modal-header">
	    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	    <h3><fmt:message key="tatami.login.modal.timeout.title"/></h3>
	  </div>
	  <div class="modal-body">
	    <p><fmt:message key="tatami.login.modal.timeout.message" /></p>
	  </div>
	  <div class="modal-footer">
	    <a href="#" class="btn" data-dismiss="modal" aria-hidden="true"><fmt:message key="tatami.login.modal.timeout.close" /></a>
	  </div>
	</div>
    <jsp:include page="includes/footer.jsp"/>

    <script type="text/javascript">
    var urlParams = {};
    var actions = new Array({
			name:'timeout',
			exec: function() {
				$('#modalTimeoutWindow').modal({
					  keyboard: true,
					  show: true
				});
			}
		});

    $(function() {
        var match,
        pl     = /\+/g,  // Regex for replacing addition symbol with a space
        search = /([^&=]+)=?([^&]*)/g,
        decode = function (s) { return decodeURIComponent(s.replace(pl, " ")); },
        query  = window.location.search.substring(1);

        while (match = search.exec(query)) {
          urlParams[decode(match[1])] = decode(match[2]);
        }
    
        for (var i = 0; i < actions.length; i++) {
	  	  if (urlParams[actions[i].name] != null) {
		  	actions[i].exec();
		  }
        }
	});
    </script>
</body>
</html>
