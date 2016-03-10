require "render_anywhere"

class InvoicePdf
  include RenderAnywhere

  def initialize(invoice)
    @invoice = invoice
  end

  def to_pdf
    kit = PDFKit.new(as_html, page_size: 'A4')
    kit.to_file("#{Rails.root}/public/invoice.pdf")
  end

  def filename
    "Invoice #{invoice.id}.pdf"
  end

  private

    attr_reader :invoice

    def as_html
      render template: "invoices/pdf", layout: "invoice_pdf", locals: { invoice: invoice }
    end
end
