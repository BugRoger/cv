package "texlive"

yum_package "texlive-moderncv" do
  #version "3:svn30189.1.5.1-0.1.fc18"
  options "--enablerepo=updates-testing"
  action :install
end

%w{michael_schmidt.tex picture.jpg picture.eps}.each do |file|
  cookbook_file "/tmp/#{file}" do
    source file 
  end
end

bash "create pdf" do
  cwd "/tmp"
  code <<-EOD
    pdflatex michael_schmidt.tex
    cp michael_schmidt.pdf /vagrant
  EOD
end
