FROM ubuntu:latest

# Instalação de dependências
RUN apt-get update && \
    apt-get install -y nodejs npm default-jre maven httpie ruby-full build-essential zlib1g-dev curl apache2 dos2unix git && \
    gem install jekyll bundler && \
    npm install -g --silent fsh-sushi@3.6.1 fhirpath@3.10.1 &&\
    git --version && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Definindo o diretório de trabalho
WORKDIR /ig

# Copiando os arquivos e diretórios para o contêiner
COPY . .

# Definindo permissões de execução nos scripts
RUN chmod +x *.sh

RUN mkdir -p /var/www/html/r4/core

# Executando os scripts
RUN ./_updatePublisher.sh --yes \
&& export JAVA_TOOL_OPTIONS="-Xmx4G"; ./_genonce.sh --yes \
&& cp -r output/. /var/www/html/r4/core

# Copiando os arquivos para o diretório de publicação do Apache
COPY imagens /var/www/html/imagens
COPY index.html /var/www/html

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]