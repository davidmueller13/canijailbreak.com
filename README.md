# canijailbreak.com

a replacement jailbreaking site for the (seemingly out of date) [jailbrea.kr](http://jailbrea.kr).

## Contributing

We welcome contributions to the code/design/data of the site! Currently, it's fairly basic.

A few guidelines for contributing:

1. **No beta jailbreaks**
2. **No beta iOS versions**
3. **Use one pull request per jailbreak addition** - this will allow us to easily approve/reject new additions on a one-by-one basis.
4. Commit tags for new jailbreaks, in the form of `[jailbreak] <name> <version> for <ios versions>` are recommended :)
5. Try to find the _simplest_ route to jailbreak, such as one click GUIs, that support _as many devices/ios versions as possible_.

## Building

This project is written in golang and uses the [beego](http://beego.me/) framework. To build the project, you must first have golang installed.

Follow the [quickstart guide at beego.me](http://beego.me/quickstart) to install the necessary things, then to run the app do the following (ensuring you're in the project directory):

1. run `bee run`
2. go to `http://localhost:9062` in your browser
3. for debugging, change the "runmode" in `conf/app.conf` to "dev".
