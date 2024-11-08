class User {
	String name;

	User([this.name = 'Unknown']);

	String showName() {
		return ('Hello $name');
	}
}
