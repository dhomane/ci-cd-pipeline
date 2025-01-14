#!/usr/bin/env bash
#  vim:ts=4:sts=4:sw=4:et
#
#  Author: Hari Sekhon
#  Date: 2017-11-21 10:43:47 +0100 (Tue, 21 Nov 2017)
#
#  https://github.com/HariSekhon/Dockerfiles
#
#  License: see accompanying Hari Sekhon LICENSE file
#
#  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback to help steer this or other code I publish
#
#  https://www.linkedin.com/in/HariSekhon
#

set -euo pipefail
[ -n "${DEBUG:-}" ] && set -x
srcdir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# shellcheck source=lib/git.sh
. "$srcdir/lib/git.sh"

# access to useful functions and aliases
# shellcheck disable=SC1090
#. "$srcdir/.bash.d/aliases.sh"
#. "$srcdir/.bash.d/functions.sh"
. "$srcdir/.bash.d/git.sh"

foreachbranch "$@"

git checkout master
