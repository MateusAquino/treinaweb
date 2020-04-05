 
## [Configurações] ##

# Nome e email:
git config --global user.name "Nome"
git config --global user.email "email@email.com"

# Listar configurações:
git config --list # ou git config -l
git config --global -l

# Criando chave SSH:
ssh-keygen -t rsa -b 4096 -C email@email.com
ssh-add ~/.ssh/id rsa


## [Repositórios] ##

git init # Normal
git init --bare # Rep. Bare

# Sincronização:
git remote add origin git@github.com:USUARIO-git/REPO.git # %linha_do_clone%
git push -u origin master

# Clonando repo:
git clone %linha_do_clone%


## [Workflow básico] ##

git status    # Padrão
git status -s # Resumido (ou git status -short)
git log       # Para commits

# Adicionar ao staging
git add . # ou git add -A

# Commit
git commit -m "Mensagem de Commit"
git commit -a # Commit em tudo
git commit -amend # Add alterações no commit anterior (CUIDADO)

# Push, Pull & Fetch
git push origin master # Onde origin=remote e master=branch
git pull origin
git fetch origin

# Branches
git checkout -b nova-branch          # Cria nova branch
git checkout master                  # Alterna entre as branches
git checkout -                       # Alterna para a branch anterior
git branch -d nova-branch            # Remove uma branch local
git push --delete origin nova-branch # Remove a branch remota

# Merge
# Combinar feature/x com develop:
git checkout develop
git merge feature/a         # Fast Foward
git merge --no-ff feature/a # 3-Way Merge  [recomendado]

# Tags
git tag v1.0.0
git push origin --tags


## [Resolvendo Conflitos] ##
git merge develop
git checkout --ours file.txt    # Escolhe nosso lado do conflitos
git checkout --theirs file.txt  # Escolhe alterações do remoto
git merge -abort                # Aborta o merge

# Desfazendo Alterações [reversão]
git reset --soft  # Repositório
git reset --mixed # Staging e Repositório [PADRÃO]
git reset --hard  # Working Dir, Staging e Repositório

git revert        # Mais recomendado: Cria um novo commit com o inverso do desejado


