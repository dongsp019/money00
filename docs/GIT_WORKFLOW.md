# Git Workflow

## Branches
- `main`: production-ready only
- `feature/<name>`: new feature
- `fix/<name>`: bug fix
- `docs/<name>`: documentation

## Standard flow
1. Pull latest `main`
2. Create a task branch
3. Make one logically scoped change
4. Test locally
5. Commit with a clear message
6. Push branch and open Pull Request
7. Review diff and acceptance criteria
8. Merge only after approval
9. Netlify deploys `main`

## Commit examples
- `feat: add monthly category summary`
- `fix: validate imported transaction records`
- `docs: clarify iOS install steps`

## Conflict policy
Do not force-push shared branches. Do not overwrite another agent's changes. Resolve conflicts by reviewing both changes and running tests again.
