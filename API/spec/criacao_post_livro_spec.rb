describe 'POST /api/books' do
    it 'criação de um livro' do
        @body = {
            "Title": "Livro Dom Casmurro",
            "Description": "dojo@cargox.com.br",
            "PageCount": 256,
            "Excerpt": "Sumário resumido",
            "PublishDate": "2020-02-28T14:30:43.403Z"
        }.to_json

        @resultado = Livros.post('/api/Books/101', body: @body)

        expect(@resultado.code).to eql 200
        expect(@resultado.parsed_response['Title']).to eql "Livro Dom Casmurro"
        expect(@resultado.parsed_response['Description']).to eql "dojo@cargox.com.br"
        expect(@resultado.parsed_response['PageCount']).to eql 256
        expect(@resultado.parsed_response['Excerpt']).to eql "Sumário resumido"
        expect(@resultado.parsed_response['PublishDate']).to eql "2020-02-28T14:30:43.403Z"
    end
end
