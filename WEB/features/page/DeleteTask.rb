class DeleteTask < SitePrism::Page
  element :bnt_viewTasks, :xpath, "//*[@id='actionMenuSidebar']/ul/li[2]/a/div[2]"
  element :checkbox_Tasks, "input[name='mass[]']", match: :first
  element :bnt_Action, "#actionLinkTop"
  element :bnt_Delete, "#delete_listview_top.parent-dropdown-action-handler"
  element :bnt_search, "#searchbutton"
  element :bnt_searchGroup, :xpath, '//*[@id="searchformdropdown"]/div/span/button'
  element :name_text, "[field='name']", match: :first
  element :erro_text, "[class='error']"
  element :search_field, "#query_string"

  def viewTasksSelect
    bnt_viewTasks.click
    checkbox_Tasks.click
    $name = name_text.text
  end

  def actionsDelete
    bnt_Action.click
    bnt_Delete.click
    page.driver.browser.switch_to.alert.accept
    sleep 2
  end

  def search()
    bnt_search.click
    search_field.set($name)
    bnt_searchGroup.click
  end
end
