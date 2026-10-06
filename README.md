# Day 1: Ansible Ad-Hoc Orchestration & Multi-Node Inventory

## Architecture
This project establishes an agentless configuration management setup using **Ansible** and **ED25519 SSH key authentication**. It simulates a tiered infrastructure (`webservers` and `databases`) running across isolated targets.
## Key Concepts Implemented
- **Agentless Push Architecture:** Central control node pushes Python execution modules over standard SSH without background daemons on targets.
- **Grouped Inventory (`hosts.ini`):** Structured target groups (`webservers`, `databases`, `production:children`).
- **Privilege Escalation:** Executing administrative tasks (`apt`, `user`, `copy`) using `become` (`sudo`).
- **Idempotency Proof:** Verified that repeating user provisioning commands preserves existing state without duplicate side-effects (`changed: false`).

## Quick Verification
# Target specific group
ansible webservers -m command -a "uptime"

# Inspect kernel facts
ansible web1 -m setup -a "filter=ansible_distribution*"
