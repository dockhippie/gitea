local pipeline = import 'pipeline.libsonnet';
local name = 'webhippie/gitea';

[
  pipeline.build(name, 'latest', 'latest', 'amd64'),
  pipeline.build(name, 'latest', 'latest', 'arm32v6'),
  pipeline.build(name, 'latest', 'latest', 'arm64v8'),
  pipeline.manifest('latest', 'latest', ['amd64', 'arm32v6', 'arm64v8']),
  pipeline.build(name, 'v1.9', '1.9', 'amd64'),
  pipeline.build(name, 'v1.9', '1.9', 'arm32v6'),
  pipeline.build(name, 'v1.9', '1.9', 'arm64v8'),
  pipeline.manifest('v1.9', '1.9', ['amd64', 'arm32v6', 'arm64v8']),
  pipeline.build(name, 'v1.8', '1.8', 'amd64'),
  pipeline.build(name, 'v1.8', '1.8', 'arm32v6'),
  pipeline.build(name, 'v1.8', '1.8', 'arm64v8'),
  pipeline.manifest('v1.8', '1.8', ['amd64', 'arm32v6', 'arm64v8']),
  pipeline.microbadger(['latest', '1.9', '1.8']),
]
