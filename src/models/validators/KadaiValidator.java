package models.validators;

import java.util.ArrayList;
import java.util.List;
import models.Kadai;

public class KadaiValidator {
    // バリデーションを実行する
    public static List<String> validate(Kadai m) {
        List<String> errors = new ArrayList<String>();

        String content_error = validateContent(m.getContent());
        if(!content_error.equals("")) {
            errors.add(content_error);
        }

        return errors;
    }

    // タイトルの必須入力チェック

    // メッセージの必須入力チェック
    private static String validateContent(String content) {
        if(content == null || content.equals("")) {
            return "メッセージを入力してください。";
        }

        return "";
    }
}