CKEDITOR.editorConfig = (config) ->
  config.language = 'en'
  config.width = '900'
  config.height = '400'
  config.toolbar_Pure = [
    { name: 'document',    items: [ 'Save','Preview','-','Templates' ] },
    { name: 'tools',       items: [ 'Maximize'] },
    { name: 'basicstyles', items: [ 'Bold','Italic','Underline','Strike'] },
    { name: 'paragraph',   items: [ 'NumberedList','BulletedList','-','Blockquote','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock','-','BidiLtr','BidiRtl' ] },
    { name: 'links',       items: [ 'Link','Unlink','Anchor' ] },
    { name: 'styles',      items: [ 'Styles','Format','Font','FontSize' ] },
    { name: 'colors',      items: [ 'TextColor','BGColor' ] },
    { name: 'insert',      items: [ 'Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak' ] },
  ]
  config.toolbar = 'Pure'
  true
