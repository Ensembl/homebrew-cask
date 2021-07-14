#Template generated on 2021-07-14 14:49:37 +0100
#Do not edit this file. Modify the relevant config and regenerate

require 'digest'

class GenebuildAnnotation < Formula
  url 'file://'+File.expand_path(__FILE__)
  desc 'Dependencies for the GenebuildAnnotation formula'
  sha256 Digest::SHA256.file(File.expand_path(__FILE__)).hexdigest
  version '3.9'

  depends_on 'ensembl/external/exonerate09'
  depends_on 'ensembl/external/exonerate22'
  depends_on 'ensembl/ensembl/cesar'
  depends_on 'ensembl/ensembl/ensc'
  depends_on 'ensembl/ensembl/ensc-annotation-tools'
  depends_on 'ensembl/ensembl/bioperl-169'
  depends_on 'ensembl/external/blast'
  depends_on 'ensembl/ensembl/eponine'
  depends_on 'ensembl/external/genewise'
  depends_on 'ensembl/external/trnascan'
  depends_on 'ensembl/moonshine/genscan'
  depends_on 'ensembl/moonshine/pmatch'
  depends_on 'ensembl/ensembl/genblast'
  depends_on 'ensembl/ensembl/vienna-rna'
  depends_on 'ensembl/external/infernal10'
  depends_on 'ensembl/external/muscle'
  depends_on 'ensembl/external/kent'
  depends_on 'ensembl/external/rmblast'
  depends_on 'ensembl/external/trf'
  depends_on 'ensembl/external/recon'
  depends_on 'ensembl/external/repeatscout'
  depends_on 'ensembl/external/repeatmodeler'
  depends_on 'ensembl/external/repeatmasker'
  depends_on 'ensembl/ensembl/aspera-client'
  depends_on 'ensembl/external/sratoolkit@2.11.0'
  depends_on 'ensembl/ensembl/Red'
  depends_on 'ensembl/ensembl/minimap2'
  depends_on 'ensembl/ensembl/scallop'
  depends_on 'ensembl/ensembl/star-aligner'
  depends_on 'ensembl/ensembl/stringtie'

  def install
    File.open('genebuild-annotation', 'w') { |file|
      file.write '#!/bin/sh'+"\n"
      deps.each do | dep |
        f = dep.to_formula
        file.write "echo "+[f.full_name, f.version, f.prefix].join("\t")+"\n"
      end
    }
    bin.install 'genebuild-annotation'
  end
end
    