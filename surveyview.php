<?php 
include('session.php');
include('db.php');
$page = 'survey';
if ($login_level == '1')
{
  $result = mysqli_query($con,"SELECT * FROM `user_student_detail` WHERE student_userID = $login_id");
  $data = mysqli_fetch_array($result);
  $data_img = $data['student_img'];
}
else if ($login_level == '2')
{
  $result = mysqli_query($con,"SELECT * FROM `user_teacher_detail` WHERE teacher_userID = $login_id");
  $data = mysqli_fetch_array($result);
  $data_img = $data['teacher_img'];
}
else if ($login_level == '3')
{
  $result = mysqli_query($con,"SELECT * FROM `user_admin_detail` WHERE admin_userID = $login_id");
  $data = mysqli_fetch_array($result);
  $data_img = $data['admin_img'];
}
else
{}

?>
    <!DOCTYPE html>
    <html>

    <head>
        <?php include('meta.php');?>
            <?php include('style_css.php');?>

                <title>Survey</title>
    </head>
<script type="text/javascript">
    $(document).ready(function(){
        $("#ilabasmo").hide()
    $("#washing").click(function(){
        $("#ilabasmo").toggle();
    });
});
</script>
    <body class=" menu-affix">
        <div class="bg-dark dk" id="wrap">
            <div id="top">
                <?php include ('top_navbar.php');?>
            </div>
            <!-- /#top -->
            <?php  
                    if ($login_level == '1')
                    {
                        include('sidebar_student.php');
                    }
                    if ($login_level == '2')
                    {
                        include('sidebar_teacher.php');
                    }
                    elseif ($login_level == '3')
                    {
                        include('sidebar_admin.php');
                    }
                    else
                    {
                    }
                    ?>
                <!-- /#left -->
                <div id="content">
                    <div class="outer">
                        <header class="head">
                            <div class="main-bar">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
                                    <li class="breadcrumb-item active"> Survey Question View</li>
                                </ol>
                            </div>
                            <!-- /.main-bar -->
                        </header>
                        <div class="inner bg-light lter">
                            <?php 
                            $sql = mysqli_query($con,"SELECT YEAR(survey_dateTaken) as dataTaken,survey_maxattemp as maxattemp FROM `survey_result` WHERE survey_ownerID = '$login_id'");
                            $attemp = mysqli_fetch_array($sql);
                            ?>
                            <div>
                                <?php 
                                if ($attemp['maxattemp'] == 0) {
                                    # code...
                                }
                                else
                                {
                                 ?>
                                <h3 class="pull-right"><a href="" class="btn btn-default">Retake Remaining (<?php echo $attemp['maxattemp'];?>)</a></h3>
                                 <?php
                                }
                                ?>
                                <form class="form-horizontal" method="POST" action="action/surveyresult.php">

                                    <h1>GRADUATE TRACER SURVEY (GTS)</h1>
                                    <br>
                                    <div class="" style="display: inline-block; vertical-align: top; width: 100%;">
                                        <h5 class=""><span style="">1. Reason (s) for taking the course (s) or pursuing degree (s).  You may check (/) more than one answer.</span></h5>
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th></th>
                                                    <th><span class="" style="">Undergraduate/AB/BS </span></th>
                                                    <th><span class="" style="">Graduate/MS/MA/Ph.D.</span></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><span style="">High Grades in the course or subject area (s) related to the course</span></td>
                                                    <td>
                                                        <label class="">
                                                            <input  type="checkbox" name="U_AB_BS1" value="U_AB_BS1" class=""><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                    <td>
                                                        <label class="">
                                                           <input type="checkbox" class="" name="G_MS_MA_PHD1" value="G_MS_MA_PHD1"><span class="circle" style=""></span><span class="check" style=""></span></label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><span class="" style="">Good grades in high school</span></td>
                                                    <td>
                                                        <label class="">
                                                            <input type="checkbox" name="U_AB_BS2" value="U_AB_BS2" class=""><span class="circle"></span><span class="check" style=""></span></label>
                                                    </td>
                                                    <td>
                                                        <label class="">
                                                            <input type="checkbox" name="G_MS_MA_PHD2" value="G_MS_MA_PHD2" class=""><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><span style="">Influence of parents or relatives</span></td>
                                                    <td>
                                                        <label class="">
                                                            <input type="checkbox" name="U_AB_BS3" value="U_AB_BS3" class=""><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                    <td>
                                                        <label class="">
                                                            <input type="checkbox" name="G_MS_MA_PHD3" value="G_MS_MA_PHD3" class=""><span class="circle" style=""></span><span class="check"></span></label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><span class="" style="">Peer Influence</span></td>
                                                    <td>
                                                        <label class="">
                                                            <input type="checkbox" name="U_AB_BS4" value="U_AB_BS4" class=""><span class="circle" style=""></span><span class="check"></span></label>
                                                    </td>
                                                    <td>
                                                        <label class="">
                                                            <input type="checkbox" name="G_MS_MA_PHD4" value="G_MS_MA_PHD4" class=""><span class="circle"></span><span class="check" style=""></span></label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><span class="" style="">Inspired by a role model</span></td>
                                                    <td>
                                                        <label class="">
                                                            <input type="checkbox" name="U_AB_BS5" value="U_AB_BS5" class=""><span class="circle"></span><span class="check" style=""></span></label>
                                                    </td>
                                                    <td>
                                                        <label class="">
                                                            <input type="checkbox" name="G_MS_MA_PHD5" value="G_MS_MA_PHD5" class=""><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><span style="">Strong passion for the profession</span></td>
                                                    <td>
                                                        <label class="">
                                                            <input type="checkbox" class="" name="U_AB_BS6" value="U_AB_BS6"><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                    <td>
                                                        <label class="">
                                                            <input type="checkbox" class="" name="G_MS_MA_PHD6" value="G_MS_MA_PHD6"><span class="circle" style=""></span><span class="check"></span></label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><span class="" style="">Prospect for immediate employment</span></td>
                                                    <td>
                                                        <label class="">
                                                            <input type="checkbox" class="" name="U_AB_BS7" value="U_AB_BS7"><span class="circle" style=""></span><span class="check"></span></label>
                                                    </td>
                                                    <td>
                                                        <label class="">
                                                            <input type="checkbox" class="" name="G_MS_MA_PHD7" value="G_MS_MA_PHD7"><span class="circle"></span><span class="check" style=""></span></label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><span class="" style="">Status or prestige of the profession</span></td>
                                                    <td>
                                                        <label class="">
                                                            <input type="checkbox" class="" name="U_AB_BS8" value="U_AB_BS8"><span class="circle"></span><span class="check" style=""></span></label>
                                                    </td>
                                                    <td>
                                                        <label class="">
                                                            <input type="checkbox" class="" name="G_MS_MA_PHD8" value="G_MS_MA_PHD8"><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><span style="">Availability  of course offering in chosen institution</span></td>
                                                    <td>
                                                        <label class="">
                                                            <input type="checkbox" class="" name="U_AB_BS9" value="U_AB_BS9"><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                    <td>
                                                        <label class="">
                                                            <input type="checkbox" class="" name="G_MS_MA_PHD9" value="G_MS_MA_PHD9"><span class="circle" style=""></span><span class="check"></span></label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><span class="" style="">Prospect of career advancement</span></td>
                                                    <td>
                                                        <label class="">
                                                            <input type="checkbox" class="" name="U_AB_BS10" value="U_AB_BS10"><span class="circle" style=""></span><span class="check"></span></label>
                                                    </td>
                                                    <td>
                                                        <label class="">
                                                            <input type="checkbox" class="" name="G_MS_MA_PHD10" value="G_MS_MA_PHD10"><span class="circle"></span><span class="check" style=""></span></label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><span style="">Affordable for the family</span></td>
                                                    <td>
                                                        <label class="">
                                                            <input type="checkbox" class="" name="U_AB_BS11" value="U_AB_BS11"><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                    <td>
                                                        <label class="">
                                                            <input type="checkbox" class="" name="G_MS_MA_PHD11" value="G_MS_MA_PHD11"><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><span style="">Prospect of attractive compensation</span></td>
                                                    <td>
                                                        <label class="">
                                                            <input type="checkbox" class="" name="U_AB_BS12" value="U_AB_BS12"><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                    <td>
                                                        <label class="">
                                                            <input type="checkbox" class="" name="G_MS_MA_PHD12" value="G_MS_MA_PHD12"><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><span style="">Opportunity for employment abroad</span></td>
                                                    <td>
                                                        <label class="">
                                                            <input type="checkbox" class="" name="U_AB_BS13" value="U_AB_BS13"><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                    <td>
                                                        <label class="">
                                                            <input type="checkbox" class="" name="G_MS_MA_PHD13" value="G_MS_MA_PHD13"><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><span style="">No particular choice or no better idea</span></td>
                                                    <td>
                                                        <label class="">
                                                            <input type="checkbox" class="" name="U_AB_BS14" value="U_AB_BS14"><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                    <td>
                                                        <label class="">
                                                            <input type="checkbox" class="" name="G_MS_MA_PHD14" value="G_MS_MA_PHD14"><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                </tr>
                                                    <tr>
                                                    <td><span style="">Others, please specify</span></td>
                                                    <td>
                                                        <label class="">
                                                            <input type="text" class="form-control" name="U_AB_BS14" value=""><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                    <td>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div id="sq_106" class="" style="display: inline-block; vertical-align: top; width: 100%;">
                                        <h5 class=""><span style="">2. What were your reasons for accepting the job?  You may check (/) more than one answer.</span></h5>
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th></th>
                                                    <th><span class="" style=""></span></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><span style="">Salaries and benefits</span></td>
                                                    <td>
                                                        <label class="">
                                                            <input id="" type="checkbox" name="Salaries_benefits" value="Salaries_benefits" class=""><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><span style="">Career challenge</span></td>
                                                    <td>
                                                        <label class="">
                                                            <input id="" type="checkbox" name="Career_challenge" value="Career_challenge" class=""><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><span style="">Related to special skills</span></td>
                                                    <td>
                                                        <label class="">
                                                            <input id="" type="checkbox" name="Related_to_special_skills" value="Related_to_special_skills" class=""><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><span style="">Proximity to residence</span></td>
                                                    <td>
                                                        <label class="">
                                                            <input id="" type="checkbox" name="Proximity_to_residence" value="Proximity_to_residence" class=""><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><span style="">Other reason (s), please specify</span></td>
                                                    <td>
                                                        <label class="">
                                                            <input type="text" class="form-control" name="Other_q2" value="Other_q2"><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div id="sq_106" class="" style="display: inline-block; vertical-align: top; width: 100%;">
                                        <h5 class=""><span style="">3. Job Level Position.</span></h5>
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th><span class="" style="">Job Level</span></th>
                                                    <th><span class="" style="">First Job </span></th>
                                                    <th><span class="" style="">Current or Present Job</span></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><span style="">Rank or Clerical</span></td>
                                                    <td>
                                                        <label class="">
                                                            <input id="" type="checkbox" name="FJ_RankCleric" value="FJ_RankCleric" class=""><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                     <td>
                                                        <label class="">
                                                            <input id="" type="checkbox" name="CPJ_RankCleric" value="CPJ_RankCleric" class=""><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><span style="">Professional, Technical or Supervisory</span></td>
                                                    <td>
                                                        <label class="">
                                                            <input id="" type="checkbox" name="FJ_ProTecSup" value="FJ_ProTecSup" class=""><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                     <td>
                                                        <label class="">
                                                            <input id="" type="checkbox" name="CPJ_ProTecSup" value="CPJ_ProTecSup" class=""><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><span style="">Managerial or Executive</span></td>
                                                    <td>
                                                        <label class="">
                                                            <input id="" type="checkbox" name="FJ_Magex" value="FJ_Magex" class=""><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                     <td>
                                                        <label class="">
                                                            <input id="" type="checkbox" name="CPJ_Magex" value="CPJ_Magex" class=""><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><span style="">Self-employed</span></td>
                                                    <td>
                                                        <label class="">
                                                            <input id="" type="checkbox" name="FJ_SelfEmp" value="FJ_SelfEmp" class=""><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                     <td>
                                                        <label class="">
                                                            <input id="" type="checkbox" name="CPJ_SelfEmp" value="CPJ_SelfEmp" class=""><span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                      <div id="sq_106" class="" style="display: inline-block; vertical-align: top; width: 100%;">
                                        <h5 class=""><span style="">4. What is your  initial gross monthly earning  in your  first job after college?</span></h5>
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th><span class="" style=""></span></th>
                                                    <th><span class="" style=""></span></th>
                                                    <th><span class="" style=""></span></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <label class="">
                                                            <input id="" type="checkbox" name="Below5k" value="Below5k" class=""><span class="circle"></span><span class="check">Below P 5,000.00 </span></label>
                                                    </td>
                                                     <td>
                                                        <label class="">
                                                            <input id="" type="checkbox" name="k15_less_than_20k" value="15k_less_than_20k" class="">P 15,000.00 to less than P 20,000.00<span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    
                                                    <td>
                                                        <label class="">
                                                            <input id="" type="checkbox" name="k5lessthan10k" value="5k_less_than_10k" class="">P 5,000.00 to less than P 10,000.00<span class="circle"></span><span class="check"></span></label>
                                                    </td>
                                                     <td>
                                                        <label class="">
                                                            <input id="" type="checkbox" name="k20_less_than_25k" value="20k_less_than_25k" class=""><span class="circle"></span><span class="check">P 20,000.00 to less than P 25,000.00</span></label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <label class="">
                                                            <input id="" type="checkbox" name="k10_less_than_15k" value="10k_less_than_15k" class=""><span class="circle"></span><span class="check">P 10,000.00 to less than P 15,000.00 </span></label>
                                                    </td>
                                                     <td>
                                                        <label class="">
                                                            <input id="" type="checkbox" name="k25_and_above" value="25k_and_above" class=""><span class="circle"></span><span class="check">P 25,000.00  and above</span></label>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div id="sq_106" class="" style="display: inline-block; vertical-align: top; width: 100%;">
                                        <h5 class=""><span style="">5. Was the curriculum you had in college relevant to your first job?</span></h5>
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th><span class="" style=""></span></th>
                                                    <th><span class="" style=""></span></th>
                                                    <th><span class="" style=""></span></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                <td>
                                                    <button type="button"class="btn btn-default" onclick="show('id1');">Yes</button>
                                                    </td>
                                                     <td>
                                                        <button type="button"class="btn btn-default" onclick="show('id2');">No</button>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <script type="text/javascript">
                                    function show(elementId) { 
                                     document.getElementById("id1").style.display="none";
                                     document.getElementById("id2").style.display="none";
                                     document.getElementById(elementId).style.display="block";
                                    }
                                    </script>
                                    <div id="id2"></div>
                                <div id="id1"  style="display: inline-block; vertical-align: top; width: 100%;display:none;">
                                    
                                     <h5 class=""><span style="">6. what competencies learned in college did you find very useful in your first job?  You may check (/) more than one answer.</span></h5>
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th><span class="" style=""></span></th>
                                                    <th><span class="" style=""></span></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <label class="">
                                                            <input id="" type="checkbox" name="Communication_skills" value="Communication_skills" class=""><span class="circle"></span><span class="check">Communication skills</span></label>
                                                    </td>
                                                    <td></td>
                                                </tr>

                                                <tr>
                                                    <td>
                                                        <label class="">
                                                            <input id="" type="checkbox" name="HumRelSkills" value="HumRelSkills" class=""><span class="circle"></span><span class="check">Human Relations skills</span></label>
                                                    </td>
                                                    <td></td>
                                                </tr>

                                                <tr>
                                                    <td>
                                                        <label class="">
                                                            <input id="" type="checkbox" name="EntreSkill" value="EntreSkill" class=""><span class="circle"></span><span class="check">Entrepreneurial skills</span></label>
                                                    </td>
                                                    <td></td>
                                                </tr>

                                                <tr>
                                                    <td>
                                                        <label class="">
                                                            <input id="" type="checkbox" name="ProbsolbSkill" value="ProbsolbSkill" class=""><span class="circle"></span><span class="check">Problem-solving skills</span></label>
                                                    </td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <label class="">
                                                            <input id="" type="checkbox" name="CritThinkSkill" value="CritThinkSkill" class=""><span class="circle"></span><span class="check">Critical Thinking skills</span></label>
                                                    </td>

                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <label class="">
                                                           <span class="circle"></span><span class="check">Other skills, please specify </span></label>
                                                    </td>

                                                    <td>
                                                        <input id="" type="textbox" name="Other_q6" value="" class="form-control">
                                                    </td>

                                                </tr>
                                            </tbody>
                                        </table>

                                </div>
                                 <center><h2><i>Thank  you  for taking time out to fill out this questionnaire.</i></h2></center>
                                    
                                    <!-- <div class="form-group">
                                <label class="control-label col-lg-2">Change Picture</label>
                                <div class="col-lg-4">
                                    <input type="password" class="validate[required] form-control" name="new_repassword" id="req" value="">
                                </div>
                            </div> -->
                                </form>
                            </div>
                            </head>

                            <body>

                        </div>
                        <!-- /.inner -->
                    </div>
                    <!-- /.outer -->
                </div>
                <!-- /#content -->

        </div>

        <!-- /#wrap -->
        <?php include('footer.php');?>
            <!-- /#footer -->
            <?php include ('script.php');?>
                </body>

    </html>