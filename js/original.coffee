window.onload = ->
   paper.setup("myCanvas")
   center = paper.view.getCenter()
   galactic_center = new paper.Path center, center.add([300,0])
   galactic_center.strokeColor = 'black'
   jQuery.getJSON "original_pulsars.json", (data,status)->
      console.log "Drawing original #{data.length} pulsars"
      _.each data, (pulsar)-> drawPulsar pulsar, center
   paper.view.draw()
