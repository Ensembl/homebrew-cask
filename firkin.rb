require 'digest'
module Firkin
  def to_url(file)
   'file://'+File.expand_path(file) 
  end

  def to_sha256(file)
    digest = Digest::SHA256.file file
    digest.hexdigest
  end

  def install_cmd(name, bin, deps=[])
    File.open(name, 'w') { |file|
      file.write '#!/bin/sh'+"\n"
      deps.each do | dep |
	f = dep.to_formula
        file.write "echo "+[f.full_name, f.version, f.path].join("\t")+"\n"
      end
    }
    bin.install name
  end
end
