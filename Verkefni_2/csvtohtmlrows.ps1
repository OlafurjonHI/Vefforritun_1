$csv = Import-Csv -Path "C:\Users\olafu\OneDrive\HÍ\Vefforitun - TÖL17\Verkefni_2\gogn.csv" -Delimiter ';' -Header h1,h2,h3,h4
$string = $null
for($i = 1; $i -le $csv.Count; $i++)
{
    $string += 
    "<tr>" + 
         "<td>" + $csv[$i].h1 + "</td>" +
         "<td>" + $csv[$i].h2 + "</td>" + 
         "<td>" + $csv[$i].h3 + "</td>" +
         "<td>" + $csv[$i].h4 + "</td>" +
    "</tr>"
            
}

$string | Out-File -FilePath "C:\Users\olafu\OneDrive\HÍ\Vefforitun - TÖL17\Verkefni_2\gogn.txt"
