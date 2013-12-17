<%@include file="../templates/header.jsp" %>
<div id="fb-root"></div>
<script>
    window.fbAsyncInit = function () {
        FB.init({
            appId: '186083781592678',
            status: true, // check login status
            cookie: true, // enable cookies to allow the server to access the session
            xfbml: true  // parse XFBML
        });

        FB.Event.subscribe('auth.authResponseChange', function (response) {
            if (response.status === 'connected') {
                testAPI();
            } else {
                FB.login(function (response) {
                }, {scope: 'email'});
            }
        });
    };

    // Load the SDK asynchronously
    (function (d) {
        var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
        if (d.getElementById(id)) {
            return;
        }
        js = d.createElement('script');
        js.id = id;
        js.async = true;
        js.src = "//connect.facebook.net/en_US/all.js";
        ref.parentNode.insertBefore(js, ref);
    }(document));

    // Here we run a very simple test of the Graph API after login is successful.
    // This testAPI() function is only called in those cases.
    function testAPI() {
        console.log('Welcome!  Fetching your information.... ');
        FB.api('/me', function (response) {
            console.log('Good to see you, ' + response.name + '.');
        });
    }
</script>

<!--
Below we include the Login Button social plugin. This button uses the JavaScript SDK to
present a graphical Login button that triggers the FB.login() function when clicked. -->

<div class="panel panel-primary">
    <div class="panel-body">
        <fb:login-button show-faces="true" width="200" max-rows="1"/>
    </div>
</div>


<%@include file="../templates/footer.jsp" %>