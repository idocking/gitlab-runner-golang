GitLab CI Runner For GO
=======================


### Build

```bash
make alpine
```

### Run 


`docker-compose.yml`

```yml
gitlab-runner:
  image: 'xujinzheng/gitlab-runner-golang:1.8.3-alpine3.6'
  restart: always
  environment:
  - CI_SERVER_URL=http://gitlab.domain.com
  - REGISTRATION_TOKEN=TOKEN
  - RUNNER_TAG_LIST='golang,asdf'
  - RUNNER_EXECUTOR=shell
  - REGISTER_LOCKED=true
  - REGISTER_RUN_UNTAGGED=false
```


if you want register other runner executor, you could execute `gitlab-runner register --help` and find the env key just like `[$RUNNER_NAME]`