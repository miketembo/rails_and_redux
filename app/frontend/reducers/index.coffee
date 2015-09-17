{ combineReducers } = require 'redux'
merge = require 'lodash/object/merge'

actions = require '../actions'

initialState =
  items: []
  meta: {}
  search: ''
  person: {}

people = (state = initialState, action) ->
  switch action.type
    when actions.RECEIVE_PEOPLE
      items: action.people, meta: action.meta
    else
      state

search = (state = initialState, action) ->
  switch action.type
    when actions.REQUEST_PEOPLE
      search: action.search
    else
      state

person = (state = initialState, action) ->
  switch action.type
    when actions.RECEIVE_PERSON
      person: action.person
    else
      state

module.exports = combineReducers
  people: people
  search: search
  person: person
