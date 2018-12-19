# Root crumb
crumb :root do
  link "メルカリ", root_path
end

crumb :mypage do
  link "マイページ", user_path
  parent :root
end

crumb :profile do
  link "プロフィール", user_profile_users_path
  parent :root
end

crumb :confilm do
  link "本人情報", user_confilm_users_path
  parent :root
end

crumb :credit do
  link "支払い情報", credit_users_path
  parent :root
end

crumb :items do
  link "#{Item.find(id = params[:id]).name}", item_path
  parent :root
end

# crumb :logout do #ログアウトのビュー完成後実装
#   link "ログアウト", user_path
#   parent :mypage
# end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).
