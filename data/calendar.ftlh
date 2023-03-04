<!DOCTYPE html>
<html lang="eng">
<head>
    <link href="css/calendar.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
            crossorigin="anonymous"></script>
    <title>CurrentCalendar</title>
</head>
<body>
<h1>CurrentCalendar: ${calendars.month}</h1>

<table>
    <thead>
    <tr>
        <th>Mon</th>
        <th>Tue</th>
        <th>Wed</th>
        <th>Thu</th>
        <th>Fri</th>
        <th>Sat</th>
        <th>Sun</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <#if calendars.day == 1>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>
                <a class="btn btn-primary" href="/task-list" role="button">task</a>1
                <#list tasks as task>
                    <#if task.day == 1>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td>
        <#else>
            <td>1 <a class="btn btn-primary" href="/task-list" role="button">task</a>
                <#list tasks as task>
                    <#if task.day == 1>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td>
        </#if>
        <#if calendars.day == 2>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>2
                <#list tasks as task>
                    <#if task.day == 2>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td>
        <#else>
            <td>2 <a class="btn btn-primary" href="/task-list" role="button">task</a>
                <#list tasks as task>
                    <#if task.day == 2>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td>
        </#if>
        <#if calendars.day == 3>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>3
                <#list tasks as task>
                    <#if task.day == 3>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td>
        <#else>
            <td>3 <a class="btn btn-primary" href="/task-list" role="button">task</a>
                <#list tasks as task>
                    <#if task.day == 3>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td>
        </#if>
        <#if calendars.day == 4>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>4
                <#list tasks as task>
                    <#if task.day == 4>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td>
        <#else>
            <td>4 <a class="btn btn-primary" href="/task-list" role="button">task</a>
                <#list tasks as task>
                    <#if task.day = 4>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td>
        </#if>
    </tr>
    <tr>
        <#if calendars.day == 5>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>5
                <#list tasks as task>
                    <#if task.day == 5>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td>
        <#else>
            <td>5 <a class="btn btn-primary" href="/task-list" role="button">task</a>
                <#list tasks as task>
                    <#if task.day == 5>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td>
        </#if>
        <#if calendars.day == 6>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>6
                <#list tasks as task>
                    <#if task.day == 6>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>6 <a class="btn btn-primary" href="/task-list" role="button">task</a>
                <#list tasks as task>
                    <#if task.day == 6>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td></#if>
        <#if calendars.day == 7>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>7
                <#list tasks as task>
                    <#if task.day == 7>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>7 <a class="btn btn-primary" href="/task-list" role="button">task</a>
                <#list tasks as task>
                    <#if task.day == 7>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td></#if>
        <#if calendars.day == 8>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>8
                <#list tasks as task>
                    <#if task.day == 8>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>8 <a class="btn btn-primary" href="/task-list" role="button">task</a><#list tasks as task>
                <#if task.day == 8>
                    <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                </#if>
                </#list></td> </#if>
        <#if calendars.day == 9>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>9
                <#list tasks as task>
                    <#if task.day == 9>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>9 <a class="btn btn-primary" href="/task-list" role="button">task</a>
                <#list tasks as task>
                    <#if task.day == 9>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td> </#if>
        <#if calendars.day == 10>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>10
                <#list tasks as task>
                    <#if task.day == 10>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>10 <a class="btn btn-primary" href="/task-list" role="button">task</a>
                <#list tasks as task>
                    <#if task.day == 10>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td></#if>
        <#if calendars.day == 11>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>11
                <#list tasks as task>
                    <#if task.day == 11>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>11 <a class="btn btn-primary" href="/task-list" role="button">task</a>
                <#list tasks as task>
                    <#if task.day == 11>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td></#if>
    </tr>
    <tr>
        <#if calendars.day == 12>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>12
                <#list tasks as task>
                    <#if task.day == 12>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>12 <a class="btn btn-primary" href="/task-list" role="button">task</a>
                <#list tasks as task>
                    <#if task.day == 12>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td> </#if>
        <#if calendars.day == 13>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>13
                <#list tasks as task>
                    <#if task.day == 13>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>13 <a class="btn btn-primary" href="/task-list" role="button">task</a><#list tasks as task>
                <#if task.day == 13>
                    <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                </#if>
                </#list></td>  </#if>
        <#if calendars.day == 14>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>14
                <#list tasks as task>
                    <#if task.day == 14>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>14 <a class="btn btn-primary" href="/task-list" role="button">task</a>
                <#list tasks as task>
                    <#if task.day == 14>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td> </#if>
        <#if calendars.day == 15>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>15
                <#list tasks as task>
                    <#if task.day == 15>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>15 <a class="btn btn-primary" href="/task-list" role="button">task</a>
                <#list tasks as task>
                    <#if task.day == 15>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td> </#if>
        <#if calendars.day == 16>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>16
                <#list tasks as task>
                    <#if task.day == 16>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>16 <a class="btn btn-primary" href="/task-list" role="button">task</a>
                <#list tasks as task>
                    <#if task.day == 16>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td> </#if>
        <#if calendars.day == 17>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>17
                <#list tasks as task>
                    <#if task.day == 17>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>17 <a class="btn btn-primary" href="/task-list" role="button">task</a>
                <#list tasks as task>
                    <#if task.day == 17>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td> </#if>
        <#if calendars.day == 18>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>18
                <#list tasks as task>
                    <#if task.day == 18>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>18 <a class="btn btn-primary" href="/task-list" role="button">task</a>
                <#list tasks as task>
                    <#if task.day == 18>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td> </#if>
    </tr>
    <tr>
        <#if calendars.day == 19>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>19
                <#list tasks as task>
                    <#if task.day == 19>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>19 <a class="btn btn-primary" href="/task-list" role="button">task</a><#list tasks as task>
                <#if task.day == 19>
                    <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                </#if>
                </#list></td> </#if>
        <#if calendars.day == 20>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>20
                <#list tasks as task>
                    <#if task.day == 20>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>20 <a class="btn btn-primary" href="/task-list" role="button">task</a>
                <#list tasks as task>
                    <#if task.day == 20>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td> </#if>
        <#if calendars.day == 21>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>21
                <#list tasks as task>
                    <#if task.day == 21>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>21 <a class="btn btn-primary" href="/task-list" role="button">task</a><#list tasks as task>
                <#if task.day == 21>
                    <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                </#if>
                </#list></td> </#if>
        <#if calendars.day == 22>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>22
                <#list tasks as task>
                    <#if task.day == 22>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>22 <a class="btn btn-primary" href="/task-list" role="button">task</a>
                <#list tasks as task>
                    <#if task.day == 22>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td> </#if>
        <#if calendars.day == 23>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>23
                <#list tasks as task>
                    <#if task.day == 23>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>23 <a class="btn btn-primary" href="/task-list" role="button">task</a><#list tasks as task>
                <#if task.day == 23>
                    <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                </#if>
                </#list></td> </#if>
        <#if calendars.day == 24>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>24
                <#list tasks as task>
                    <#if task.day == 24>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>24 <a class="btn btn-primary" href="/task-list" role="button">task</a><#list tasks as task>
                <#if task.day == 24>
                    <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                </#if>
                </#list></td> </#if>
        <#if calendars.day == 25>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>25
                <#list tasks as task>
                    <#if task.day == 25>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>25 <a class="btn btn-primary" href="/task-list" role="button">task</a><#list tasks as task>
                <#if task.day == 25>
                    <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                </#if>
                </#list></td> </#if>
    </tr>
    <tr>
        <#if calendars.day == 26>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>26
                <#list tasks as task>
                    <#if task.day == 26>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>26 <a class="btn btn-primary" href="/task-list" role="button">task</a>
                <#list tasks as task>
                    <#if task.day == 26>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td> </#if>
        <#if calendars.day == 27>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>27
                <#list tasks as task>
                    <#if task.day == 27>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>27 <a class="btn btn-primary" href="/task-list" role="button">task</a><#list tasks as task>
                <#if task.day == 27>
                    <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                </#if>
                </#list></td> </#if>
        <#if calendars.day == 28>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>28
                <#list tasks as task>
                    <#if task.day == 28>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>28 <a class="btn btn-primary" href="/task-list" role="button">task</a><#list tasks as task>
                <#if task.day == 28>
                    <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                </#if>
                </#list></td> </#if>
        <#if calendars.day == 29>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>29
                <#list tasks as task>
                    <#if task.day == 29>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>29 <a class="btn btn-primary" href="/task-list" role="button">task</a><#list tasks as task>
                <#if task.day == 29>
                    <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                </#if>
                </#list></td> </#if>
        <#if calendars.day == 30>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>30
                <#list tasks as task>
                    <#if task.day == 30>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>30 <a class="btn btn-primary" href="/task-list" role="button">task</a><#list tasks as task>
                <#if task.day == 30>
                    <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                </#if>
                </#list></td> </#if>
        <#if calendars.day == 31>
            <td style="background-color: #cccccc"><a class="btn btn-primary" href="/task-list" role="button">task</a>31
                <#list tasks as task>
                    <#if task.day == 31>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>31 <a class="btn btn-primary" href="/task-list" role="button">task</a><#list tasks as task>
                <#if task.day == 31>
                    <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                </#if>
                </#list></td> </#if>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    </tbody>
</table>
</body>
</html>
