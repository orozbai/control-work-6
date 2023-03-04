<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
            crossorigin="anonymous"></script>
    <title>Task list</title>
</head>
<body>
<h1>Tasks for ${calendars.day} ${calendars.month} 2023</h1>
<div class="allClassesContainer">
    <#list tasks as task>
        <#if task.day == calendars.day>
            <table class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th style="width: 100px;">Name</th>
                    <th style="width: 50px;">Type</th>
                    <th>Description</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <#if task.day == calendars.day>
                        <td>
                            ${task.name}
                        </td>
                        <td>
                            <div style="width: 20px; height: 20px; background-color: ${task.type} ; margin: 1px"></div>
                        </td>
                        <td>
                            ${task.description}
                        </td>
                        <td>
                            <a href="/task-list" class="btn btn-outline-danger" role="button">Delete</a>
                        </td>
                    </#if>
                </tr>
                </tbody>
            </table>
        </#if>
    </#list>
    <a href="/add-task" class="btn btn-outline-primary" role="button">Add Task</a>
</div>
</body>
</html>