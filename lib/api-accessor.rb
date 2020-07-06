#require 'net/http'
require 'rest-client'
require 'json'

def get_people
    people = RestClient.get('https://ghibliapi.herokuapp.com/people')
    people = JSON.parse(people)
    people
end

def get_films
    films = RestClient.get('https://ghibliapi.herokuapp.com/films')
    films = JSON.parse(films)
    films
end


#uri = URI('https://ghibliapi.herokuapp.com/films')
#Net::HTTP.get(uri) # => String
