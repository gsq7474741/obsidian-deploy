# frozen_string_literal: true

Jekyll::Hooks.register [:notes], :post_convert do |doc|
  replace(doc)
end

def replace(doc)
  doc.content.gsub!(/!\[\[(?=.+\.(png|jpg|jpeg|JPEG|bmp)\]\])/, "![](/notes/images/")
  doc.content.gsub!(/(?<!!\[\]\(\/notes\/images\/\w)\.(png|jpg|jpeg|JPEG|bmp)\]\]/, ")")
end

# [[corr_all.png]]