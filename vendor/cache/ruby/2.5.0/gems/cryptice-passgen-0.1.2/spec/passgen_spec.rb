require "./lib/passgen"

describe "Using passgen" do

  before do
    srand(2)
  end
  
  it "should return password with default settings." do
    Passgen::generate.should eql("OpTiwRslOh")
  end

  it "should return password with uppercase chars only" do
    Passgen::generate(:uppercase => :only).should eql("IPNIWLSLIH")
  end
  
  it "should return password with lowercase chars only" do
    Passgen::generate(:lowercase => :only).should eql("ipniwlslih")
  end

  it "should return password with digits only" do
    Passgen::generate(:digits => :only).should eql("8862872154")
  end

  it "should return password with symbols only" do
    Passgen::generate(:symbols => :only).should eql("))/*#*)(\#@")
  end

  it "should return password with lowercase and uppercase chars only" do
    Passgen::generate(:digits => false).should eql("OpTiwRslOh")
  end

  it "should return password with lowercase and digit chars only" do
    Passgen::generate(:uppercase => false).should eql("piwslh85lv")
  end

  it "should return password with lowercase and symbol chars only" do
    Passgen::generate(:uppercase => false, :digits => false, :symbols => true).should eql("piwslh)&lv")
  end

  it "should return password with uppercase and digit chars only" do
    Passgen::generate(:lowercase => false).should eql("PIWSLH85LV")
  end

  it "should return password with uppercase and symbol chars only" do
    Passgen::generate(:lowercase => false, :digits => false, :symbols => true).should eql("PIWSLH)&LV")
  end

  it "should return password with digit and symbol chars only" do
    Passgen::generate(:lowercase => false, :uppercase => false, :symbols => true).should eql("8&$8@)@872")
  end

  it "should return password with lowercase, uppercase and digit chars only" do
    Passgen::generate.should eql("OpTiwRslOh")
  end

  it "should return password with lowercase, uppercase and symbol chars only" do
    srand(3)
    Passgen::generate(:digits => false, :symbols => true).should eql("Qy&d%iav+t")
  end

  it "should return password with lowercase, digit and symbol chars only" do
    srand(4)
    Passgen::generate(:uppercase => false, :symbols => true).should eql("?fb%xij$+4")
  end

  it "should return password with uppercase, digit and symbol chars only" do
    srand(4)
    Passgen::generate(:lowercase => false, :symbols => true).should eql("?FB%XIJ$+4")
  end
  
  it "should return given number of passwords in an Array" do
    Passgen::generate(:number => 3).should eql(["OpTiwRslOh", "IXFlvVFAu8", "0LNdMeQRZN"])
  end

  it "should return a password with given length" do
    Passgen::generate(:length => 8).should eql("OpTiwRsl")
  end

  it "should return several passwords of variable length" do
    Passgen::generate(:length => 3..12, :number => 2).should eql(["pTiwRslOhIX", "VFAu80LN"])
  end

  it "should use given seed" do
    pass1 = Passgen::generate(:seed => 5)
    pass2 = Passgen::generate(:seed => 5)
    pass1.should eql(pass2)
  end

  it "should set seed to Time.now + Process.id" do
    pass1 = Passgen::generate(:seed => :default)
    pass2 = Passgen::generate(:seed => :default)
    pass1.should_not eql(pass2)
  end

  describe "handling tokens" do

    it "should return a-z" do
      Passgen::lowercase_tokens.should eql(("a".."z").to_a)
    end

    it "should return A-Z" do
      Passgen::uppercase_tokens.should eql(("A".."Z").to_a)
    end

    it "should return 0-9" do
      Passgen::digit_tokens.should eql(("0".."9").to_a)
    end

    it "should return default symbols" do
      Passgen::symbol_tokens.should eql(%w{! @ # $ % & / ( ) + ? *})
    end

  end
end
