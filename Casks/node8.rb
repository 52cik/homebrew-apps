cask 'node8' do
  version '8.9.0'
  sha256 'f5d47ba3acc7de5d8449e5e07d077ae77d9590e0197c6a6dedfdab75ba0c7a82'

  # https://npm.taobao.org/mirrors/node/latest-v8.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
