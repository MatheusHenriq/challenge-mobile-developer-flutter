
# Arquitetura Implementada: 
    Design pattern utilizado: GetX pattern
    você pode saber mais sobre essa arquitetura no site: https://kauemurakami.github.io/getx_pattern/ ou https://github.com/kauemurakami/getx_pattern

# Bibliotecas utilizadas:
    - Get           => para gerenciamento de estado e injeção de - dependência
    - Dio           => para consumo da api
    - Rive          => para rodar as animações .riv(dentro de assets/images/)
    - sqflite       => para utilização de um banco de dados no próprio celular, focando em salvar os dados dos filmes marcados como favoritos!
    - path_provider => para salvar os itens no diretório escolhido no celular (no caso da aplicação, foi utilizado o getApplicationDocumentsDirectory).

# O que você melhoraria se tivesse mais tempo: 
    Eu melhoraria o design das telas que fiz, e tentaria arrumar animações mais bonitas, porém não sou muito bom nessas áreas referente a design, então espero que gostem do que foi implementado :D!

# Observações: 
    O flutter não consegue mapear um json muito grande, ou seja, a api que foi dada tinha muitos dados, mesmo que os dados requiridos fossem poucos, foi necessário uma triagem de dados, não mapeando os que não seriam utilizados(Ex: o campo created_by não foi mapeado pois os campos deles não seriam utilizados).
    
    Nas informações dos filmes escolhidos, um dos requisitos seria o trailer do filme, porém a api não me fornecia esses dados, apenas um false, logo esse campo não foi colocado nas informações do filme.

    O sqflite foi utilizado para salvar os dados no celular, ou seja, a aplicação rodando no emulador de android/ios no chrome ou edge não irá funcionar corretamente, pois esse diretório só é acessado em mobile devices!

    Peço perdão pelos commits um pouco atrasados no projeto, não é um costume meu, mas infelizmente comecei a codar(empolgado) e esqueci de dar os commits na primeira parte do projeto.

    A api tem um pequeno problema, as vezes o dado vote_average da lista result vezes é inteiro vezes é double, sendo necessária a tipagem desse campo.

    
    

