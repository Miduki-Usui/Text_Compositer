sub editfile{
	local($output)=$_[0];
	$output=">> ".$output;
	local($input)=$_[1];

	@in=();
	$out="\n";

	open(IN,$input);
	@in = <IN>;
	foreach $out (@in) {
		print $out;
	}
	close(IN);

	open(OUT,$output);
	print(OUT $out);
	close(OUT);

}

1;
