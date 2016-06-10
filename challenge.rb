 require "rubygems"l
 require "bundler"
 require "digest"
 Bundler.require
   
 get '/crack/:password' do
  correct = params['password']
  ('a'..'zzzzzzzz').each do |token|
   test = Digest::SHA256.hexdigest(token)
   if test == correct
     return token
   end
 end
end
  
