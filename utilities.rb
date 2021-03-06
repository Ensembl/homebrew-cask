#Template generated on 2021-05-07 16:43:38 +0100
#Do not edit this file. Modify the relevant config and regenerate

require 'digest'

class Utilities < Formula
  url 'file://'+File.expand_path(__FILE__)
  desc 'Dependencies for the Utilities formula'
  sha256 Digest::SHA256.file(File.expand_path(__FILE__)).hexdigest
  version '1'

  depends_on 'unison'

  def install
    File.open('utilities', 'w') { |file|
      file.write '#!/bin/sh'+"\n"
      deps.each do | dep |
        f = dep.to_formula
        file.write "echo "+[f.full_name, f.version, f.prefix].join("\t")+"\n"
      end
    }
    bin.install 'utilities'
  end
end
    