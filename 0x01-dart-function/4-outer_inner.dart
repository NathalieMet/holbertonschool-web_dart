void outer(String name, String id) {
	var splitted = name.split(' ');
	var surname = splitted[0];
	var fname = splitted[1][0];
	String inner() {
		return ("Hello Agent $fname.$surname your id is $id");
	}
	print (inner());
}
