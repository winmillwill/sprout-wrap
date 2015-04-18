require 'yaml'

brew = Hash[{
  'taps' => `brew tap`,
  'formulae' => `brew leaves`,
  'casks' => `brew cask ls`
}.map{ |k,b| [k, b.lines.map {|l| l.strip!}] }]
soloist = YAML.load(File.read 'soloistrc')
brew.each do |k, b|
  soloist['node_attributes']['sprout']['homebrew'][k] = b
end
File.write('soloistrc', soloist.to_yaml)
