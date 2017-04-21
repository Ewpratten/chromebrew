require 'package'

class chrouton-kali < Package
  version '1.00'
  source_url 'https://goo.gl/fd3zc'
  source_sha1 ''

  depends_on 'autoconf'

  def self.build
    system "sudo sh ~/Downloads/chrouton -r kali-rolling -t xfce"
    system ""
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end
