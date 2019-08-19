use strict;
use warnings;
use 5.010;
 
 
my $usbComputer = 2;
my $ps2Computer = 1;
my $busb_and_ps2Computer = 1;
my $equipedComputers = 0;
my $totalCost = 0;
 
my %Price_and_TypeOfTheMousee = (
5=>"usb",
6=>"ps2",
3=>"ps2",
7=>"ps2"
);

# sortez hashmap-ul dupa pret (crescator)
foreach my $itemPrice (sort keys %Price_and_TypeOfTheMousee) {
   
# setez un boolean sa verifice daca mouse-ul din lista a fost cumparat deja
my $isMouseBuyed = 0;


#identific tipul de mouse (usb sau ps2)
my $mouseType =  $Price_and_TypeOfTheMousee{$itemPrice};

if( $usbComputer > 0 && $mouseType eq("usb")){

$equipedComputers += 1;
$totalCost += $itemPrice;
$usbComputer--;
$isMouseBuyed = 1;
}

if(!$isMouseBuyed && $ps2Computer > 0 && $mouseType eq("ps2")){

$equipedComputers += 1;
$totalCost += $itemPrice;
$ps2Computer--;
$isMouseBuyed = 1;
}

if(!$isMouseBuyed && $busb_and_ps2Computer > 0 ){

$equipedComputers += 1;
$totalCost += $itemPrice;
$busb_and_ps2Computer--;
$isMouseBuyed = 1;
 }
}

# afiseaza nr de computere echipate cu mouse-uri si dupa un spatiu costul echiparii 
print $equipedComputers." $totalCost\n";
