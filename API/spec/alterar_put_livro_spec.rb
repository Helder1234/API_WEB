describe 'fazer uma requisicao' do
    context 'para alterar dados com ' do
    
        it 'put' do
            @body = {
                "Title": "Livro Dom Casmurro",
                "Description": "dojo@cargox.com.br",
                "PageCount": 256,
                "Excerpt": "Edição Especial do Dia das Mães",
                "PublishDate": "2020-02-28T14:30:43.403Z"
            }.to_json

            @resultado = Livros.put('/api/Books/101', body: @body)

            expect(@resultado.parsed_response['Excerpt']).to eql "Edição Especial do Dia das Mães"
        end
    end
end