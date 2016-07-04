$: << File.dirname(__FILE__)
require 'firkin'

class EnsemblCore < Formula
  extend Firkin
  url to_url __FILE__
  sha256 to_sha256 __FILE__
  desc 'Ensembl Core dependencies'
  version '1'
  
  depends_on 'ensembl/ensembl/exonerate22'
  depends_on 'homebrew/science/lastz'
  depends_on 'jdk'

  def install
    self.class.install_cmd('ensembl-core', bin, deps)
  end
end
