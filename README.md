This is a recreation and 'improvement' of the pulsar map included on the Pioneer and Voyager missions.

## Installing

To install required npm dependencies, first run:

`npm install`

## Running

After that, you should serve the html and JS from some kind of webserver. Otherwise the JS will refuse to load.

For example:
```
npm install -g live-server
live-server
```

You can then access e.g. the original map at `http://localhost:8080/original.html`

If you want to make changes to the Coffeescript code, you can run
`./node_modules/coffeescript/bin/coffee --compile --transpile --inline-map --watch js/*.coffee`
this will track and compile all Coffeescript files. You can use your locally installed Coffeescript as well, but make sure it is version 2.x

If you'd like to download a SVG of the results, you can execute this in your browser console:
`paper.project.exportSVG()`

There are several HTML files and corresponding Coffeescript files that render a specific pulsar map:
- Original: Based on the original Pioneer and Voyager data.
- Current: A (2018) update of the same pulsar map.
- Compared: Original and current compared. Note that the pulsars lose rotational speed and thus frequency. This changes the dot pattern. The distance is the least accurate and not that necessary anyway (it's essentially a triangulation). The difference in angle is a correction of earlier data.
- All: Renders *all* pulsars on a massive map. This takes some time to complete, so be patient. It may also cause quite a few JS errors, due to missing data.

If you want to mess with the way it looks, you can easily change the font, character subsitutions and size in the `drawPulsar` function in `j/lib.coffee`.


## Source material
 
The pulsar data is taken from the ATNF database here: http://www.atnf.csiro.au/research/pulsar/psrcat/

If you download an update of the database, you'll need at the very least "JName" (PJSR), "P0" (Period) and "Dist" (Distance) and convert to JSON.

This entire project is based on [this research by Wm. Robert Johnston](http://www.johnstonsarchive.net/astro/pulsarmap.html)
