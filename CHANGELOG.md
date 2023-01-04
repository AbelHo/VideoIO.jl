VideoIO v2.0.0 Release Notes
======================
## Breaking Changes

- The only breaking change in v1.0 -> v2.0 is the removal of the GLMakie-based video player that was accessed through
  Requires by loading GLMakie separately. The functionality has been moved to the package VideoView.jl