<?php

// define('DB_HOST', 'sql313.infinityfree.com');
// define('DB_USER', 'if0_37360301');
// define('DB_PASS', 'cBTGZkRiHT2e');
// define('DB_NAME', 'if0_37360301_student_db');

define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'student_db');

$conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);

//check muna connection par?
if ($conn->connect_error) {
    die("Connection error par!" . $conn->connect_error);
}

//Method for requesting par
if (isset($_POST['create'])) {
    $name = $_POST['student_name'];
    $email = $_POST['student_email'];
    $gender = $_POST['student_gender'];
    $age = $_POST['student_age'];
    $course = $_POST['student_course'];

//Validate muna par ng input par
    if (empty($name) || empty($email) || empty($gender) || empty($age) || empty($course)) {
        echo 'name, email, gender, age, course, and time cannot be empty';
    } else {

//Insert method par
        $stmt = $conn->prepare('INSERT INTO students (student_name, student_email, student_gender, student_age, student_course) VALUES (?,?,?,?,?)');
        if ($stmt === false) {
            // Output error para kung mali yung mga variables sa error
            die('Prepare() failed: ' . htmlspecialchars($conn->error));
        }
//para secure sa SQL attacks
        $stmt->bind_param('sssis', $name, $email, $gender, $age, $course);

//Validate if succes na pumasok sa database
        if ($stmt->execute()) {
            echo '<script>alert("Succesful nag create par!")</script>';
            echo '<script>window.location.href = "/Arocha form/arocha_form.html"</script>';
        } else {
            echo 'ERROR Insert' . $stmt . "<br>" > $conn->error;
        }
        $stmt->close();
    }
}
// $conn->close();

?>
