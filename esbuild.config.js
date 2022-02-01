import esbuild from 'esbuild';
import babel from 'esbuild-plugin-babel';
// TODO: add a plugin to remove export
esbuild
  .build({
    entryPoints: ['src/entry.js'],
    bundle: true,
    outfile: 'dist/main.latest.js',
    plugins: [babel()],
    format: "esm",
    target: "es5",
    inject: ["./src/index.js"]
  })
  .catch(() => process.exit(1));