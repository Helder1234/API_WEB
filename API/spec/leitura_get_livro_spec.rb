describe 'GET /api/books' do
    it 'Leitura de um livro' do

        @resultado = Livros.get('/api/Books/101')

            expect(@resultado.code).to eql 200
            expect(@resultado.parsed_response['Title']).to eql "Livro Dom Casmurro"
    end
end
