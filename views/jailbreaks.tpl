
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

        {{ with .MostRecent.Caveats }}
            <p class="text-warning">{{ .MostRecent.Caveats }}</p>
        {{ end }}

        <em>If you are already jailbroken, we recommend that you <strong>do not upgrade</strong> or you will lose your jailbreak!</em>
    {{ end }}
</div>

<hr>

<div class="previous">
    {{ range $jb := .Jailbreaks }}
        <div class="col-xs-12 col-sm-6 col-md-4 jailbreak">
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
