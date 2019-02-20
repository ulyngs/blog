function Meta(m)
  m.author = "Hello, World!"
  return m
end

function Emph(element)
  return pandoc.Strong(element.content)
end

function Span (el)
  if el.classes[1] == "correction" then
    table.insert(el.content, 1, pandoc.RawInline('latex', '\\mccorrect{'))
    table.insert(el.content, pandoc.RawInline('latex', '}'))
    end
  return el.content
end