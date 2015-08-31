Array(node['line']['append_if_no_line']).each do |line_user|
  append_if_no_line "#{line_user['name']}" do
    path line_user['path']
    line line_user['line']
  end
end

Array(node['line']['replace_or_add']).each do |line_user|
  replace_or_add  "#{line_user['name']}" do
    path  line_user['path']
    pattern line_user['pattern']
    line line_user['line']
  end
end

Array(node['line']['delete_lines']).each do |line_user|
  delete_lines "#{line_user['name']}" do
    path line_user['path']
    pattern line_user['pattern']
  end
end

Array(node['line']['add entry to a list']).each do |line_user|
  add_to_list "#{line_user['name']}" do
    path line_user['path']
    pattern line_user['pattern']
    delim [line_user['delim']]
    entry line_user['entry']
  end
end