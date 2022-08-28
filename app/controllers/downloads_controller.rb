class DownloadsController < ApplicationController
    def post_file
        post = Post.find(params[:id])
        send_data(open(path.post_file.url).read, type: post.post_file.content_type)
    end
end
# def report_file
#     report = Report.find(params[:report_id])
#     send_data(open(report.report_file.url(:original, false)).read, type: report.report_file_content_type, filename: report.report_file_file_name, disposition: 'attachment')
# end