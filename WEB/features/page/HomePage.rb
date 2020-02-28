class HomePage < SitePrism::Page
  element :bnt_create, "li[id='quickcreatetop']"
  element :bnt_account, :xpath, "//*[@id='quickcreatetop']/ul/li[1]/a"
  element :bnt_task, "[href='index.php?module=Tasks&action=EditView&return_module=Tasks&return_action=DetailView']"

  def menuCreateAccount
    bnt_create.click
    bnt_account.click
  end

  def menuTask
    bnt_create.click
    bnt_task.click
  end
end
