<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
            crossorigin="anonymous"></script>
    <title>Add task</title>
</head>
<body>
<h1>Add Task for <#list tasks as task>${task.day}</#list> ${calendars.month}</h1>
<div class="container">
    <form method="post" action="">
        <table class="table table-bordered table-striped">
            <thead>
            <th>Name</th>
            <th>Description</th>
            <th>Type</th>
            </thead>
            <tbody>
            <tr>
                <td>
                    <label>
                        <#list tasks as task>
                            <input type="text" name="name" value="${task.name}"/>
                        </#list>
                    </label>
                </td>
                <td>
                    <#list tasks as task>
                        <label>
                            <input type="text" name="description" value="${task.description}"/>
                        </label>
                    </#list>
                </td>
                <td>
                    <label>
                        <p>Choose color</p>
                        <input type="color" name="type" value="">
                    </label>
                </td>
            </tr>
            </tbody>
        </table>
        <#list tasks as task><input type="hidden" name="day" value="${task.day}"/></#list>
        <button type="submit" class="btn btn-primary">Save</button>
    </form>
</div>
</body>
</html>