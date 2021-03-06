{% from "gitlab-omnibus/map.jinja" import gitlab_omnibus with context %}

{# If sysctl kernel.shmmax is read only                 #}
{# Then we are in container and gitlab config will fail #}

include:
  - gitlab-omnibus.repository
  - gitlab-omnibus.install
  - gitlab-omnibus.configure
  - gitlab-omnibus.service

