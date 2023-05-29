<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Praktyki uczniów</title>
</head>
<body>
    <div class="header">
        <h1>Praktyki uczniów w technikum</h1>
    </div>
    <div class="nav">
    <button id="wysietlaniezakaldow">Wyświetl zakłady pracy</button>
    <a href='zadanie.php?hello=true'>Run PHP Function</a>
    </div>
    <div class="main">
        <?php
        $polaczenie=mysqli_connect('localhost','root','','praktyki');
        $zapytanie="select * from osoba";
        $wynik=mysqli_query($polaczenie,$zapytanie);
        echo "<ol>";
        while($wiersz=mysqli_fetch_array($wynik)){
            echo "<li>".$wiersz ["imie"]." ".$wiersz['nazwisko'];"</li>";
        }
        $komunikat="Pobralismy osoby";
        ?>
    </div>
    <div class="wprowadzanie_danych">
        <?php 
        if ($polaczenie){
            $komunikat=$komunikat."<br>Baza działa";
            $zapytanie="SELECT * FROM osoba";
            $wynik=mysqli_query($polaczenie,$zapytanie);
            while($wiersz=mysqli_fetch_array($wynik)){
                $osoba[]= $wiersz['imie']." ".$wiersz['nazwisko'];
                $idosoba[]=$wiersz['id'];
            }
            $komunikat=$komunikat."<br>Pobralismy osoby";
            $zapytanie="SELECT * FROM zakład_pracy";
            $wynik=mysqli_query($polaczenie,$zapytanie);
            while($wiersz=mysqli_fetch_array($wynik)){
                $zaklad[]= $wiersz['nazwa'];
                $idzaklad[]=$wiersz['id'];
            }
            $komunikat=$komunikat."<br>Pobralismy zakłady pracy";
            }
            if($_SERVER["REQUEST_METHOD"]=="POST"){
                $datapoczatek=$_POST['datapoczatek'];
                $datakoniec=$_POST['datakoniec'];
                $ocena=$_POST['ocena'];
                $osoba1=$_POST['osoba'];
                $zaklad1=$_POST['zaklad'];
                $insert="INSERT INTO praktyka VALUES(null,'$osoba1','$zaklad1','$datapoczatek','$datakoniec')";
                if(mysqli_query($polaczenie,$insert)){
                    $komunikat=$komunikat."<br>Dodano do bazy";
                }
                else{
                    echo "Bład";
                }
                
               
            }
            
            ?>
            <form method="POST">
            <label for="osoba">Wybierz osobe</label>
            <select name="osoba">
                
                <?php
                for ($x=0;$x<count($osoba);$x++){
                    echo "<option value=$idosoba[$x]>$osoba[$x]</option>";
                }

                ?>
            </select>
            <br>
            <label for="zaklad">Wybierz zaklad pracy</label>
            <select name="zaklad">
                
                <?php
                for ($x=0;$x<count($zaklad);$x++){
                    echo "<option value=$idzaklad[$x]>$zaklad[$x]</option>";
                }

                ?>
            </select>
                <br>
                <label for="datapoczatek">Podaj datę rozpoczęcia praktyk</label>
                <input type="date" name="datapoczatek" id="datapoczatek">
                <br>
                <label for="datakoniec">Podaj datę zakończenia praktyk</label>
                <input type="date" name="datakoniec" id="datakoniec">
                <br>
                <label for="ocena">Podaj cene</label>
                <input type="number" name="ocena" id="ocena">
                <br>
                <input type="submit" value="Zapisz dane">
                <input type="reset" value="Reset">
            </form>
            
    
    </div>
    <div class="komunikaty">
        <?php
       echo $komunikat;   
        ?>
    </div>
    <div class="zaklady">
    <?php
  function runMyFunction(){
    $polaczenie=mysqli_connect('localhost','root','','praktyki');
        $zapytanie="select * from zajład_pracy";
        $wynik=mysqli_query($polaczenie,$zapytanie);
        echo "<ol>";
        while($wiersz=mysqli_fetch_array($wynik)){
            echo "<li>".$wiersz ["nazwa"];"</li>";
        }
    }


?>
    </div>
    <div class="stopka">
        Kamil Kapustka
    </div>
    
</body>
</html>