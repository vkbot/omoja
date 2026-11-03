package com.mega.chery.utils;

import android.text.TextUtils;
import com.mega.ecu.MegaProperties;
import com.mega.nexus.os.MegaSystemProperties;
import java.util.Arrays;
import java.util.function.Predicate;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public final class CountryCode {
    public static final String CHINA = toBinaryString("00000000");
    public static final String ENGLAND = toBinaryString("00000001");
    public static final String IRAQ = toBinaryString("00000010");
    public static final String ARGENTINA = toBinaryString("00000011");
    public static final String CHILE = toBinaryString("00000100");
    public static final String INDONESIA = toBinaryString("00000101");
    public static final String SOUTH_AFRICA = toBinaryString("00000110");
    public static final String MALAYSIA = toBinaryString("00000111");
    public static final String ALGERIA = toBinaryString("00001000");
    public static final String BRAZIL = toBinaryString("00001001");
    public static final String CENTRAL_ASIA = toBinaryString("00001010");
    public static final String URUGUAY = toBinaryString("00001011");
    public static final String COLOMBIA = toBinaryString("00001100");
    public static final String PERU = toBinaryString("00001101");
    public static final String GULF = toBinaryString("00001110");
    public static final String RUSSIA = toBinaryString("00001111");
    public static final String EGYPT = toBinaryString("00010000");
    public static final String ITALY = toBinaryString("00010001");
    public static final String AZERBAIJAN = toBinaryString("00010010");
    public static final String UKRAINE = toBinaryString("00010011");
    public static final String ECUADOR = toBinaryString("00010100");
    public static final String MEXICO = toBinaryString("00010101");
    public static final String SENEGAL = toBinaryString("00010110");
    public static final String LIBYA = toBinaryString("00010111");
    public static final String NIGERIA = toBinaryString("00011000");
    public static final String SYRIA = toBinaryString("00011001");
    public static final String BOLIVIA = toBinaryString("00011010");
    public static final String NORWAY = toBinaryString("00011011");
    public static final String PHILIPPINES = toBinaryString("00011100");
    public static final String SAUDI = toBinaryString("00011101");
    public static final String USA = toBinaryString("00011110");
    public static final String PAKISTAN = toBinaryString("00011111");
    public static final String THAILAND = toBinaryString("00100000");
    public static final String SUDAN = toBinaryString("00100001");
    public static final String KAZAKHSTAN = toBinaryString("00100010");
    public static final String INDIA = toBinaryString("00100011");
    public static final String NEW_ZEALAND = toBinaryString("00100100");
    public static final String AUSTRALIA = toBinaryString("00100101");
    public static final String MYANMAR = toBinaryString("00100110");
    public static final String TURKEY = toBinaryString("00100111");
    public static final String ISRAEL = toBinaryString("00101000");
    public static final String SERBIA = toBinaryString("00101001");
    public static final String ETHIOPIA = toBinaryString("00101010");
    public static final String VIETNAM = toBinaryString("00101011");
    public static final String NORTH_AMERICA = toBinaryString("00101100");
    public static final String TUNISIA = toBinaryString("00101101");
    public static final String UZBEKISTAN = toBinaryString("00101110");
    public static final String NEPAL = toBinaryString("00101111");
    public static final String BANGLADESH = toBinaryString("00110000");
    public static final String UNITED_ARAB_EMIRATES = toBinaryString("00110001");
    public static final String SPAIN = toBinaryString("00110010");
    public static final String COSTA_RICA = toBinaryString("00110011");
    public static final String VENEZUELA = toBinaryString("00110100");
    public static final String GERMANY = toBinaryString("00110101");
    public static final String POLAND = toBinaryString("00110110");
    public static final String FRANCE = toBinaryString("00110111");
    public static final String SINGAPORE = toBinaryString("00111000");
    private static String sCountryCode = "";

    private static String toBinaryString(String str) {
        try {
            return String.valueOf(Integer.parseInt(str, 2));
        } catch (RuntimeException e) {
            MLog.d("CountryCode", "error:" + e);
            return "";
        }
    }

    public static String getCurrentCountry() {
        if (TextUtils.isEmpty(sCountryCode)) {
            sCountryCode = MegaSystemProperties.get(MegaProperties.CONFIG_COUNTRY_OR_REGION, CHINA);
            MLog.d("CountryCode", "CountryCode=" + sCountryCode);
            if (TestManager.DEBUG_MODE) {
                sCountryCode = MegaSystemProperties.get("country", sCountryCode);
            }
        }
        return sCountryCode;
    }

    public static boolean isEU() {
        String currentCountry = getCurrentCountry();
        return ITALY.equals(currentCountry) || NORWAY.equals(currentCountry) || SPAIN.equals(currentCountry) || GERMANY.equals(currentCountry) || POLAND.equals(currentCountry) || FRANCE.equals(currentCountry);
    }

    public static boolean isSimilarEU() {
        String currentCountry = getCurrentCountry();
        return TURKEY.equals(currentCountry) || ISRAEL.equals(currentCountry) || SERBIA.equals(currentCountry);
    }

    public static boolean isAustralia() {
        return isCountry(SINGAPORE) || isCountry(AUSTRALIA);
    }

    public static boolean isEUGroup() {
        return isEU() || isSimilarEU() || isCountry(ENGLAND);
    }

    public static boolean isChina() {
        return isCountry(CHINA) || TextUtils.isEmpty(getCurrentCountry());
    }

    public static boolean isCountry(String str) {
        return TextUtils.equals(str, getCurrentCountry());
    }

    public static boolean inCountries(String... strArr) {
        return Arrays.stream(strArr).anyMatch(new Predicate() { // from class: com.mega.chery.utils.CountryCode$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return TextUtils.equals((String) obj, CountryCode.getCurrentCountry());
            }
        });
    }

    public static boolean isFunctionSafeArea() {
        return isEUGroup();
    }
}
