#!/usr/bin/env node

import { promisify } from "util";
import { exec as execCb } from "child_process";

const exec = promisify(execCb);

const colors = {
  white: "#f8f8f2",
  gray: "#44475a",
  dark_gray: "#282a36",
  light_purple: "#bd93f9",
  dark_purple: "#6272a4",
  cyan: "#8be9fd",
  green: "#50fa7b",
  orange: "#ffb86c",
  red: "#ff5555",
  pink: "#ff79c6",
  yellow: "#f1fa8c",
};

const run = async (command) => {
  const { stdout } = await exec(command);
  return stdout.toString().trim();
};

const cpu = async (bg, fg = colors.dark_gray) => {
  const value = parseFloat(
    await run("ps -A -o %cpu | awk -F. '{s+=$1} END {print s}'"),
  );
  const scores = parseFloat(await run("sysctl -n hw.logicalcpu"));
  const usage = parseInt(value / scores)
    .toString()
    .padStart(2, "0");
  return `#[fg=${bg}]#[fg=${fg}]#[bg=${bg}]   ${usage}% #[bg=${bg}]`;
};

// Similar updates for the other functions...

const main = async () => {
  let statusRight = "";
  statusRight += await cpu(colors.pink);
  statusRight += await battery(colors.orange);
  statusRight += await node_npm_version(colors.yellow);
  statusRight += await mrwatson(colors.green);
  statusRight += await datetime(colors.light_purple);
  console.log(statusRight);
};

main();
