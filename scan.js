/* eslint-disable no-restricted-syntax */
/* eslint-disable no-prototype-builtins */
/* eslint-disable linebreak-style */
const fs = require('fs');
const path = require('path');
const readline = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout,
});

const originLanguageFileName = 'strings_zh-Hans.i18n.json';

const originLanguageFile = path.join('lib', 'language_json', originLanguageFileName);

const originLanguageString = fs.readFileSync(originLanguageFile);

const originLanguageDict = JSON.parse(originLanguageString);

const languageFiles = fs.readdirSync(path.join('lib', 'language_json')).filter((e) => (e !== originLanguageFileName) && e !== 'strings.g.dart');

languageFiles.forEach((targetFileName) => {
  try {
    const targetFilePath = path.join('lib', 'language_json', targetFileName);
    const targetDataFile = fs.readFileSync(targetFilePath);
    const targetData = JSON.parse(targetDataFile);

    for (const item of Object.keys(originLanguageDict)) {
      if (!targetData.hasOwnProperty(item)) {
        targetData[item] = originLanguageDict[item];
      }
    }

    fs.writeFile(
      targetFilePath,
      JSON.stringify(targetData),
      (err) => {
        if (err) {
          console.error(err);
        }
      },
    );
  } catch (err) {
    console.error(err);
  }
});

readline.close();
