require 'formula'

class Optimization < Formula
  homepage 'http://biorob.epfl.ch'
  head 'https://ponyo.epfl.ch/git/optimization/liboptimization.git'
  
  depends_on 'glibmm'
  depends_on 'jessevdk'
  depends_on 'protobuf'

  def install
    system "./autogen.sh", "--prefix=#{prefix}"
    system "make install" # if this fails, try separate make/make install steps
  end
end
