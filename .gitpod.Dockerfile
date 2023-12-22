# You could use `gitpod/workspace-full` as well.
FROM gitpod/workspace-python:2023-12-21-11-39-51

RUN pyenv install 3.10.13 \
    && pyenv global 3.10.13
