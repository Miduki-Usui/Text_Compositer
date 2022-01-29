sub outputfile{
	print "Type output file:";
	return <STDIN>;
}

sub inputfile{
	print "How many files do you composit for a file?:";
	$filecount=<STDIN>;
	
	@input=();

	for($i=0;$i<$filecount;$i++){
		print "Type input file:";
		$file=<STDIN>;
		push(@input,$file);
	}

	return @input;
}


1;
