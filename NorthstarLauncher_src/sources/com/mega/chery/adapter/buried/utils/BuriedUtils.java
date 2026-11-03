package com.mega.chery.adapter.buried.utils;

import com.mega.chery.utils.CountryCode;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class BuriedUtils {
    public static final boolean IS_SAUDI = CountryCode.isCountry(CountryCode.SAUDI);
    private static SimpleDateFormat sSDF = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss", Locale.ENGLISH);

    public static String getTimeString() {
        return sSDF.format(new Date());
    }
}
