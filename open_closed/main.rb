class Document
  attr_reader :path, :parser

  def initialize(path, parser)
    @path = path
    @parser = parser.new(path)
  end

  def parse
    parser.parse
  end
end

class BaseDocumentParser
  attr_reader :path

  def initialize(path)
    @path = path
  end
end

class PdfDocumentParser < BaseDocumentParser
  def parse
    "Parsing pdf document"
  end
end

class ExcelDocumentParser < BaseDocumentParser
  def parse
    "Parsing excel document"
  end
end
