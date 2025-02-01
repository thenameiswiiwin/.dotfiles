import { readFileSync, writeFileSync } from "fs";

// Read the input file and split it into lines
const rows = readFileSync("./test-fonts.sh", "utf8").split("\n");

let symbolMap = "";
let isCapturing = false;

// Iterate over each line of the file
for (let i = 0; i < rows.length; i++) {
  const row = rows[i];

  // Start capturing lines after the function declaration
  if (row.includes("function test-fonts() {")) {
    isCapturing = true;
    continue; // Skip the function declaration line
  }

  // Capture lines between the function declaration and closing brace
  if (isCapturing) {
    // If the line contains an "echo", extract the title
    if (row.includes(`echo "`)) {
      const match = row.match(/"(.*)"/);
      if (match) {
        const [, title] = match;
        symbolMap += `# ${title}\n`;
      }
    }
    // If the line contains "print-unicode-ranges", process the range
    else if (row.includes(`print-unicode-ranges`)) {
      const match = row.match(/print-unicode-ranges (.*)/);
      if (match) {
        let [, codes] = match;
        // Split and pair up the Unicode range codes
        const ranges = codes.split(" ").reduce((acc, val, idx, arr) => {
          if (idx % 2 === 0) {
            acc.push([val, arr[idx + 1]]);
          }
          return acc;
        }, []);

        // Format the ranges
        const formattedRanges = ranges
          .map(([first, last]) => `U+${first}-U+${last}`)
          .join(",");
        symbolMap += `symbol_map ${formattedRanges} Symbols Nerd Font\n\n`;
      }
    }
    // End capturing when the closing brace is found
    else if (row.includes("}")) {
      break;
    }
  }
}

// Write the generated symbol map to a file
writeFileSync("./symbol-map.conf", symbolMap);

console.log("done");
