require 'rails_helper'
RSpec.configure do |config|
  config.fuubar_progress_bar_options = { :format => 'Assessment model test <%B> %p%% %a' }
end

RSpec.describe Assessment, :type => :model do

end