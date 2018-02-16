@Houses = React.createClass
  getInitialState: ->
    houses: @props.data
  getDefaultProps: ->
    houses: []
  addHouse: (house) ->
    houses = @state.houses.slice()
    houses.push house
    @setState houses: houses
  render: ->
    React.DOM.div
      className: 'houses'
      React.DOM.h1
        className: 'title'
        'House'
      React.createElement HouseForm, handleNewHouse: @addHouse
      React.DOM.table
        className: 'table table-bordered'
        React.DOM.thead null,
          React.DOM.tr null,
            React.DOM.th null, 'Number'
              React.DOM.th null, 'City'
            React.DOM.th null, 'Country'
            React.DOM.th null, 'Street'
        React.DOM.tbody null,
          for house in @state.houses
            React.createElement House, key: house.id, house: house
