Pod::Spec.new do |spec|
  spec.name          = 'HEAlert'
  spec.version       = '0.4.1'
  spec.homepage      = 'https://github.com/HsoiEnterprises/HEAlert'
  spec.source        = { :git => 'https://github.com/HsoiEnterprises/HEAlert.git', :tag => "v#{spec.version}" }
  spec.summary       = 'A convenience around UIAlertController, because sometimes you just want to say "OK".'
  spec.author        = { 'John C. Daub (@hsoi)' => 'hsoi@hsoienterprises.com' }
  spec.description   = <<-DESC
                        UIAlertController is awesome, but sometimes it's too much. How many times do you simply alert with a message and an "OK" button? Easy with UIAlertView, but cumbersome with UIAlertController.

                        That's why I created HEAlert.
                        DESC
  spec.requires_arc  = true
  spec.license       = { :type => 'BSD 3-clause “New” or “Revised”', :file => 'LICENSE' }
  spec.source_files  = ['HEAlert/*.swift', 'HEAlert/*.h']
  spec.platform      = :ios, '8.0'
end