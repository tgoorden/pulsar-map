
window.onload = ->
   paper.setup("myCanvas")
   center = paper.view.getCenter()
   galactic_center = new paper.Path center, center.add([300,0])
   galactic_center.strokeColor = 'black'
   jQuery.getJSON "pulsars.json", (data,status)->
      console.log "Found #{data.length} pulsars"
      pulsars = convertATNF data
      _.each pulsars, (pulsar)-> drawPulsar pulsar, center, 80,'black', false,'Verdana',4,'regular'
   paper.view.draw()
