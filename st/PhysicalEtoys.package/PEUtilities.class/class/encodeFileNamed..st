mime encoding
encodeFileNamed: fileName
^(Base64MimeConverter mimeEncode: ((FileStream readOnlyFileNamed: fileName) binary)) upToEnd