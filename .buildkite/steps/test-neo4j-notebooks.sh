#!/bin/bash

set -xeo pipefail

echo "--- :python: installing stellargraph"
# install stellargraph itself, which (hopefully) won't install any dependencies
pip install .

echo "--- listing dependency versions"
pip freeze

directory="demos/connector/neo4j"
notebooks=('load-cora-into-neo4j.ipynb' 'directed-graphsage-on-cora-neo4j-example.ipynb' 'undirected-graphsage-on-cora-neo4j-example.ipynb')

for name in "${notebooks[@]}"; do
  .buildkite/steps/test-single-notebook.sh "$directory/$name"
done
