#!/bin/bash

# DEPLOY
argocd app create guestbook --repo https://github.com/argoproj/argocd-example-apps.git --path guestbook --dest-server https://kubernetes.default.svc --dest-namespace default

# CHECK APP
argocd app get guestbook

# SYNC APP
argocd app sync guestbook