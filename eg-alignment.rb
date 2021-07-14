#Template generated on 2018-01-05 17:06:12 +0000
#Do not edit this file. Modify the relevant config and regenerate

require 'digest'

class EgAlignment < Formula
  url 'file://'+File.expand_path(__FILE__)
  desc 'Dependencies for the EgAlignment formula'
  sha256 Digest::SHA256.file(File.expand_path(__FILE__)).hexdigest
  version '3.1'

  depends_on 'ensembl/external/blast'
  depends_on 'ensembl/external/emboss'
  depends_on 'ensembl/external/exonerate22'
  depends_on 'ensembl/external/exonerate24'
  depends_on 'fontconfig' => ["without-docs"]
  depends_on 'bowtie2'
  depends_on 'bwa'
  depends_on 'ensembl/external/gmap-gsnap'
  depends_on 'ensembl/external/hisat2'

  def install
    File.open('eg-alignment', 'w') { |file|
      file.write '#!/bin/sh'+"\n"
      deps.each do | dep |
        f = dep.to_formula
        file.write "echo "+[f.full_name, f.version, f.prefix].join("\t")+"\n"
      end
    }
    bin.install 'eg-alignment'
  end
end
    
