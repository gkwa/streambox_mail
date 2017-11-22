describe file('/etc/postfix/virtual') do
  it { should exist }
  its('content') { should match(/stager@fakerson.com/) }
end

describe file('/etc/postfix/sasl_passwd') do
  it { should exist }
  its('content') { should match(/\[smtp.gmail.com\]:587 stage_sender@fakerson.com:Sne@key/) }
end

describe file('/etc/postfix/virtual.db') do
  it { should exist }
end
