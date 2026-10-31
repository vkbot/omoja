package androidx.core.text.util;

import android.os.Build$VERSION;
import android.text.format.DateFormat;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(21)
public final class LocalePreferences {
    private static final String TAG = "LocalePreferences";
    private static final String[] WEATHER_FAHRENHEIT_COUNTRIES = {"BS", "BZ", "KY", "PR", "PW", "US"};

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private LocalePreferences() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static String getBaseFirstDayOfWeek(@NonNull Locale locale) {
        return getStringOfFirstDayOfWeek(Calendar.getInstance(locale).getFirstDayOfWeek());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static String getBaseHourCycle(@NonNull Locale locale) {
        return DateFormat.getBestDateTimePattern(locale, "jm").contains("H") ? LocalePreferences$HourCycle.H23 : LocalePreferences$HourCycle.H12;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static String getCalendarType(@NonNull Locale locale, boolean z8) {
        String unicodeLocaleType = getUnicodeLocaleType("ca", "", locale, z8);
        return unicodeLocaleType != null ? unicodeLocaleType : LocalePreferences$Api24Impl.getCalendarType(locale);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Locale getDefaultLocale() {
        return Locale.getDefault();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static String getFirstDayOfWeek(@NonNull Locale locale, boolean z8) {
        String unicodeLocaleType = getUnicodeLocaleType("fw", "", locale, z8);
        return unicodeLocaleType != null ? unicodeLocaleType : getBaseFirstDayOfWeek(locale);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static String getHourCycle(@NonNull Locale locale, boolean z8) {
        String unicodeLocaleType = getUnicodeLocaleType("hc", "", locale, z8);
        if (unicodeLocaleType != null) {
            return unicodeLocaleType;
        }
        return Build$VERSION.SDK_INT >= 33 ? LocalePreferences$Api33Impl.getHourCycle(locale) : getBaseHourCycle(locale);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static String getStringOfFirstDayOfWeek(int i9) {
        return (i9 < 1 || i9 > 7) ? "" : new String[]{LocalePreferences$FirstDayOfWeek.SUNDAY, LocalePreferences$FirstDayOfWeek.MONDAY, LocalePreferences$FirstDayOfWeek.TUESDAY, LocalePreferences$FirstDayOfWeek.WEDNESDAY, LocalePreferences$FirstDayOfWeek.THURSDAY, LocalePreferences$FirstDayOfWeek.FRIDAY, LocalePreferences$FirstDayOfWeek.SATURDAY}[i9 - 1];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static String getTemperatureHardCoded(Locale locale) {
        return Arrays.binarySearch(WEATHER_FAHRENHEIT_COUNTRIES, locale.getCountry()) >= 0 ? LocalePreferences$TemperatureUnit.FAHRENHEIT : LocalePreferences$TemperatureUnit.CELSIUS;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static String getTemperatureUnit(@NonNull Locale locale, boolean z8) {
        String unicodeLocaleType = getUnicodeLocaleType("mu", "", locale, z8);
        if (unicodeLocaleType != null) {
            return unicodeLocaleType;
        }
        return Build$VERSION.SDK_INT >= 33 ? LocalePreferences$Api33Impl.getResolvedTemperatureUnit(locale) : getTemperatureHardCoded(locale);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static String getUnicodeLocaleType(String str, String str2, Locale locale, boolean z8) {
        String unicodeLocaleType = locale.getUnicodeLocaleType(str);
        if (unicodeLocaleType != null) {
            return unicodeLocaleType;
        }
        if (z8) {
            return null;
        }
        return str2;
    }

    @NonNull
    public static String getCalendarType(@NonNull Locale locale) {
        return getCalendarType(locale, true);
    }

    @NonNull
    public static String getFirstDayOfWeek(@NonNull Locale locale) {
        return getFirstDayOfWeek(locale, true);
    }

    @NonNull
    public static String getCalendarType(boolean z8) {
        return getCalendarType(LocalePreferences$Api24Impl.getDefaultLocale(), z8);
    }

    @NonNull
    public static String getFirstDayOfWeek(boolean z8) {
        return getFirstDayOfWeek(LocalePreferences$Api24Impl.getDefaultLocale(), z8);
    }

    @NonNull
    public static String getCalendarType() {
        return getCalendarType(true);
    }

    @NonNull
    public static String getFirstDayOfWeek() {
        return getFirstDayOfWeek(true);
    }

    @NonNull
    public static String getHourCycle(@NonNull Locale locale) {
        return getHourCycle(locale, true);
    }

    @NonNull
    public static String getTemperatureUnit(@NonNull Locale locale) {
        return getTemperatureUnit(locale, true);
    }

    @NonNull
    public static String getHourCycle(boolean z8) {
        return getHourCycle(LocalePreferences$Api24Impl.getDefaultLocale(), z8);
    }

    @NonNull
    public static String getTemperatureUnit(boolean z8) {
        return getTemperatureUnit(LocalePreferences$Api24Impl.getDefaultLocale(), z8);
    }

    @NonNull
    public static String getHourCycle() {
        return getHourCycle(true);
    }

    @NonNull
    public static String getTemperatureUnit() {
        return getTemperatureUnit(true);
    }
}
