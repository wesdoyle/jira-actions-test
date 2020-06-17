# jira-actions-test

## Summary

This repository contains two example GitHub actions for Jira automation.  Either of these should be modified to meet specific requirements.

A. Comment on Jira Issue on commit

  - [add-comment-to-issue.yml](.github/workflows/add-comment-to-issue.yml)

B. Move issue to Done state when commit message ends with substring `CLOSE ISSUE`

  - [transition-issue.yml](.github/workflows/transition-issue.yml)


## Setup

The following key-value pairs need to be added to GitHub Secrets for the repositories where the GitHub Actions are to be run:

- `JIRA_API_TOKEN`
  - Create the Jira API token from the Account Settings > Security > API token [Link](https://id.atlassian.com/manage-profile/security/api-tokens)

- `JIRA_BASE_URL`
  - `<your_domain>.jira.com`

- `JIRA_USER_EMAIL`
  - The email associated with the Jira API token.
  
  
  ## Marketplace Actions Used

The following three GitHub Marketplace Actions are utilized for this automation:

- Jira Login: https://github.com/marketplace/actions/jira-login
- Jira Find Issue Key: https://github.com/marketplace/actions/jira-find-issue-key
- Jira Add Comment: https://github.com/marketplace/actions/jira-add-comment
- Jira Issue Transition: https://github.com/marketplace/actions/jira-issue-transition
