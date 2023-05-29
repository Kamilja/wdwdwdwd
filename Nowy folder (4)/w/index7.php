<!DOCTYPE html>
<html lang="pl-PL">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Obecność baza</title>
</head>
<body>
    <header>
        <h1>
            Lekcja
        </h1>
    </header>
    <?php
            $polaczenie=mysqli_connect('localhost','root','','4tie');
            
                if ($polaczenie){
                    
                    
                    
                    $zapytanie="SELECT * FROM przedmiot";
                    $wynik=mysqli_query($polaczenie,$zapytanie);
                    while($wiersz=mysqli_fetch_array($wynik)){
                        $przedmiot[]= $wiersz['nazwa'];
                        $idprzedmiot[]=$wiersz['id_Przedmiot'];
                    }
                    $zapytanie="SELECT * FROM nauczyciel";
                    $wynik=mysqli_query($polaczenie,$zapytanie);
                    while($wiersz=mysqli_fetch_array($wynik)){
                        $nauczyciel[]= $wiersz['imie']." ".$wiersz['nazwisko'];
                        $idnauczyciel[]=$wiersz['id_Nauczyciel'];
                    }
                    
                   
            }
            if($_SERVER["REQUEST_METHOD"]=="POST"){
                $temat=$_POST['temat'];
                $data=$_POST['data'];
                $idnauczyciel1=$_POST['Nauczyciel'];
                $idprzedmiot1=$_POST['Przedmiot'];
                $NumerLekcji=$_POST['Nr'];
                $insert="INSERT INTO lekcja VALUES(null, '$idprzedmiot1','$idnauczyciel1','$data','$NumerLekcji','$temat')";
                if(mysqli_query($polaczenie,$insert)){
                    echo "zostalo dodane";
                }
            }
            
            mysqli_close($polaczenie);

            
        ?> 
        <form method="POST">
        <ol> 
            
             Wybierz przedmiot <select name="Przedmiot">
                    <?php
                    for ($x=0;$x<count($przedmiot);$x++){
                        echo "<option value=$idprzedmiot[$x]>$przedmiot[$x]</option>";
                    }

                    ?>
                </select>
                <br><br>
                Wybierz nauczyciela
            
                <select name="Nauczyciel">
                    <?php
                    for ($x=0;$x<count($nauczyciel);$x++){
                        echo "<option value=$idnauczyciel[$x]>$nauczyciel[$x]</option>";
                    }

                    ?>
                </select>
        
        <br><br>
        <label for="data">Podaj datę </label>
        <input type="date" name="data" id="data">
        <br><br>
        Podaj nr lekcji
        <select name="Nr">
            <?php
            for ($a=0;$a<14;$a++){
                echo "<option value=$a>$a</option>";
            }
            ?>
            </select>
            <br><br>
            
            <label for="temat">Podaj temat</label>
            <input type="text" name="temat" id="temat">
            
        </ol>
        <input type="submit" value="Zapisz dane">
        </form>
    </section>    
    <br><br>
    <footer>Stronę wykonał Kamil</footer>
</body>
</html>