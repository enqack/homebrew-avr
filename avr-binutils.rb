require 'formula'

class AvrBinutils <Formula
  url 'http://ftp.gnu.org/gnu/binutils/binutils-2.22.tar.bz2'
  homepage 'http://www.gnu.org/software/binutils/binutils.html'
  sha1 '65b304a0b9a53a686ce50a01173d1f40f8efe404'

  def install
    ENV.append 'CPPFLAGS', "-I#{include}"

    args = ["--prefix=#{prefix}",
            "--disable-debug",
            "--disable-dependency-tracking",
            "--infodir=#{info}",
            "--mandir=#{man}",
            "--disable-werror",
      "--target=avr" ]

    system "./configure", *args
    system "make"
    system "make install"
  end
end
