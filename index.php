<?php
include("assets/shared/connect.php");

$aboutIslandQuery = "SELECT * FROM islandsofpersonality";
$aboutIslandResult = executeQuery("$aboutIslandQuery");

$islandDescriptionQuery = "SELECT * FROM islandsofpersonality";
$islandDescriptionResult = executeQuery("$islandDescriptionQuery");

?>
<!DOCTYPE html>
<html>

<?php include("assets/shared/head.php"); ?>

<body data-bs-theme = "dark">
  <!-- ------------Navigation Bar Section---------------- -->
  <div class="w3-top">
    <div class="w3-bar w3-white w3-card" id="myNavbar">
      <a href="#home" class="w3-bar-item w3-button w3-wide"><img src="assets/images/logo.png" style="width:40px"></a>
      <div class="w3-right w3-hide-small">
        <a href="#home" class="w3-bar-item w3-button subheading">HOME</a>
        <a href="#1" class="w3-bar-item w3-button subheading">FAMILY</a>
        <a href="#2" class="w3-bar-item w3-button subheading"> FRIENDSHIP</a>
        <a href="#3" class="w3-bar-item w3-button subheading">RELATIONSHIP</a>
        <a href="#4" class="w3-bar-item w3-button subheading">MEMORY</a>
      </div>

      <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium"
        onclick="w3_open()">
        <i class="fa fa-bars"></i>
      </a>
    </div>
  </div>

  <nav class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large"
    style="display:none" id="mySidebar">
    <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a>
    <a href="#home" onclick="w3_close()" class="w3-bar-item w3-button">HOME</a>
    <a href="#1" onclick="w3_close()" class="w3-bar-item w3-button">FAMILY</a>
    <a href="#1" onclick="w3_close()" class="w3-bar-item w3-button">FRIENDSHIP</a>
    <a href="#3" onclick="w3_close()" class="w3-bar-item w3-button">RELATIONSHIP</a>
    <a href="#4" onclick="w3_close()" class="w3-bar-item w3-button">MEMORY</a>
  </nav>

   <!-- ------------Video Section------------- -->
    <div class="ratio ratio-16x9 w-100" id="home">
      <iframe
        src="https://www.youtube.com/embed/32lI1Z1MBx0?&amp;start=10&autoplay=1&controls=0&rel=0&disablekb=1&loop=1&playlist=32lI1Z1MBx0&mute=1"
        title="YouTube video player" frameborder="0" allow="autoplay; encrypted-media; gyroscope; picture-in-picture"
        referrerpolicy="strict-origin-when-cross-origin" allowfullscreen>
      </iframe>
    </div>

  <!-- ------------About Section------------- -->
  <div class="w3-container" style="padding:128px 16px" id="about">
    <h3 class="w3-center heading" data-aos="fade-up">Islands of Personality</h3>
    <div class="w3-row-padding w3-center" style="margin-top:64px">

      <?php
      if (mysqli_num_rows($aboutIslandResult) > 0) {
        while ($aboutPersonalityRow = mysqli_fetch_assoc(($aboutIslandResult))) {
          ?>
          <div class="w3-quarter">
            <img src="assets/images/<?php echo $aboutPersonalityRow['image'] ?>" 
              data-aos="fade-up" 
              class="icon" 
              >
            <p class="subheading" data-aos="fade-up" style="color:<?php echo $aboutPersonalityRow['color'] ?>">
              <?php echo $aboutPersonalityRow['name'] ?>
            </p>
            <p class="body" data-aos="fade-up"><?php echo $aboutPersonalityRow['shortDescription'] ?></p>
          </div>
          <?php
        }
      }
      ?>
    </div>
  </div>

  <!-- ------------Islands of Personality Section------------- -->
  <?php
  if (mysqli_num_rows($islandDescriptionResult) > 0) {
    while ($islandDescriptionRow = mysqli_fetch_assoc(($islandDescriptionResult))) {
      $bgColor = ($islandDescriptionRow['islandOfPersonalityID'] % 2 != 0) ? "w3-light-grey" : "";
      ?>
      <div class="container-fluid <?php echo $bgColor; ?> py-5"
        id="<?php echo $islandDescriptionRow['islandOfPersonalityID'] ?>">
        <div class="row d-flex justify-content-center">
          <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 px-2 ps-md-5">
            <div class="heading mt-4" data-aos="fade-up" style="color:<?php echo $islandDescriptionRow['color'] ?>">
              <?php echo $islandDescriptionRow['name'] ?>
            </div>
            <p class="body underline mb-5" data-aos="fade-up">
              <span class="status active">
                <i class="fa fa-check-circle" aria-hidden="true"></i>
                STATUS: <?php echo $islandDescriptionRow['status'] ?>
              </span>
            </p>
            <div data-aos="fade-up">
              <?php echo $islandDescriptionRow['longDescription'] ?>
            </div>

            <p class="subheading" data-aos="fade-up"><a
                href="view.php?id=<?php echo $islandDescriptionRow['islandOfPersonalityID'] ?>" class="btn btn-dark body"
                style="background-color: <?php echo $islandDescriptionRow['color']?>; border: none; color: white; font-weight:bold">View
                <?php echo $islandDescriptionRow['name'] ?></a></p>
          </div>
          <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 d-flex justify-content-center align-items-center">
            <img class="w3-image img-fluid icon" data-aos="fade-up" src="assets/images/<?php echo $islandDescriptionRow['image'] ?>">
          </div>
        </div>
      </div>
      <?php
    }
  }
  ?>
  <!-- ------------Hghlights Section------------- -->
  <div class="w3-container w3-row w3-center w3-padding-64" style="background-color:#1D3A96" data-aos="fade-up">
    <div class="w3-quarter subheading text-white" data-aos="fade-up">
      <span class="w3-xxlarge">4</span>
      <br>Islands of Personality
    </div>
    <div class="w3-quarter subheading text-white" data-aos="fade-up">
      <span class="w3-xxlarge">10000+</span>
      <br>Memories & Moments
    </div>
    <div class="w3-quarter subheading text-white" data-aos="fade-up">
      <span class="w3-xxlarge">2000+</span>
      <br>Life Lessons
    </div>
    <div class="w3-quarter subheading text-white" data-aos="fade-up">
      <span class="w3-xxlarge">700+</span>
      <br>Meaningful Relationships
    </div>
  </div>

  <?php include("assets/shared/script.php"); ?>

</body>

</html>