#!groovy
@Library('expense-shared-library') _

def configMap = [
    application: "nodeFREKS",
    component: "frontend"
]

// Safely get branch name, default to 'main' if null (first-time build)
def branch = env.BRANCH_NAME ?: 'main'

if (branch.equalsIgnoreCase("main")) {
    echo "Main branch detected, triggering shared library"
    pipelineDecision.decidePipleine(configMap)
} else {
    echo "Non-main branch (${branch}), skipping shared library execution"
}