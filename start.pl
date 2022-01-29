#!/usr/bin/perl

#check commandline
$argc=@argv;
$run=1;
print @argv;

while($i<=$argc){
	if($argv[$i]=="-h"){
		$file="help";
	}
	if($argv[$i]=="-v"){
		$file="version";
	}
	if($argv[$i]=="-n"){
		$file="news";
	}
	if($argv[$i]=="-r"){
		$run=0;
	}
	$i++;

	open(FILE,$file);
	while($data = <FILE>){print $data;}
	close(FILE);

}

if($run){
	exit();
}

system("./main.pl");
