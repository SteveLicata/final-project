Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # welcome route
  root "welcome#home", as: "home_page"

  # song search routes
  get "/songs/search" => "songs#song_form", as: "song_search"

  post "/songs/guitar-party-api" => "songs#song_guitar_party_api"

  get "/songs/guitar-party-api-call" => "songs#guitar_party_api", as: "guitar_party_song_api"

  # route adds song to playlist
  post "/songs/add-to-playlist"  => "songs#add_song_to_a_playlist", as: "add_song_to_a_playlist"


  # chord search routes
  get "/chord/search" => "chords#chord_form", as: "chord_search"

  post "/chords/guitar-party-api" => "chords#chord_guitar_party_api"

  get "/chords/guitar-party-api-call" => "chords#guitar_party_api", as: "guitar_party_chord_api"


  # user routes
  resources :users

  # song routes
  resources :songs

  # chord routes
  resources :chords

  # playlist routes
  resources :playlists

  #route to remove song from playlist
  post "/playlists/remove_song_from_playlist" => "playlists#remove_song_from_playlist", as: "remove_song_from_playlist"

end
