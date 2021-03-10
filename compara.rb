#Template generated on 2021-03-10 18:27:24 +0000
#Do not edit this file. Modify the relevant config and regenerate

require 'digest'

class Compara < Formula
  url 'file://'+File.expand_path(__FILE__)
  desc 'Dependencies for the Compara formula'
  sha256 Digest::SHA256.file(File.expand_path(__FILE__)).hexdigest
  version '18'

  depends_on 'r'
  depends_on 'ensembl/external/exonerate24'
  depends_on 'ensembl/external/infernal'
  depends_on 'ensembl/external/hmmer'
  depends_on 'ensembl/external/hmmer2'
  depends_on 'ensembl/external/blast'
  depends_on 'ensembl/external/mafft'
  depends_on 'ensembl/external/kalign'
  depends_on 'ensembl/external/muscle'
  depends_on 'ensembl/external/clustal-w'
  depends_on 'ensembl/external/t-coffee'
  depends_on 'ensembl/ensembl/hclustersg'
  depends_on 'ensembl/ensembl/treebest'
  depends_on 'ensembl/external/quicktree'
  depends_on 'ensembl/ensembl/paml43'
  depends_on 'ensembl/ensembl/ktreedist'
  depends_on 'ensembl/ensembl/raxml-get-patterns'
  depends_on 'ensembl/ensembl/noisy'
  depends_on 'ensembl/ensembl/notung'
  depends_on 'ensembl/ensembl/pecan'
  depends_on 'ensembl/ensembl/ortheus'
  depends_on 'ensembl/external/fasttree'
  depends_on 'ensembl/ensembl/prottest3'
  depends_on 'ensembl/external/trimal'
  depends_on 'ensembl/ensembl/cafe'
  depends_on 'ensembl/ensembl/gerp'
  depends_on 'ensembl/external/mcl'
  depends_on 'ensembl/external/prank'
  depends_on 'ensembl/ensembl/r2r'
  depends_on 'ensembl/ensembl/phast'
  depends_on 'ensembl/external/lastz'
  depends_on 'ensembl/external/kent'
  depends_on 'ensembl/ensembl/parsimonator'
  depends_on 'ensembl/ensembl/cndsrc'
  depends_on 'ensembl/ensembl/semphy'
  depends_on 'ensembl/external/cd-hit'
  depends_on 'ensembl/ensembl/pantherscore'
  depends_on 'ensembl/ensembl/enredo'
  depends_on 'ensembl/ensembl/raxml'
  depends_on 'ensembl/ensembl/examl'
  depends_on 'ensembl/ensembl/hal'
  depends_on 'ensembl/external/mash'
  depends_on 'ensembl/ensembl/rapidnj'
  depends_on 'ensembl/ensembl/erable'
  depends_on 'ensembl/ensembl/bioperl-run-169'
  depends_on 'samtools'
  depends_on 'ensembl/external/diamond'
  depends_on 'ensembl/ensembl/cactus'

  def install
    File.open('compara', 'w') { |file|
      file.write '#!/bin/sh'+"\n"
      deps.each do | dep |
        f = dep.to_formula
        file.write "echo "+[f.full_name, f.version, f.prefix].join("\t")+"\n"
      end
    }
    bin.install 'compara'
  end
end
    