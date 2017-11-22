describe file('/etc/postfix/virtual') do
  it { should exist }
  its('content') { should match(/tester@fakerson.com/) }
end

describe file('/etc/postfix/sasl_passwd') do
  it { should exist }
  its('content') { should match(/\[smtp.gmail.com\]:587 test_sender@fakerson.com:Sne@key/) }
end

describe file('/etc/postfix/virtual.db') do
  it { should exist }
end
