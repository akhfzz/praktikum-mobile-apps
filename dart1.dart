bool isWordChar(String char) {
  return RegExp('[A-Za-z0-9]').hasMatch(char) || char == '_';
}

isWord(String text) {
  return text != '' && text.split('').every(isWordChar);
}

isConsonant(String char) {
  return RegExp('[A-Za-z]').hasMatch(char) &&
      !RegExp('[AEIOUaeiou]').hasMatch(char);
}

isDigraph(String text) {
  text = text.toLowerCase();
  return text.length == 2 &&
      (['ng', 'ny', 'ai', 'au'].contains(text) ||
          (isConsonant(text[0]) && text[1] == 'h'));
}

revWords(String text) {
  String result = '', word = '', token = '';
  String char;
  for (char in (text + '  ').split('')) {
    if (isDigraph(token + char)) {
      token += char;
      continue;
    }
    if (isWord(word + token)) {
      word = token + word;
    } else {
      result += word;
      word = token;
    }
    token = char;
  }
  return result;
}
