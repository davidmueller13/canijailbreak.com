<!doctype html>
<html lang="en">
    <head>
        <title>Can I Jailbreak? - Find out if you can jailbreak your iOS device</title>
        <link rel="stylesheet" type="text/css" href="//ipsw.me/assets/ipsw.me/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="/static/css/style.css">
        <link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Find out whether you can jailbreak your iOS device.">
        <meta name="keywords" content="jailbreak, ios, jailbreak ios, iphone, ipad, redsn0w, taig, p0sixspwn, apple">
    </head>

    <body>
        <div class="container">
            <div class="top">
                <div class="col-md-6 col-md-offset-2">
                    <div class="col-sm-4 hidden-xs">
                        <a href="http://www.icj.me/"><img src="http://www.icj.me/assets/images/penguin.png" style="width: 100px; height: 100px;" alt="Just a Penguin"></a>
                    </div>
                    <div class="col-xs-12 col-sm-8 text-center">
                        <h1>Can I Jailbreak?</h1>
                        <p style="color: grey"><small>by <a href="https://www.icj.me/">Just a Penguin</a></small></p>
                    </div>
                </div>

                <div class="clearfix"></div>
            </div>

            <div class="most-recent text-center">
                <p>My iOS device is on <strong>iOS {{ .MostRecent.IOS.Start }} {{ with .MostRecent.IOS.End }} &rarr; {{ . }} {{ end }}</strong><br>

                {{ if .MostRecent.Jailbroken }}

                    <span class="text-success"><i class="fa fa-check"></i> Jailbreak using <a href="{{.MostRecent.URL}}">{{ .MostRecent.Name }} version {{ .MostRecent.Version }}</a>.</a></p>

                    {{ with .MostRecent.Caveats }}
                        <p class="text-warning">{{ .MostRecent.Caveats }}</p>
                    {{ end }}

                    {{ range $plat := .MostRecent.Platforms }}
                        <i class="fa fa-{{ GetIconName $plat }}" title="{{$plat}} compatible"></i>
                    {{ end }}

                {{ else }}
                    <span class="text-danger"><i class="fa fa-times"></i> No jailbreak yet :(. Check back later!</span></p>

                    <em>If you are already jailbroken, we recommend that you <strong>do not upgrade</strong> or you will lose your jailbreak!</em>
                {{ end }}
            </div>

            <hr>

            <div class="previous">
                {{ range $jb := .Jailbreaks }}
                    <div class="col-xs-6 col-sm-6 col-md-4 jailbreak">
                        <h3>iOS {{ $jb.IOS.Start }} {{ with $jb.IOS.End }} &rarr; {{ $jb.IOS.End }} {{ end }}</h3>
                        {{ if $jb.Jailbroken }}
                            <p class="text-success"><i class="fa fa-check"></i> Jailbreak using <a href="{{ $jb.URL }}">{{ $jb.Name }} version {{ $jb.Version }}</a>.</p>
                            {{ with $jb.Caveats }}
                                <p class="text-warning">{{ $jb.Caveats }}</p>
                            {{ end }}
                        {{ else }}
                            <p class="text-danger">
                                <i class="fa fa-times"></i> No jailbreak yet :(. Check back later!<br>
                                <em>If you're already jailbroken, we recommend that you <strong>do not upgrade</strong> or you will lose your jailbreak!</em>
                            </p>
                        {{ end }}

                        {{ range $plat := $jb.Platforms }}
                            <i class="fa fa-{{ GetIconName $plat }}" title="{{$plat}} compatible"></i>
                        {{ end }}

                    </div>
                {{ end }}

                <div class="clearfix"></div>
            </div>

            <hr>

            <div class="footer">
                canijailbreak.com is <a href="https://github.com/cj123/canijailbreak">open source on GitHub</a>. thanks to chpwn for the <a href="http://jailbrea.kr">inspiration</a>. previous information (and more) gathered from <a href="https://www.theiphonewiki.com/wiki/Jailbreak">The iPhone Wiki</a>.<br><br>

                <a href="https://ipsw.me/">IPSW Downloads can be found here</a>
            </div>
        </div>
    </body>
</html>
