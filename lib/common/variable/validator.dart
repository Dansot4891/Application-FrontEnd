//일반
String? idValidator(String? val) {
  if (val!.isEmpty) {
    return '아이디를 입력해주세요.';
  } else {
    return null;
  }
}

String? pwValidator(String? val) {
  if (val!.isEmpty) {
    return '비밀번호를 입력해주세요.';
  } else {
    return null;
  }
}

String? emailValidator(String? val) {
  if (val!.isEmpty) {
    return '이메일을 입력해주세요.';
  } else {
    return null;
  }
}

String? nameValidator(String? val) {
  if (val!.isEmpty) {
    return '이름을 입력해주세요.';
  } else {
    return null;
  }
}

String? nickNameValidator(String? val) {
  if (val!.isEmpty) {
    return '닉네임을 입력해주세요.';
  } else {
    return null;
  }
}

String? titleValidator(String? val) {
  if (val!.isEmpty) {
    return '제목을 입력해주세요.';
  } else {
    return null;
  }
}

String? contentValidator(String? val) {
  if (val!.isEmpty) {
    return '내용을 입력해주세요.';
  } else {
    return null;
  }
}

//특수
String? birthValidator(String? val) {
  if (val!.isEmpty) {
    return '생년월일을 입력해주세요.';
  } else {
    return null;
  }
}

String? signupEmailValidator(String? val) {
  if (val!.isEmpty) {
    return '이메일을 입력해주세요.';
  } else if (!RegExp(
          r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
      .hasMatch(val)) {
    return '올바른 이메일 형식을 입력해주세요.';
  }
  return null;
}