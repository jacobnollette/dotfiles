function env_push () {
	git push tower $1;
	git push project $1;
	git push staff $1;
}

