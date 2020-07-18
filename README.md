# Friendly GNU/Linux Thread/Website

This is a website with information on using GNU+Linux, mostly targeted to new
users.  It is a supporting element to the Friendly GNU/Linux threads found on
4chan's /g/ board.

## Contributing

If you wish to contribute to the website, send a patch to
`~tyil/public-inbox@lists.sr.ht`.

Mirrors of this repository can be found at the following locations:

- <https://git.sr.ht/~tyil/www-fglt.nl>
- <https://gitlab.com/skitties/websites/fglt.nl>
- <https://github.com/scriptkitties/fglt>

### Making a development copy

These instructions should work using Bash on a Linux-based OS, and maybe on
BSD, too---not tested yet.  They're known to work on Debian.  They use rbenv
with ruby-build to build an up-to-date Ruby stack in your home directory.

Install rbenv:

	$ git clone https://github.com/rbenv/rbenv.git ~/.rbenv
	$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
	$ ~/.rbenv/bin/rbenv init  # Do what it says
	$ exec bash -l

Install ruby-build:

	$ mkdir -p "$(rbenv root)"/plugins
	$ git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

List available stable versions of Ruby, and install the most recent one; at the
time of writing, this is v2.7.1.  The build may take a while.

	$ rbenv install --list | awk '/^[0-9]/{ver=$0} END{print ver}'
	$ rbenv install 2.7.1
	$ rbenv global 2.7.1

You may have to [install some
dependencies](https://github.com/rbenv/ruby-build/wiki#suggested-build-environment)
for the build to work.

Clone the site repository and change directory into it:

	$ git clone https://git.sr.ht/~tyil/www-fglt.nl
	$ cd www-fglt.nl

Install Ruby libraries; this also takes a while.

	$ bundle install

Run the development web server:

	$ bundle exec jekyll serve

You should then be able to browse to <http://127.0.0.1:4000/>, and changes you
make to the site should be reflected in your browser after a refresh.

### Sharing your changes

Follow the instructions on [git-send-email.io](http://git-send-email.io/)
relevant to your operating system to get set up with
[`git-send-email`](https://git-scm.com/docs/git-send-email).  We can't give
generic instructions here, as how to do this depends on too many
variables---chiefly your operating system and email provider.

Then, assuming you've been working on `master`, do this:

	$ git config format.subjectPrefix 'PATCH www-fglt.nl'
	$ git send-email origin/master

If you're trying to stay anonymous, you should probably send *yourself* a test
first, and check the headers of the email you receive carefully, because the
messages sent might include identifying personal or network information in the
headers or commit data that you'd rather not share.  It'll be published to
a *public mailing list*, so you need to be sure you're comfortable sharing
everything in there.

Once you're confident it all looks sane, you can set up the maintainer address,
and submit your patches for real:

	$ git config sendemail.to '~tyil/public-inbox@lists.sr.ht'
	$ git send-email origin/master

## License

### Content

All content is released under the CC-BY-SA license, unless explicitly stated
otherwise on a given page.

### Source code

The source code is all released under the GNU General Public License, which can
be found in `LICENSE`.
