
const env = process.env.LUCIFY_ENV === 'production' ? 'production' : 'staging';

module.exports = {
  REGION: 'eu-west-1',
  CLUSTER: 'minard',
  SERVICE: `minard-gitlab-${env}`,
  CONTAINER: 'gitlab',
  IMAGE: 'gitlab',
  BUCKET: 'lucify-configuration',
  KEY: `ecs_services/gitlab_${env}`,
};
