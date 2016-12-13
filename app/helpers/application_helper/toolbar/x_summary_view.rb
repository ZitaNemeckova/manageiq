class ApplicationHelper::Toolbar::XSummaryView < ApplicationHelper::Toolbar::Basic
  button_group('summary_download', [
    button(
      :vm_download_pdf,
      'fa fa-file-pdf-o fa-lg',
      N_('Download summary in PDF format'),
      nil,
      :klass     => ApplicationHelper::Button::Pdf,
      :url       => "/download_summary_pdf",
      :url_parms => ''),
  ])
end
