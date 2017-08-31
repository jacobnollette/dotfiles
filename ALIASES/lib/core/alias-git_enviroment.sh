function env_push () {
	git push tower $1;
	git push project $1;
	git push staff $1;
}

function tower_push () {
	git push tower $1;
}

function tower_pull () {
	git pull tower $1;
}

function github_push () {
	git push github $1;
}

function github_pull () {
	git pull github $1;
}

function project_push () {
	git push project $1;
}

function project_pull () {
	git pull project $1;
}

function staff_push () {
	git push staff $1;
}

function staff_pull () {
	git pull staff $1;
}

function nas_push () {
	staff_push $1;
	project_push $1;
}
