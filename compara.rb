#Template generated on 2017-09-28 12:28:52 +0100
#Do not edit this file. Modify the relevant config and regenerate

require 'digest'

class Compara < Formula
  url 'file://'+File.expand_path(__FILE__)
  desc 'Dependencies for the Compara formula'
  sha256 Digest::SHA256.file(File.expand_path(__FILE__)).hexdigest
  version '0.7'

  depends_on 'ensembl/ensembl/exonerate22'
  depends_on 'homebrew/science/infernal'
  depends_on 'homebrew/science/hmmer'
  depends_on 'homebrew/science/hmmer2'
  depends_on 'ensembl/ensembl/blast'
  depends_on 'homebrew/science/mafft'
  depends_on 'homebrew/science/kalign'
  depends_on 'homebrew/science/muscle'
  depends_on 'homebrew/science/clustal-w'
  depends_on 'ensembl/ensembl/t-coffee'
  depends_on 'ensembl/ensembl/hclustersg'
  depends_on 'ensembl/ensembl/treebest'
  depends_on 'homebrew/science/quicktree'
  depends_on 'ensembl/ensembl/paml43'
  depends_on 'ensembl/ensembl/ktreedist'
  depends_on 'ensembl/ensembl/raxml-get-patterns'
  depends_on 'ensembl/ensembl/noisy'
  depends_on 'ensembl/ensembl/notung'
  depends_on 'ensembl/ensembl/pecan'
  depends_on 'ensembl/ensembl/ortheus'
  depends_on 'homebrew/science/fasttree'
  depends_on 'ensembl/ensembl/prottest3'
  depends_on 'homebrew/science/trimal'
  depends_on 'ensembl/ensembl/badirate'
  depends_on 'ensembl/ensembl/cafe'
  depends_on 'ensembl/ensembl/gerp'
  depends_on 'homebrew/science/mcl'
  depends_on 'ensembl/ensembl/prank'
  depends_on 'ensembl/ensembl/r2r'
  depends_on 'ensembl/ensembl/phast'
  depends_on 'homebrew/science/lastz'
  depends_on 'ensembl/ensembl/kent'
  depends_on 'ensembl/ensembl/parsimonator'
  depends_on 'ensembl/ensembl/cndsrc'
  depends_on 'ensembl/ensembl/semphy'
  depends_on 'homebrew/science/cd-hit'
  depends_on 'ensembl/ensembl/pantherscore'
  depends_on 'ensembl/ensembl/enredo'
  depends_on 'ensembl/ensembl/raxml'
  depends_on 'ensembl/ensembl/examl'
  depends_on 'ensembl/ensembl/phyldog'
  depends_on 'ensembl/ensembl/hal'
  depends_on 'ensembl/ensembl/progressive_cactus'
  depends_on 'homebrew/science/cd-hit'
  depends_on 'homebrew/science/mash'
  depends_on 'ensembl/ensembl/rapidnj'
  depends_on 'ensembl/ensembl/erable'

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
    