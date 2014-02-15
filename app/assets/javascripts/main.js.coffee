$(document).ready ->
  setImage = (image) ->
    $('#image-container').css
      'background-image': "url('#{image}')"
      'background-repeat': 'no-repeat' # get rid of this by cleaning up containers

  $('#image-controls li').on 'click', (event) ->
    image = $(event.target).data 'image'
    setImage image

  setStory = (story, author, title) ->
    $('#story .author').html author
    $('#story .title').html title
    promise = $.get "/stories/#{story}"
    promise.done (story) =>
      body = "<p>#{story.body.split("\n").join('</p><p>')}</p>"
      $('#story .content').html body

  $('#story-controls li').on 'click', (event) ->
    target = $(event.target)
    story  = target.data 'story_id'
    author = target.data 'author'
    title  = target.data 'title'
    setStory story, author, title

