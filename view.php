<?php
include('assets/shared/connect.php');

$islandOfPersonalityID = $_GET['id'];

$islandPersonalityQuery = "SELECT * FROM islandsofpersonality WHERE islandOfPersonalityID = $islandOfPersonalityID";
$islandPersonalityResult = executeQuery($islandPersonalityQuery);

$islandTabQuery = "SELECT * FROM islandsofpersonality WHERE islandOfPersonalityID = $islandOfPersonalityID";
$islandTabResult = executeQuery($islandTabQuery);

$islandContentQuery = "SELECT 
    islandsofpersonality.islandOfPersonalityID,
    islandcontents.color AS contentColor,
    islandcontents.image AS contentImage,
    islandcontents.content
FROM 
    islandsofpersonality
JOIN 
    islandcontents ON islandsofpersonality.islandOfPersonalityID = islandcontents.islandOfPersonalityID
WHERE 
    islandsofpersonality.islandOfPersonalityID = $islandOfPersonalityID";

$islandContentResult = executeQuery($islandContentQuery);
?>

<!doctype html>
<html lang="en">

    <?php
    include("assets/shared/head.php");
    while ($islandTabRow = mysqli_fetch_assoc($islandTabResult)) {
        ?>
        <title><?php echo $islandTabRow['name'] ?></title>
        <link rel="icon" href="assets/images/<?php echo $islandTabRow['image'] ?>" />
        <?php
    }
    ?>

<body>

     <!-- ------------Island Content Section------------- -->
    <div class="container-fluid bg-dark text-white">
        <div class="row d-flex justify-content-center align-items-center">
            <div class="col text-center">

                <?php
                while ($islandPersonalityRow = mysqli_fetch_assoc($islandPersonalityResult)) {
                    ?>
                    <div class="heading" data-aos="fade-up">Welcome to my <span
                            style="color:<?php echo $islandPersonalityRow['color'] ?>"><?php echo $islandPersonalityRow['name'] ?>!</span>
                        <?php
                }
                ?>
                    <?php
                    if (mysqli_num_rows($islandContentResult) > 0) {
                        while ($islandContentRow = mysqli_fetch_assoc($islandContentResult)) {
                            ?>
                        </div>
                        <img class="img-fluid mt-5" data-aos="fade-up"
                            src="assets/images/<?php echo $islandContentRow['contentImage'] ?>">
                            
                        <div>
                            <div data-aos="fade-up">
                                <?php echo $islandContentRow['content'] ?>
                            </div>
                            <?php
                        }
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>

    <?php include("assets/shared/script.php"); ?>
</body>

</html>