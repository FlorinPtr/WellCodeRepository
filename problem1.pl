use strict;
use warnings;
use 5.010;
 
print "Enter first number\n";  $a = <>;
print "Enter second number\n";  $b = <>;
my @dividers;
my $count = 0;

for ( my $i = 1 ;  $i <= $a ;  $i ++ ){
   
     if($a%$i == 0){
          $dividers[$count] = $i;
          $count++;
     }
}

my $lengtht = @dividers;

if( $lengtht >= $b){     
   print "$dividers[$b-1]\n";  
}
else{
     print "-1\n";
}
