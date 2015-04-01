FactoryGirl.define do
  factory(:user) do
    email('yo@mama.net')
    password('1234joke')
  end

  factory(:message) do
    body('what up, dawg?')
    to('5039153698')
    from('5623750778')
    user
  end
end
