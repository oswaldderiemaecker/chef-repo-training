# # encoding: utf-8

# Inspec test for recipe myfirst_cookbook07::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  describe user('root') do
    it { should exist }
  end
end

describe port(80) do
  it { should_not be_listening }
end

describe package('unzip') do
  it { should be_installed }
end

describe command('unzip') do
   its('stdout') { should match (/UnZip 6/) }
end
