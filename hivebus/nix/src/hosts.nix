# SPDX-FileCopyrightText: 2023 The omnibus Authors
# SPDX-FileCopyrightText: 2024 The omnibus Authors
#
# SPDX-License-Identifier: MIT

(inputs.omnibus.load {
  src = projectRoot + "/units/nixos/hosts";
  loader = with haumea; [ (matchers.nix loaders.scoped) ];
  inputs = {
    inputs = inputs // root.pops.subflake.inputs;
    omnibus = inputs.omnibus // {
      self = root.omnibus.exports.default;
    };
  };
})
