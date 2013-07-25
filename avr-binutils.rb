require 'formula'

class AvrBinutils <Formula
  url 'http://ftp.gnu.org/gnu/binutils/binutils-2.22.tar.gz'
  homepage 'http://www.gnu.org/software/binutils/binutils.html'
  md5 'ee0f10756c84979622b992a4a61ea3f5'

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
