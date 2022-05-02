<div id="login-row" class="row justify-content-center align-items-center">
    <div id="login-column" class="col-md-6">
        <div id="login-box" class="col-md-12">
            <div class="msg">

            </div>
            <form id="login-form" class="form">
                <h3 class="text-center text-info">Register</h3>
                <div class="form-group">
                    <label for="username" class="text-info">Username:</label><br>
                    <input type="text" name="username" id="username" class="form-control">
                </div>
                <div class="form-group">
                    <label for="email" class="text-info">Email:</label><br>
                    <input type="email" name="email" id="email" class="form-control">
                </div>
                <div>
                    <label for="birth" class="text-info">Birth date:</label><br>
                    <input type="date" name="birth" id="birth">
                </div>
                <div class="form-group">
                    <label for="password" class="text-info">Password:</label><br>
                    <input type="password" name="password" id="password" class="form-control">
                </div>
                <div class="form-group">
                    <label for="repassword" class="text-info">Password:</label><br>
                    <input type="password" name="repassword" id="repassword" class="form-control">
                </div>
                <div class="form-group">
                    <label for="remember-me" class="text-info"><span>Remember me</span><span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br>
                    <input type="button" name="button" class="btn btn-info btn-md" value="register" onclick="register()">
                </div>
                <div id="login-link" class="text-right">
                    <a href="index.php?pg=auth/login.php" class="text-info">Already have an account?</a>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    function register(){
        const formData = new FormData(document.querySelector('form'));
        formData.set('type','register');
        console.log(formData);
        for(let obj of formData)
            console.log(obj);
        fetch('../server/auth.php',{method:'POST',body:formData})
            .then(response => response.text())
            .then(data => {
                console.log(data)
                document.querySelector('.msg').innerHTML = data?
                    '<div class="alert-success">Sikeres regisztráció</div>':  //try-catch sikeres mindig
                    '<div class="alert-danger">Sikertelen regisztráció</div>'
            })
    }
</script>