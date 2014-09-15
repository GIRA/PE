mime encoding
formFromEncodedPNG: aString
^(PNGReadWriter on: (Base64MimeConverter mimeDecodeToBytes: aString readStream)) nextImage.