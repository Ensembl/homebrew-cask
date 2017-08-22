#Template generated on 2017-08-22 09:48:17 +0100
#Do not edit this file. Modify the relevant config and regenerate

require 'digest'

class EgMaker < Formula
  url 'file://'+File.expand_path(__FILE__)
  desc 'Dependencies for the EgMaker formula'
  sha256 Digest::SHA256.file(File.expand_path(__FILE__)).hexdigest
  version '4'

  depends_on 'gsl'
  depends_on 'suite-sparse'
  depends_on 'homebrew/science/lp-solve'
  depends_on 'homebrew/science/augustus' => ["with-cgp"]
  depends_on 'ensembl/ensembl/exonerate22'
  depends_on 'ensembl/ensembl/blast'
  depends_on 'ensembl/ensembl/repeatmasker'
  depends_on 'homebrew/science/snap'
  depends_on 'ensembl/ensembl/maker'

  def install
    File.open('eg-maker', 'w') { |file|
      file.write '#!/bin/sh'+"\n"
      deps.each do | dep |
        f = dep.to_formula
        file.write "echo "+[f.full_name, f.version, f.prefix].join("\t")+"\n"
      end
    }
    bin.install 'eg-maker'
  end
end
    