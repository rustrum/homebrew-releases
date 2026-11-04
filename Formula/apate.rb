class Apate < Formula
  desc "Declarative any API prototyping/mocking server. Use TOML based DSL with Rhai scripting capabilities"
  homepage "https://github.com/rustrum/apate"
  url "https://github.com/rustrum/apate/releases/download/v0.2.1/apate-aarch64-apple-darwin.tar.gz"
  sha256 "ee8214abbe9d72698e1523053bdbb596b1e6cd6c8c3f071ce165c4d2462716e2"
  license "MIT"

  # depends_on "cmake" => :build

  # Additional dependency
  # resource "" do
  #   url ""
  #   sha256 ""
  # end

  def install
    # Remove unrecognized options if they cause configure to fail
    # https://docs.brew.sh/rubydoc/Formula.html#std_configure_args-instance_method
    system "./configure", "--disable-silent-rules", *std_configure_args
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  test do
    system "false"
  end
end
