{
  "name": "libsodium",
  "version": "1.0.12",
  "license": {
    "type": "BSD",
    "text": "Copyright © 2013\\nFrank Denis <j at pureftpd dot org>\\n\\nPermission to use, copy, modify, and distribute this software for any purpose with or without fee is hereby granted, provided that the above copyright notice and this permission notice appear in all copies.\\n\\nTHE SOFTWARE IS PROVIDED \\\"AS IS\\\" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.\\n\\n"
  },
  "homepage": "https://github.com/jedisct1/libsodium",
  "authors": {
    "Frank Dennis": "j@pureftpd.org"
  },
  "summary": "Sodium is a portable, cross-compilable, installable, packageable, API-compatible version of NaCl.",
  "source": {
    "http": "https://github.com/jedisct1/libsodium/releases/download/1.0.13/libsodium-1.0.13.tar.gz",
    "sha256": "b8648f1bb3a54b0251cf4ffa4f0d76ded13977d4fa7517d988f4c902dd8e2f95"
  },
  "source_files": [
    "src/libsodium/**/*.{c,h,data}"
  ],
  "public_header_files": "src/libsodium/include/sodium/**/*.h",
  "prepare_command": "sh ./configure --disable-dependency-tracking",
  "requires_arc": false,
  "xcconfig": {
    "HEADER_SEARCH_PATHS": "\"$(PODS_ROOT)/libsodium/src/libsodium/include/sodium\" \"$(PODS_ROOT)/libsodium/src/libsodium/include\"",
    "OTHER_CFLAGS": "-DNATIVE_LITTLE_ENDIAN=1 -DHAVE_MADVISE -DHAVE_MMAP -DHAVE_MPROTECT -DHAVE_POSIX_MEMALIGN -DHAVE_WEAK_SYMBOLS"
  },
  "platforms": {
    "osx": '10.10',
    "ios": '9.0',
  }
}
