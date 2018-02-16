@House = React.createClass
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.house.number
        React.DOM.td null, @props.house.city
      React.DOM.td null, @props.house.country
      React.DOM.td null, @props.house.street
