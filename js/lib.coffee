
# original pulsar ids
@original_ids = [ "J1731-4744","J1456-6843","J1243-6423","J0835-4510","J0953+0755","J0826+2637","J0534+2200","J0528+2200","J0332+5434","J2219+4754","J2018+2839","J1935+1616","J1932+1059","J1645-0317"]

@dot = (coordinates,color='red')->
   c = new paper.Path.Circle(coordinates,3)
   c.fillColor = color

@drawPulsar = (pulsar,center,factor=6,color='black',drawlines=true,fontFamily='Verdana',fontSize=12,fontWeight='bold')->
   dashes = pulsar.period.replace(/0/g,'∙')
   dashes = dashes.replace(/1/g,'|')
   text = new paper.PointText
      point: center
      content: dashes
      fillColor: color
      fontFamily: fontFamily
      fontSize: fontSize
      fontWeight: fontWeight
   # shift the position
   rightCenter = text.parentToLocal(text.bounds.rightCenter)
   distance = pulsar.distance*factor
   shift = [distance,-rightCenter.y]
   midPoint = center.add shift
   text.point = midPoint
   text.pivot = text.parentToLocal(center)
   
   if drawlines
      path = new paper.Path center,center.add([distance,0])
      path.strokeColor = color
      path.pivot = center
      path.rotate pulsar.angle
      # add a background so the lines don't mess up the pattern
      rect = new paper.Path.Rectangle(text.bounds)
      rect.fillColor = 'white'
      rect.pivot = rect.parentToLocal center
      rect.rotate pulsar.angle
      rect.sendToBack()
   # do this last, so the background rectangle has the right dimensions:
   text.rotate pulsar.angle

@convertATNF = (data)->
   H_transition = new BigNumber('7.04024183647e-10')
   count = 0
   return _.map data, (pulsar)->
      count++
      period = new BigNumber(pulsar.P0)
      Hperiod = period.div(H_transition)
      rounded = Math.round(Hperiod.toNumber())
      binary = rounded.toString(2)
      dist = new BigNumber(pulsar.DIST).toNumber()
      result =
         psr: count
         period: binary
         angle: 360-pulsar.Gl # for some weird reason, everything is mirrored
         distance: new BigNumber(pulsar.DIST).toNumber()
         lum: pulsar.R_LUM
         lum_14: pulsar.R_LUM14
