package com.android.launcher3.compat;

import android.content.Context;
import android.icu.text.AlphabeticIndex;
import android.os.LocaleList;
import com.android.launcher3.Utilities;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class AlphabeticIndexCompat {
    private static final String MID_DOT = "∙";
    private final AlphabeticIndex.ImmutableIndex mBaseIndex;
    private final String mDefaultMiscLabel;

    public AlphabeticIndexCompat(Context context) {
        this(context.getResources().getConfiguration().getLocales());
    }

    public AlphabeticIndexCompat(LocaleList locales) {
        int size = locales.size();
        Locale locale = size == 0 ? Locale.ENGLISH : locales.get(0);
        AlphabeticIndex alphabeticIndex = new AlphabeticIndex(locale);
        for (int i = 1; i < size; i++) {
            alphabeticIndex.addLabels(locales.get(i));
        }
        alphabeticIndex.addLabels(Locale.ENGLISH);
        this.mBaseIndex = alphabeticIndex.buildImmutableIndex();
        if (locale.getLanguage().equals(Locale.JAPANESE.getLanguage())) {
            this.mDefaultMiscLabel = "他";
        } else {
            this.mDefaultMiscLabel = MID_DOT;
        }
    }

    public String computeSectionName(CharSequence cs) {
        String strTrim = Utilities.trim(cs);
        AlphabeticIndex.ImmutableIndex immutableIndex = this.mBaseIndex;
        String label = immutableIndex.getBucket(immutableIndex.getBucketIndex(strTrim)).getLabel();
        if (!Utilities.trim(label).isEmpty() || strTrim.length() <= 0) {
            return label;
        }
        int iCodePointAt = strTrim.codePointAt(0);
        if (Character.isDigit(iCodePointAt)) {
            return "#";
        }
        return Character.isLetter(iCodePointAt) ? this.mDefaultMiscLabel : MID_DOT;
    }
}
