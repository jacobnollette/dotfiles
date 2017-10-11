function git_get_branch () {
	if [ -z "$1"]; then
		#_the_branch=`git branch | grep \* | cut -d ' ' -f2-`;
		_the_branch=`git rev-parse --abbrev-ref HEAD`;
	else
		_the_branch=$1;
	fi
	echo $_the_branch;
}
function env_push () {
	_the_branch=`git_get_branch $1`;
	git push tower $_the_branch;
	git push project $_the_branch;
	git push staff $_the_branch;
}

function tower_push () {
	_the_branch=`git_get_branch $1`;
	git push tower $_the_branch;
}

function tower_pull () {
	_the_branch=`git_get_branch $1`;
	git pull tower $_the_branch;
}

function github_push () {
	_the_branch=`git_get_branch $1`;
	git push github $_the_branch;
}

function github_pull () {
	_the_branch=`git_get_branch $1`;
	git pull github $_the_branch;
}

function project_push () {
	_the_branch=`git_get_branch $1`;
	git push project $_the_branch;
}

function project_pull () {
	_the_branch=`git_get_branch $1`;
	git pull project $_the_branch;
}

function staff_push () {
	_the_branch=`git_get_branch $1`;
	git push staff $_the_branch;
}

function staff_pull () {
	_the_branch=`git_get_branch $1`;
	git pull staff $_the_branch;
}

function nas_push () {
	_the_branch=`git_get_branch $1`;
	staff_push $_the_branch;
	project_push $_the_branch;
}
