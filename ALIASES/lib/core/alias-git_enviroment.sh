function env_push () {
	git push tower $1;
	git push project $1;
	git push staff $1;
}

function tower_push () {
	git push tower $1;
}

function github_push () {
	git push github $1;
}

function nas_push () {
	git push project $1;
	git push staff $1;
}
