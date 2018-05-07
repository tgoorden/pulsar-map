
window.onload = ->
   paper.setup("myCanvas")
   center = paper.view.getCenter()
   galactic_center = new paper.Path center, center.add([300,0])
   galactic_center.strokeColor = 'black'
   jQuery.getJSON "original_pulsars.json", (data,status)->
      _.each data, (pulsar)-> drawPulsar pulsar, center
   jQuery.getJSON "pulsars.json", (data,status)->
      pulsars = _.map original_ids, (id)-> _.find data, {'PSRJ':id }
      p2 = convertATNF pulsars
      _.each p2, (pulsar)-> drawPulsar pulsar, center, 80,'green'
   paper.view.draw()
