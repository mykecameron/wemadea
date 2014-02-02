$(document).ready ->
  setImage = (image) ->
    $('#image-container').css
      'background-image': "url('#{image}')"
      'background-repeat': 'no-repeat' # get rid of this by cleaning up containers

  $('#image-controls li').on 'click', (event) ->
    image = $(event.target).data 'image'
    setImage image

  setStory = (story) ->
    promise = $.get "/stories/#{story}"
    promise.done (story) =>
      body = "<p>#{story.body.split("\n").join('</p><p>')}</p>"
      $('#story').html body

  $('#story-controls li').on 'click', (event) ->
    story = $(event.target).data 'story_id'
    setStory story

