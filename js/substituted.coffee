substituted_ids = [ "J1623-2631","J1456-6843","J1243-6423","J0835-4510","J0953+0755","J0826+2637","J0534+2200","J1012+5307","J0332+5434","J2219+4754","J2018+2839","J1935+1616","J1932+1059","J1645-0317"]

# Some pulsars are changed here for aesthetic reasons.

window.onload = ->
   paper.setup("myCanvas")
   center = paper.view.getCenter()
   galactic_center = new paper.Path center, center.add([300,0])
   galactic_center.strokeColor = 'black'
   jQuery.getJSON "pulsars.json", (data,status)->
      console.log "Found #{data.length} pulsars"
      pulsars = _.map substituted_ids, (id)-> _.find data, {'PSRJ':id }
      console.log "Found #{pulsars.length} original pulsars"
      p2 = convertATNF pulsars
      _.each p2, (pulsar)-> drawPulsar pulsar, center, 80,'black','Noyh Black'
   paper.view.draw()
