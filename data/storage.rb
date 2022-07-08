require 'json'

class Store
  def read(category, path)
    file = File.read(path)
    data = JSON.parse(file, symbolized_names: true)
    data[category]
  end

  def write(category, path, data)
    data = { category => data }
    data = data.to_json
    File.write(path, data)
  end
end

# data1 = {
#   books: [{
#     title: "vggvgh",
#     author: "hgfytfg"
#   },
#   {
#     title: "gfjnk",
#     author: "homjnm"
#   },
#   {
#     title: "euieru",
#     author: "gnmmtjk"
#   },
#   ]
# }

# {
#   "books": [{
#     "title": "vggvgh",
#     "author": "hgfytfg"
#   },
#   {
#     "title": "gfjnk",
#     "author": "homjnm"
#   },
#   {
#     "title": "euieru",
#     "author": "gnmmtjk"
#   }]
# }
