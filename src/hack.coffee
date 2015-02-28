# need to find a better one
cssPath = (el) ->
  if !(el instanceof Element)
    return
  path = []
  while el.nodeType == Node.ELEMENT_NODE
    selector = el.nodeName.toLowerCase()
    if el.id
      selector += '#' + el.id
      path.unshift selector
      break
    else
      sib = el
      nth = 1
      while sib = sib.previousElementSibling
        if sib.nodeName.toLowerCase() == selector
          nth++
      if nth != 1
        selector += ':nth-of-type(' + nth + ')'
    path.unshift selector
    el = el.parentNode
  path.join ' > '

getFunc = (word, prefix)=>
  if prefix is 'lower_case'
    func = "#{word}"
  else if prefix is 'upper_case'
    func = "#{word}".toUpperCase()
  else
    func = "#{prefix}#{word[0].toUpperCase()}#{word.slice(1)}"

startHacking = =>
  if typeof jQuery == 'undefined'
    setTimeout startHacking, 1000
  else
    jQuery.fn.hack = () ->
      $objects = $(this)
      for el, index in $objects
        console.log "--------------- FLASH ELEMENT #{index} CSS #{cssPath el}---------------"
        lists = []
        lists = lists.concat alphabet.split(' '), mediaWords.split(' ')

        for prefix in before
          for word in lists
            func = getFunc(word, prefix)
            if el[func]
              console.log "FLASH FUNCTION: #{func}"
       return
    jQuery('object[type="application/x-shockwave-flash"]').hack()


startHacking()