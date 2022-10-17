import { transform as babelTransform } from "@babel/standalone";
import presetSolid from "babel-preset-solid";

export function transform(code) {
  return babelTransform(code, {
    presets: [
      // custom presets go here
      presetSolid()
    ],
  });
}
