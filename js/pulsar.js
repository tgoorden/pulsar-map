
pulsars =
[
 {
   "psr": 1,
   "period": "1000110001111100100011011101010",
   "period-base-10": 1178486506,
   "period-seconds": 0.8296830003,
   "angle": 17,
   "distance": 27,
   "implied-distance-parsecs": 2300
 },
 {
   "psr": 2,
   "period": "10110010011000101011101101111",
   "period-base-10": 374101871,
   "period-seconds": 0.2633767643,
   "angle": 49,
   "distance": 2,
   "implied-distance-parsecs": 160
 },
 {
   "psr": 3,
   "period": "100000110110010110001001111000",
   "period-base-10": 551117432,
   "period-seconds": 0.3880000002,
   "angle": 58,
   "distance": 56,
   "implied-distance-parsecs": 4700
 },
 {
   "psr": 4,
   "period": "111100011011011001010100111",
   "period-base-10": 126726823,
   "period-seconds": 0.0892187481,
   "angle": 95,
   "distance": 15,
   "implied-distance-parsecs": 1300
 },
 {
   "psr": 5,
   "period": "10101011011001101100101000011",
   "period-base-10": 359455043,
   "period-seconds": 0.2530650432,
   "angle": 129,
   "distance": 1,
   "implied-distance-parsecs": 120
 },
 {
   "psr": 6,
   "period": "101100111011010101011110001011",
   "period-base-10": 753751947,
   "period-seconds": 0.5306595992,
   "angle": 162,
   "distance": 2,
   "implied-distance-parsecs": 160
 },
 {
   "psr": 7,
   "period": "10110011100000101010000010",
   "period-base-10": 47057538,
   "period-seconds": 0.0331296448,
   "angle": 174,
   "distance": 18,
   "implied-distance-parsecs": 1500
 },
 {
   "psr": 8,
   "period": "100111101000110101000100111000100",
   "period-base-10": 5320116676,
   "period-seconds": 3.7454907997,
   "angle": 177,
   "distance": 11,
   "implied-distance-parsecs": 980
 },
 {
   "psr": 9,
   "period": "111100011111100011111000010110",
   "period-base-10": 1014906390,
   "period-seconds": 0.7145186427,
   "angle": 145,
   "distance": 7,
   "implied-distance-parsecs": 570
 },
 {
   "psr": 10,
   "period": "101101100101101001000010110001",
   "period-base-10": 764842161,
   "period-seconds": 0.538467378,
   "angle": 97,
   "distance": 10,
   "implied-distance-parsecs": 850
 },
 {
   "psr": 11,
   "period": "101111001111001110011000001101",
   "period-base-10": 792520205,
   "period-seconds": 0.5579533903,
   "angle": 68,
   "distance": 3,
   "implied-distance-parsecs": 280
 },
 {
   "psr": 12,
   "period": "11110010111110001110100011110",
   "period-base-10": 509549854,
   "period-seconds": 0.35873542,
   "angle": 52,
   "distance": 40,
   "implied-distance-parsecs": 3400
 },
 {
   "psr": 13,
   "period": "10011001011010111010010111000",
   "period-base-10": 321746104,
   "period-seconds": 0.2265170382,
   "angle": 45,
   "distance": 1,
   "implied-distance-parsecs": 81
 },
 {
   "psr": 14,
   "period": "100000110100101010001110101100",
   "period-base-10": 550675372,
   "period-seconds": 0.3876887792,
   "angle": 16,
   "distance": 4,
   "implied-distance-parsecs": 320
 }
] 

function deg(angle) {
  return angle * (180 / Math.PI);
}

function coordinate(pulsar) {
   const d = 2 * pulsar.distance;
   const a = deg(pulsar.angle);
   return [d * Math.cos(a), d * Math.sin(a) ];
}
/*
window.onload = function() {
   paper.setup("myCanvas");
   const center = paper.view.getCenter();
   var c = new paper.Path.Circle(center,10);
   c.fillColor = 'red';
   pulsars.forEach(function(pulsar) {
      var path = new paper.Path();
      path.strokeColor = 'black';
      path.moveTo(center);
      path.lineTo(center.add(coordinate(pulsar)));
      var text = new paper.PointText({
	  // point: center,
          pivot: center,
	  content: pulsar.period,
	  fillColor: 'black',
	  fontFamily: 'Courier New',
	  fontSize: 10,
          rotation: deg(pulsar.angle)
      });
   });
   paper.view.draw();
}*/
