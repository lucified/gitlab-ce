# GitLab

Fork of [gitlab-ce](https://gitlab.com/gitlab-org/gitlab-ce/) for
use with [minard-backend](https://github.com/lucified/minard-backend)

## Changes

### Build configuration

We have made modifications that allow running builds without
having a `.gitlab-ci-yml` file in the repository. Instead of looking
at the repository, GitLab will fetch the file using an URL pattern
defined in an environment variable called `MINARD_CI_YML_URL`.

By defaults its value is `http://localhost:8000/ci/projects/%d/%s/%s/yml`.
Within GitLab it is used as a format string in a
call to `sprintf(url, project_id, ref, sha)`, where
- `url` is the value of `MINARD_CI_YML_URL`
- `project_id` is the GitLab project id
- `ref` is the ref used in triggering the build (typically the branch name)
- `sha` is the commit that will be built.

### Deployment

We have added some files that help deploy the project
into Lucify's internal environments.

## License

[MIT Expat license](LICENSE)

## Internal notes

[Notes](internal-notes.md) for Lucify's internal use.
