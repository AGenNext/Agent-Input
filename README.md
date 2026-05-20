# Agent-Input

Agent-Input owns standardized input envelopes for AGenNext agents, teams, workflows, hooks, handoffs, evaluations, and platform decisions.

## Decision

All work entering AGenNext should be normalized into a standard input envelope before it reaches teams, runtime, handoff, eval, or platform governance.

## Scope

Agent-Input owns:

- input envelope formats
- input validation rules
- normalized task input
- source metadata
- actor metadata
- environment hints
- context references
- knowledge references
- priority/risk hints
- idempotency keys
- correlation IDs

Agent-Input does not own:

- runtime execution
- final platform decisions
- handoff acceptance
- evaluation scoring
- memory storage beyond input records

## Boundary

| Component | Responsibility |
|---|---|
| Agent-Input | Standardized input envelopes and validation |
| Agent-Platform | Final governance and routing decisions |
| Agent-Runtime | Executes normalized work |
| Agent-Hooks | External event ingress using input envelopes |
| Agent-Handoff | A2A transfer using normalized task/context fields |
| Agent-Eval | Evaluates normalized work against standards |
| Agent-Traces | Records input lifecycle events |

## Standard input envelope

Every input should include:

```txt
input_id
source
actor
task
context
environment
knowledge
priority
risk_hint
correlation_id
idempotency_key
created_at
```

## Flow

```txt
External request / Chat / Hook / API
  ↓
Agent-Input normalizes input
  ↓
Agent-Platform routes or approves
  ↓
Agent-Runtime executes
  ↓
Agent-Traces records lifecycle
```

## Rule

Agents should not consume raw, unstructured input directly.
