require 'formula'

class Jessevdk < Formula
  homepage 'http://biorob.epfl.ch'
  head 'https://ponyo.epfl.ch/git/libjessevdk.git'
  
  depends_on 'glibmm'

  def install
    system "./autogen.sh", "--prefix=#{prefix}"

    system "make install" # if this fails, try separate make/make install steps
  end
end
