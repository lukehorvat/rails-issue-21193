UI = Proc.new { ['200', {'Content-Type' => 'text/html'}, ['Hello!']] }

Rails.application.routes.draw do
  root to: redirect('/ui')

  mount UI, at: '/ui'
end
