<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php
            $polaczenie=mysqli_connect('localhost','root','','4tie');
            if ($polaczenie) 
               {

                echo "Połączyliśmy się z bazą danych";
                $zapytanie="SELECT * FROM przedmiot";
                $wynik=mysqli_query($polaczenie,$zapytanie);
                while($wiersz=mysqli_fetch_array($wynik)){
                    $przedmiot[]= $wiersz['nazwa'];
                    $idprzedmiot[]=$wiersz['id_Przedmiot'];
                }
                $zapytanie="SELECT * FROM dane";
                $wynik=mysqli_query($polaczenie,$zapytanie);
                while($wiersz=mysqli_fetch_array($wynik)){
                    $osoby[]= $wiersz['imie']." ".$wiersz['nazwisko'];
                }
            }
        ?>
        <form method="POST">
            <select>
                <?php
                for ($x=0;$x<count($przedmiot);$x++){
                    echo "<option value=$idprzedmiot[$x]>$przedmiot[$x]</option>";
                }

                ?>
            </select>
        <form method="POST">
            <select>
                <?php
                for ($x=0;$x<count($osoby);$x++){
                    echo "<option>$osoby[$x]</option>";
                }

                ?>
            </select>
         
</body>
</html>