


var makeThePie = function(piedata) {

 var tooltip = d3.select('body').append('div')
 .style('font-size', '14px')
 .style('position', 'absolute')
 .style('padding', '0 10px')
 .style('background', 'white')
 .style('opacity', 0)


var width = 400,
    height = 400,
    radius = 200,
    colors = d3.scale.category20c();

   var pie = d3.layout.pie()
        .value(function(d) {
            return d.value;
        })

   var arc = d3.svg.arc()
      .outerRadius(radius)


   var myChart = d3.select('#piechart').append('svg')
        .attr('width', width)
        .attr('height', height)
        .append('g')
          .attr('transform', 'translate('+(width-radius)+','+(height-radius)+')')
          .selectAll('path').data(pie(piedata))
          .enter().append('g')
              .attr('class', 'slice')

    var slices = d3.selectAll('g.slice')
      .append('path')
      .attr('fill', function(d,i){
        return colors(i);
      })
      .attr('d', arc)


    var path = d3.selectAll('path')
    .on('mouseover', function(d){
    var nodeSelection = d3.select(this)
    nodeSelection.select("text").style({color:"red"});


    console.log("YOU ARE HOVERING OVER A SECTION")


          });



    var text = d3.selectAll('g.slice')
      .append('text')
      .text(function(d,i){
          console.log(d);
          return d.data.label + " " + d.data.value + '%';
      })
      .style('font-size', '14px')
      .attr('text-anchor', 'middle')
      .attr('fill', 'white')
      .attr('transform', function(d){
          d.innerRadius = 0;
          d.outerRadius = radius;
          return 'translate('+arc.centroid(d)+')'
      })



console.log('made a pie')
}






