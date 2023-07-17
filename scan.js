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

try {
  const data = fs.readFileSync('lib/data/i18n_md5_mapping.dart', 'utf8').split('\n');
  const lineIndex = data.findIndex((item) => item.indexOf('const languageMapping =') > -1);
  data[lineIndex] = 'const languageMapping = ';
  data[lineIndex + 1] = `    '''${JSON.stringify(originLanguageDict).replace(/\$/g, '\\$')}''';`;
  fs.writeFileSync('lib/data/i18n_md5_mapping.dart', data.join('\n'), 'utf8');
} catch (err) {
  console.log(`替换dart文件失败, ${err}`);
}

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
