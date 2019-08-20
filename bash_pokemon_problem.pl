use 5.010;
use strict;
use warnings;
 
 print "Enter a line that contains n space separated integers\n";  $b = <>;

my @numbers = ();
my $countTakenPokemons = 0;


# adaug numerele fara spatii intre ele din a doua linie intr-un array 

for my $character (split / /, $b) {
   
    push(@numbers, $character);
    
  }
    
  for(my $i= 0; $i < @numbers; $i++){
       
       if($numbers[$i]%2==0){
        
      $countTakenPokemons++;
      }
    
 }
 
  print "$countTakenPokemons\n";
 



