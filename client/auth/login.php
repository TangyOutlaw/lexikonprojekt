<div id="login-row" class="row justify-content-center align-items-center">
    <div id="login-column" class="col-md-6">
        <div id="login-box" class="col-md-12">
        <div class="msg">

        </div>
            <form id="login-form" class="form">
                <h3 class="text-center text-info">Login</h3>
                <div class="form-group">
                    <label for="username" class="text-info">Username:</label><br>
                    <input type="text" name="username" id="username" class="form-control">
                </div>
                <div class="form-group">
                    <label for="password" class="text-info">Password:</label><br>
                    <input type="password" name="password" id="password" class="form-control">
                </div>
                <div class="form-group">
                    <label for="remember-me" class="text-info"><span>Remember me</span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br>
                    <input type="button" name="submit" class="btn btn-info btn-md" value="login" onclick="login()">
                </div>
                <div id="register-link" class="text-right">
                    <a href="index.php?pg=auth/register.php" class="text-info">Register here</a>
                </div>
            </form>
        </div>
    </div>
</div>
<style>
body {
    margin: 0;
    padding: 0;
    background-color: #fff;
    height: 100vh;
}
#login .container #login-row #login-column #login-box {
    margin-top: 120px;
    max-width: 600px;
    height: 320px;
    border: 1px solid #9C9C9C;
    background-color: #EAEAEA;
}
#login .container #login-row #login-column #login-box #login-form {
    padding: 20px;
}
#login .container #login-row #login-column #login-box #login-form #register-link {
    margin-top: -85px;
}
</style>
<script>
    function login(){
        const formData = new FormData(document.querySelector('form'));
        formData.set('type','login');
        console.log(formData);
        for(let obj of formData)
            console.log(obj);
        fetch('../server/auth.php',{method:'POST',body:formData})
            .then(response => response.text())
            .then(data => {
                console.log(data)
                if(data)
                    location.href = './index.php?pg=fooldal.php'
                else
                document.querySelector('.msg').innerHTML = '<div class="alert-danger">Hibás adat</div>'
            })
    }
</script>