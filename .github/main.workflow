name: Add Comment to JIRA Issue

on:
    push

jobs:
    add-issue-comment:
      name: add comment to jira issue
      runs-on: ubuntu-latest
      steps:
      - name: login
        uses: atlassian/gajira-login@master
        env:
          JIRA_BASE_URL: ${{ secrets.JIRA_BASE_URL }}
          JIRA_USER_EMAIL: ${{ secrets.JIRA_USER_EMAIL }}
          JIRA_API_TOKEN: ${{ secrets.JIRA_API_TOKEN }}

      - name: find issue from comment
        uses: atlassian/gajira-find-issue-key@master
        with:
          from: commits

      - name: comment on an issue
        uses: atlassian/gajira-comment@master
        with:
        issue: ${{ steps.find_issue_from_comment.outputs.issue }}
        "${{ github.event.pusher.name }} pushed to repo: ${{ github.event.repository.full_name }}"
