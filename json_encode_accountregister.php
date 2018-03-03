<?php 


//REGISTER ACCOUNT QUERY AND PARSING
$totalresult = mysqli_query($con,"SELECT * FROM `user_account`");
$totalAcc_register = mysqli_num_rows($totalresult);

$totalresult_ofStudent = mysqli_query($con,"SELECT * FROM `user_student_detail` WHERE `student_status` = 'register'");
$totalAcc_register_asStudent = mysqli_num_rows($totalresult_ofStudent);

$totalresult_ofTeacher = mysqli_query($con,"SELECT * FROM `user_teacher_detail` WHERE `teacher_status` = 'register'");
$totalAcc_register_asTeacher = mysqli_num_rows($totalresult_ofTeacher);

$totalresult_ofAdmin = mysqli_query($con,"SELECT * FROM `user_admin_detail` WHERE `admin_status` = 'register'");
$totalAcc_register_asAdmin = mysqli_num_rows($totalresult_ofAdmin);

$StudentPercentage=($totalAcc_register_asStudent / $totalAcc_register) * 100; 
$TeacherPercentage=($totalAcc_register_asTeacher / $totalAcc_register) * 100; 
$AdminPercentage=($totalAcc_register_asAdmin / $totalAcc_register) * 100; 
//parsing student php to j_script value
$StudentPercentage_RegisterJS="$totalAcc_register_asStudent";
$js_outStudent_Register = json_encode($StudentPercentage_RegisterJS);
//parsing teacher php to j_script value
$TeacherPercentage_RegisterJS="$totalAcc_register_asTeacher";
$js_outTeacher_Register = json_encode($TeacherPercentage_RegisterJS);
//parsing admin php to j_script value
$AdminPercentage_RegisterJS="$totalAcc_register_asAdmin";
$js_outAdmin_Register = json_encode($AdminPercentage_RegisterJS);

//END OF REGISTER ACCOUNT QUERY AND PARSING






?>




