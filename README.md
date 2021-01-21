# prometheus-pushgw-practice

## System Requirements

- Mac OS `11.1`
- Docker Desktop `3.0.0`
  - Docker `20.10.0`
  - Kubernates `1.19.3`

## Quick Start

### Start Up

Switch kubernates context to `docker-desktop`

```bash
kubectl config use-context docker-desktop
```

Run the following command to start the kubernates pods.

```bash
./startup.sh
```

You can access the console by opening the following URL in your browser.

- Prometheus: `http://localhost:30000/`
- grafana: `http://localhost:30020/`

### Push samples

* Push a simple sample.

```bash
echo "some_metric 3.14" | curl --data-binary @- http://localhost:30040/metrics/job/some_job
```

* Push something more complex into the group

```bash
cat <<EOF | curl --data-binary @- http://localhost:30040/metrics/job/some_job/instance/some_instance
some_metric{label="val1"} 42
another_metric 2398.283
EOF
```

