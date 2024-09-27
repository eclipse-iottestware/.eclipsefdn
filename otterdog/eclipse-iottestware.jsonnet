local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-iottestware') {
  settings+: {
    description: "Eclipse IoT-Testware project repositories",
    name: "Eclipse IoT-Testware",
    two_factor_requirement: false,
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('iottestware') {
      allow_merge_commit: true,
      allow_update_branch: false,
      code_scanning_default_languages+: [
        "python"
      ],
      code_scanning_default_setup_enabled: true,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      has_wiki: false,
      web_commit_signoff_required: false,
      webhooks: [
        orgs.newRepoWebhook('https://readthedocs.org/api/v2/webhook/iottestware/55913/') {
          events+: [
            "push"
          ],
        },
      ],
    },
    orgs.newRepo('iottestware.coap') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "iottestware.coap",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('iottestware.dashboard') {
      allow_merge_commit: true,
      allow_update_branch: false,
      code_scanning_default_languages+: [
        "javascript",
        "javascript-typescript",
        "python",
        "typescript"
      ],
      code_scanning_default_setup_enabled: true,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "iottestware dashboard",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('iottestware.fuzzing') {
      allow_merge_commit: true,
      allow_update_branch: false,
      code_scanning_default_languages+: [
        "python"
      ],
      code_scanning_default_setup_enabled: true,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('iottestware.mqtt') {
      allow_merge_commit: true,
      allow_update_branch: false,
      code_scanning_default_languages+: [
        "python"
      ],
      code_scanning_default_setup_enabled: true,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "iottestware.mqtt",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('iottestware.opcua') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "opcua",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('iottestware.performance') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "IoT testware performance",
      web_commit_signoff_required: false,
    },
  ],
}
