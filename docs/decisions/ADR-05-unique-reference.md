# ADR-05 — Request Reference Generation

## Context
A reference based on repository count is unsafe after deletion and may collide during concurrent submission.

## Decision
Use a `RequestReferenceGenerator` backed by an atomic sequence or UUID mechanism. The exact implementation is outside CA2; the interface and uniqueness contract are part of the design.

## Consequences
The controller is independent of the reference algorithm. Tests can provide a deterministic fake generator.
