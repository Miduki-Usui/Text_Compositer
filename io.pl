sub editfile{
	local($output)=$_[0];
	$output=">> ".$output;
	local($input)=$_[1];

	@in=();
	$out="";

	open(IN,$input);
	@in = <IN>;
	close(IN);

	open(OUT,$output);
	print(OUT @in);
	close(OUT);

}

1;
