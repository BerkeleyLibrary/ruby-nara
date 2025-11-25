require 'rails_helper'
require 'base64'

describe Docker::Secret do
  attr_reader :tmpdir_path

  before do
    tmpdir = Dir.mktmpdir(File.basename(__FILE__, '.rb'))
    @tmpdir_path = Pathname.new(tmpdir)
  end

  after do
    FileUtils.remove_dir(tmpdir_path, true)
  end

  describe :setup_environment! do
    attr_reader :expected_secrets

    before do
      prefix = Time.now.to_i.to_s
      random = Random.new
      @expected_secrets = {}
      (0..8).each do |i|
        secret_name = "secret_#{prefix}_#{i}"
        secret = Base64.strict_encode64(random.bytes(128))
        expected_secrets[secret_name] = secret
        tmpdir_path.join(secret_name).binwrite(secret)
      end
    end

    after do
      expected_secrets.each_key { |k| ENV.delete(k) }
    end

    it 'injects secrets into the environment' do 
      pending('this will be removed in preference of BerkeleyLibrary::Docker')
      fileglob = "#{tmpdir_path}/*"
      described_class.setup_environment!(fileglob)
      expected_secrets.each do |secret_name, secret_value|
        expect(ENV.fetch(secret_name, nil)).to eq(secret_value)
      end
    end
  end
end
