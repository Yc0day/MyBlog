>2019.4.20 
 - 操作系统: windows7
 - IDE: visual studio
 - .NET版本：4.6
 - 语言：C#
 - 框架：asp.net MVC 5
``View： Admin/login.cshtml``
```
@{
    Layout = null;
}
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>后台登录</title>
    <link href="~/Assets/BackEnd/css/admin_login.css" rel="stylesheet" type="text/css" />
    <script src="~/Assets/BackEnd/js/jquery-3.2.1.js"></script>
    <script src="~/Assets/BackEnd/js/layer.js"></script>
    <link href="~/Assets/BackEnd/css/layer.css" rel="stylesheet" />
    <script>
        $(document).ready(function () {
            $("#btn-submit").click(function () {
                if (!$('#user').val()) {
                    alert("请输入用户名！");
                    return;
                }
                if (!$('#pwd').val()) {
                    alert("请输入密码！");
                }
                else {
                    $.ajax({
                        type: "post",
                        url: "CkeckLogin",
                        data: $("#form-login").serialize(),
                        dataType: "json",
                        success: function (msg) {
                            if (msg.status == 1) {
                                layer.msg(msg.data);
                                window.setTimeout("window.location.href='Info'", 1000); 
                            } else {
                                layer.msg(msg.data);
                            }
                        }
                    });
                }
            });
        });
    </script>
</head>
<body>
    <div class="admin_login_wrap">
        <h1>后台管理</h1>
        <div class="adming_login_border">
            <div class="admin_input">
                <form id="form-login">
                    <ul class="admin_items">
                        <li>
                            <label for="user">用户名：</label>
                            <input type="text" name="username" value="" id="user" size="35" class="admin_input_style" />
                        </li>
                        <li>
                            <label for="pwd">密码：</label>
                            <input type="password" name="password" value="" id="pwd" size="35" class="admin_input_style" />
                        </li>
                        <li>
                            <button type="button" tabindex="3" value="提交" class="btn btn-primary" id="btn-submit">登录</button>
                        </li>
                    </ul>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
```
`` Controller: Admin/Login``
```
public JsonResult CkeckLogin(string username, string password)    //处理登录验证的方法  Admin/CkeckLogin
   {
       var result = from u in dbContext.admin
                    where u.username == username && u.password == password
                    select u;
       if (result.Count() > 0)
       {
           Session["username"] = username;
           return Json(new { status = 1, data = "登录成功！" });
       }
       else
       {
           return Json(new { status = 0, data = "登录失败！" });
       }
   }

       </div>
   </div>
```
```
public PartialViewResult showCates()   //Home控制器下的showCates方法
    {
        var result = (from c in dbContext.cate where c.catname != "未分类" select c).ToList<cate>();
        return PartialView(result);
    }
```
```
@model IEnumerable<MyBlog.Models.cate>   //showCates的(patial)视图
    @foreach (var c in Model)
    {
        <li id="menu-item-180" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-180">
            @Html.ActionLink(c.catname, "ArticlesOfCate", "Home", new { id =c.id }, new {})
        </li>
    }

