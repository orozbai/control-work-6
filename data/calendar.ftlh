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
        <th>Sum</th>
        <th>Mon</th>
        <th>Tue</th>
        <th>Wed</th>
        <th>Thu</th>
        <th>Fri</th>
        <th>Sat</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <#if calendars.day == 1>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="1"/>
                    <button type="submit" class="btn btn-info">task</button>
                </form>
                1
                <#list tasks as task>
                    <#if task.day == 1>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td>
        <#else>
            <td>1
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="1"/>
                    <button type="submit" class="btn btn-info">task</button>
                </form>
                <#list tasks as task>
                    <#if task.day == 1>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td>
        </#if>
        <#if calendars.day == 2>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="2"/>

                    <button type="submit" class="btn btn-info">task</button>
                </form>
                2
                <#list tasks as task>
                    <#if task.day == 2>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td>
        <#else>
            <td>2
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="2"/>

                    <button type="submit" class="btn btn-info">task</button>
                </form>
                <#list tasks as task>
                    <#if task.day == 2>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td>
        </#if>
        <#if calendars.day == 3>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="3"/>

                    <button type="submit" class="btn btn-info">task</button>
                </form>
                3
                <#list tasks as task>
                    <#if task.day == 3>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td>
        <#else>
            <td>3
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="3"/>

                    <button type="submit" class="btn btn-info">task</button>
                </form>
                <#list tasks as task>
                    <#if task.day == 3>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td>
        </#if>
        <#if calendars.day == 4>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="4"/>

                    <button type="submit" class="btn btn-info">task</button>
                </form>
                4
                <#list tasks as task>
                    <#if task.day == 4>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td>
        <#else>
            <td>4
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="4"/>

                    <button type="submit" class="btn btn-info">task</button>
                </form>
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
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="5"/>

                    <button type="submit" class="btn btn-info">task</button>
                </form>
                5
                <#list tasks as task>
                    <#if task.day == 5>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td>
        <#else>
            <td>5
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="5"/>

                    <button type="submit" class="btn btn-info">task</button>
                </form>
                <#list tasks as task>
                    <#if task.day == 5>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td>
        </#if>
        <#if calendars.day == 6>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="6"/>

                    <button type="submit" class="btn btn-info">task</button>
                </form>
                6
                <#list tasks as task>
                    <#if task.day == 6>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>6
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="6"/>

                    <button type="submit" class="btn btn-info">task</button>
                </form>
                <#list tasks as task>
                    <#if task.day == 6>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td></#if>
        <#if calendars.day == 7>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="7"/>

                    <button type="submit" class="btn btn-info">task</button>
                </form>
                7
                <#list tasks as task>
                    <#if task.day == 7>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>7
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="7"/>

                    <button type="submit" class="btn btn-info">task</button>
                </form>
                <#list tasks as task>
                    <#if task.day == 7>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td></#if>
        <#if calendars.day == 8>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="8"/>

                    <button type="submit" class="btn btn-info">task</button>
                </form>
                8
                <#list tasks as task>
                    <#if task.day == 8>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>8
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="8"/>

                    <button type="submit" class="btn btn-info">task</button>
                </form><#list tasks as task>
                <#if task.day == 8>
                    <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                </#if>
                </#list></td> </#if>
        <#if calendars.day == 9>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="9"/>

                    <button type="submit" class="btn btn-info">task</button>
                </form>
                9
                <#list tasks as task>
                    <#if task.day == 9>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>9
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="9"/>

                    <button type="submit" class="btn btn-info">task</button>
                </form>
                <#list tasks as task>
                    <#if task.day == 9>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td> </#if>
        <#if calendars.day == 10>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="10"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                10
                <#list tasks as task>
                    <#if task.day == 10>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>10
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="10"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                <#list tasks as task>
                    <#if task.day == 10>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td></#if>
        <#if calendars.day == 11>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="11"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                11
                <#list tasks as task>
                    <#if task.day == 11>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>11
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="11"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                <#list tasks as task>
                    <#if task.day == 11>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td></#if>
    </tr>
    <tr>
        <#if calendars.day == 12>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="12"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                12
                <#list tasks as task>
                    <#if task.day == 12>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>12
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="12"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                <#list tasks as task>
                    <#if task.day == 12>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td> </#if>
        <#if calendars.day == 13>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="13"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                13
                <#list tasks as task>
                    <#if task.day == 13>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>13
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="13"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form><#list tasks as task>
                <#if task.day == 13>
                    <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                </#if>
                </#list></td>  </#if>
        <#if calendars.day == 14>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="14"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                14
                <#list tasks as task>
                    <#if task.day == 14>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>14
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="14"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                <#list tasks as task>
                    <#if task.day == 14>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td> </#if>
        <#if calendars.day == 15>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="15"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                15
                <#list tasks as task>
                    <#if task.day == 15>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>15
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="15"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                <#list tasks as task>
                    <#if task.day == 15>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td> </#if>
        <#if calendars.day == 16>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="16"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                16
                <#list tasks as task>
                    <#if task.day == 16>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>16
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="16"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                <#list tasks as task>
                    <#if task.day == 16>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td> </#if>
        <#if calendars.day == 17>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="17"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                17
                <#list tasks as task>
                    <#if task.day == 17>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>17
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="17"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                <#list tasks as task>
                    <#if task.day == 17>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td> </#if>
        <#if calendars.day == 18>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="18"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                18
                <#list tasks as task>
                    <#if task.day == 18>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>18
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="18"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                <#list tasks as task>
                    <#if task.day == 18>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td> </#if>
    </tr>
    <tr>
        <#if calendars.day == 19>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="19"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                19
                <#list tasks as task>
                    <#if task.day == 19>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>19
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="19"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form><#list tasks as task>
                <#if task.day == 19>
                    <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                </#if>
                </#list></td> </#if>
        <#if calendars.day == 20>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="20"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                20
                <#list tasks as task>
                    <#if task.day == 20>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>20
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="20"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                <#list tasks as task>
                    <#if task.day == 20>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td> </#if>
        <#if calendars.day == 21>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="21"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                21
                <#list tasks as task>
                    <#if task.day == 21>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>21
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="21"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form><#list tasks as task>
                <#if task.day == 21>
                    <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                </#if>
                </#list></td> </#if>
        <#if calendars.day == 22>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="22"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                22
                <#list tasks as task>
                    <#if task.day == 22>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>22
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="22"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                <#list tasks as task>
                    <#if task.day == 22>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td> </#if>
        <#if calendars.day == 23>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="23"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                23
                <#list tasks as task>
                    <#if task.day == 23>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>23
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="23"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form><#list tasks as task>
                <#if task.day == 23>
                    <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                </#if>
                </#list></td> </#if>
        <#if calendars.day == 24>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="24"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                24
                <#list tasks as task>
                    <#if task.day == 24>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>24
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="24"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form><#list tasks as task>
                <#if task.day == 24>
                    <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                </#if>
                </#list></td> </#if>
        <#if calendars.day == 25>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="25"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                25
                <#list tasks as task>
                    <#if task.day == 25>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>25
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="25"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form><#list tasks as task>
                <#if task.day == 25>
                    <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                </#if>
                </#list></td> </#if>
    </tr>
    <tr>
        <#if calendars.day == 26>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="26"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                26
                <#list tasks as task>
                    <#if task.day == 26>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>26
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="26"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                <#list tasks as task>
                    <#if task.day == 26>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list></td> </#if>
        <#if calendars.day == 27>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="27"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                27
                <#list tasks as task>
                    <#if task.day == 27>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>27
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="27"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form><#list tasks as task>
                <#if task.day == 27>
                    <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                </#if>
                </#list></td> </#if>
        <#if calendars.day == 28>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="28"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                28
                <#list tasks as task>
                    <#if task.day == 28>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>28
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="28"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form><#list tasks as task>
                <#if task.day == 28>
                    <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                </#if>
                </#list></td> </#if>
        <#if calendars.day == 29>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="29"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                29
                <#list tasks as task>
                    <#if task.day == 29>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>29
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="29"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form><#list tasks as task>
                <#if task.day == 29>
                    <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                </#if>
                </#list></td> </#if>
        <#if calendars.day == 30>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="30"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                30
                <#list tasks as task>
                    <#if task.day == 30>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>30
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="30"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form><#list tasks as task>
                <#if task.day == 30>
                    <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                </#if>
                </#list></td> </#if>
        <#if calendars.day == 31>
            <td style="background-color: #cccccc">
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="31"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form>
                31
                <#list tasks as task>
                    <#if task.day == 31>
                        <div style="width: 15px; height: 15px; background-color: ${task.type} ; margin: 1px"></div>
                    </#if>
                </#list>
            </td> <#else>
            <td>31
                <form method="post" action="">
                    <input type="hidden" name="calendarsDay" value="31"/>


                    <button type="submit" class="btn btn-info">task</button>
                </form><#list tasks as task>
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
