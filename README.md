# docker-git-clone
Docker image to clone or pull a git repository

## Usage

``` bash
docker pull tyutyutyu/git-clone
docker run \
    -e REPO_URL=git@github.com:tyutyutyu/docker-git-clone.git \
    -v /path/to/id_rsa:/root/.ssh/id_rsa:ro \
    -v /path/to/target/dir:/repo \
    tyutyutyu/git-clone
```
