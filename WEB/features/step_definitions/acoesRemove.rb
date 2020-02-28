Dado(/^que selecione um task$/) do
  @home.menuTask
  @delete.viewTasksSelect
end

Quando(/^executo a ação delete$/) do
  @delete.actionsDelete
  @delete.search
end

Então(/^task removido com sucesso$/) do
  expect(@delete.erro_text.text).to eq "No results matching your search criteria. Try broadening your search."
end
