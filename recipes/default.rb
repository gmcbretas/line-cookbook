
Array(node['line']['replace_or_add']).each do |line_user|
  replace_or_add  "#{line_user['name']}" do
    path  line_user['path']
    pattern line_user['pattern']
    line line_user['line']
  end
end
