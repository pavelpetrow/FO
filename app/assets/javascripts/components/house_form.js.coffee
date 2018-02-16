@HouseForm = React.createClass
  getInitialState: ->
    number: ''
    city: ''
    country: ''
  handleValueChange: (e) ->
    valueName = e.target.name
    @setState "#{ valueName }": e.target.value
    console.log(@state)
  valid: ->
    @state.number && @state.city && @state.country && @state.street
  handleSubmit: (e) ->
    e.preventDefault()
    $.post '', { house: @state }, (data) =>
      @props.handleNewHouse data
      @setState @getInitialState()
      'JSON'
  render: ->
    React.DOM.form
      className: 'form-inline'
      onSubmit: @handleSubmit
      React.DOM.div
        className: 'form-group'
        React.DOM.input
          type: 'number'
          className: 'form-control'
          placeholder: 'number'
          name: 'number'
          value: @state.number
          onChange: @handleValueChange
        React.DOM.input
          type: 'text'
          className: 'form-control'
          placeholder: 'city'
          name: 'city'
          value: @state.city
          onChange: @handleValueChange
        React.DOM.input
          type: 'text'
          className: 'form-control'
          placeholder: 'country'
          name: 'country'
          value: @state.country
          onChange: @handleValueChange
        React.DOM.input
          type: 'text'
          className: 'form-control'
          placeholder: 'street'
          name: 'street'
          value: @state.street
          onChange: @handleValueChange
        React.DOM.button
          type: 'submit'
          className: 'btn btn-primary'
          disabled: !@valid()
          'Create House'