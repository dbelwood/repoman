# Repoman
## Create base repositories for salesforce.com projects

Project - a git repo (contains all the changes for all environments in the project)
Organization - A sfdc organization for a project (manages all the changes to this org in a git branch in the project repo)
Release - A set of changes originating in one org and going to another
Ticket - A user story, case, etc. that is accomplished via a series of changes, a ticket can belong to a release, it must belong to a project
Change - An individual change in a git commit for an environment
Commit - A set of changes from git

User stories
============
> 1. I as a user want to create a project to manage releases or an implementation
> 2. I as a user want to create organizations to track changes in a sfdc org
> 3. I as a user want to create a release to manage changes between organizations
> 4. I as a user want to create a ticket to manage work to be done.
> 5. I as a user want to track changes made to files so I can manage change in the system
> 6. I as a user want to track commits so that I can gather changes in an org over time
> 7. I as a user want to associate changes with tickets so that I can move all the changes for a ticket when the ticket is complete.
> 8. I as a release manager want to be able to gather changes by a date range to create a release
> 9. I as a release manager want to be able to add tickets to a release so that I can manage change by ticket