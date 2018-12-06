<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>MOVIEHUNTER give what you desire</title>
  <link rel="stylesheet" type="text/css" href="css/tampil.css">
  <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src= "#"></script>
</head>
<body>
  <div class="huhu">
   <header>
     <img width="350px" src="img/title1.png" alt="">
     <div class="box2">
      <div class="container-1">
        <?php
        include("proses/connect.php");
        $search = $_POST['search'];
        $query = "SELECT * FROM film WHERE film_name LIKE '%$search%'";
        $qe = mysqli_query($conn,$query);
        $row = mysqli_fetch_array($qe);
        $film_name = $row['film_name'];
          // echo $nama;
            // include("process/searchingprocess.php");
        include_once('semsol/ARC2.php'); 
        $config = array("remote_store_endpoint" => "http://localhost:2020/sparql");
        $store = ARC2::getRemoteStore($config); 

        $query = "PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
        PREFIX owl: <http://www.w3.org/2002/07/owl#>
        PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
        PREFIX vocab: <http://localhost:2020/resource/vocab/>
        PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
        PREFIX map: <http://localhost:2020/resource/#>
        PREFIX db: <http://localhost:2020/resource/>

        SELECT ?id_film ?title_film ?genre ?duration ?description ?language ?rating ?year ?country ?picture WHERE {
          ?film vocab:film_film_name '$film_name'.
          ?filgen vocab:film_has_genre_film_film_id ?film.
          ?filgen vocab:film_has_genre_genre_genre_id ?genre_id.
          ?x vocab:film_has_genre_genre_genre_id ?genre_id;
          vocab:film_has_genre_film_film_id ?film_id.
          ?genre_id vocab:genre_genre ?genre.
          ?film_id vocab:film_film_name ?title_film;
          vocab:film_duration ?duration;
          vocab:film_language ?language;
          vocab:film_film_id ?id_film;
          vocab:film_description ?description;
          vocab:film_movie_rating_rating_id ?rating_id;
          vocab:film_country_country_id ?country_id;
          vocab:film_gambar ?picture;
          vocab:film_movie_year_my_id ?year_id.
          ?rating_id vocab:movie_rating_star ?rating.
          ?country_id vocab:country_country ?country. 
          ?year_id vocab:movie_year_year ?year.
        }";

        $result = $store->query($query, 'rows');

        foreach ($result as $rod) {
          $film = $rod['id_film'];
          // $que= mysqli_query($conn,"SELECT * FROM film  WHERE film_id = '$film'");
            // $que= mysqli_query($conn,"SELECT * FROM film WHERE film_id = '1'");
          $ros = mysqli_fetch_array($que);
          ?>
        </div>
      </div>
    </header>
    <section id="isi-artikel">
      <div id="wrapper-artikel">
        <div id="wrapper-wrapper-artikel">
         <div id="poster">
           <img id="gambar" src="img/<?=$rod['picture']?>">
           <div id="isi-poster">
            <table border="0">
              <tr>
                <p style="color: white">Title : <?= $rod['title_film']?></p>
              </tr>
              <tr>
                <p style="color: white">Genre : <?= $rod['genre']?></p>
              </tr>
              <tr>
                <p style="color: white">Duration : <?= $rod['duration']?></p>
                
              </tr>
              <tr>
                <p style="color: white">Language : <?= $rod['language']?></p>
                
              </tr>
              <tr>
                <p style="color: white">Country : <?= $rod['country']?></p>
                
              </tr>
              <tr>
                <p style="color: white">Rating Star : <?= $rod['rating']?></p>
                
              </tr>
              <tr>
                <p style="color: white">Year : <?= $rod['year']?></p>
              </tr>
              <tr>
                <p style="color: white">Descripton : </p>
                <p><?= $rod['description']?></p>
              </tr>
            </table>
            <?php
              }
            ?>
        </div>
      </div>
      <div style="clear: both;"></div>
    </div>
  </div>
</div>
</section>
<div style="clear: both;"></div>
<footer id="kaki">
 Semantic Web Project By Kelompok 1 | Bayu Aprilananda Sujatmoko | Fathan Afif | Fathan Ashari | Laksamana Dwinanda
</footer>
</div>
</body>
</html>
