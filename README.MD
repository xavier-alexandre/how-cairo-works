# How Cairo Works - Exercices

Exercises from the Cairo docs at https://starknet.io/docs/how_cairo_works

## Using Python venv

```shell
cd how-cairo-works
source ~/cairo_venv/bin/activate
code .
```

## Compiling a single file

```shell
cairo-compile XXX.cairo --out XXX.json
```

## Running a file

```shell
cairo-run \
  --print_output \
  --print_memory \
  --layout=small \
  --print_info --relocate_prints \
  --profile_output profile.pb.gz \
  --cairo_path="/home/cairo_libs:/tmp/cairo_libs" \
  --steps=16 \
  --program=XXX.json
```
