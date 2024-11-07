int fact(int f) {
	if (f <= 1) {
		return 1;}
	int result = f * fact(f-1);
	return result;
}
