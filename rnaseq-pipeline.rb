#Template generated on 2017-07-25 13:32:49 +0100
#Do not edit this file. Modify the relevant config and regenerate

require 'digest'

class RnaseqPipeline < Formula
  url 'file://'+File.expand_path(__FILE__)
  desc 'Dependencies for the RnaseqPipeline formula'
  sha256 Digest::SHA256.file(File.expand_path(__FILE__)).hexdigest
  version '2'

  depends_on 'homebrew/science/samtools'
  depends_on 'ensembl/ensembl/exonerate09'
  depends_on 'ensembl/ensembl/bwa-051mt'
  depends_on 'ensembl/ensembl/ensc'
  depends_on 'ensembl/ensembl/picard-tools'
  depends_on 'ensembl/ensembl/bioperl-161'
  depends_on 'ensembl/ensembl/blast'

  def install
    File.open('rnaseq-pipeline', 'w') { |file|
      file.write '#!/bin/sh'+"\n"
      deps.each do | dep |
        f = dep.to_formula
        file.write "echo "+[f.full_name, f.version, f.prefix].join("\t")+"\n"
      end
    }
    bin.install 'rnaseq-pipeline'
  end
end
    