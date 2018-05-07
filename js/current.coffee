
window.onload = ->
   paper.setup("myCanvas")
   center = paper.view.getCenter()
   galactic_center = new paper.Path center, center.add([300,0])
   galactic_center.strokeColor = 'black'
   jQuery.getJSON "pulsars.json", (data,status)->
      console.log "Found #{data.length} pulsars"
      pulsars = _.map original_ids, (id)-> _.find data, {'PSRJ':id }
      console.log "Found #{pulsars.length} original pulsars"
      p2 = convertATNF pulsars
      _.each p2, (pulsar)-> drawPulsar pulsar, center, 80,'black'
   paper.view.draw()
