package androidx.core.text.util;

import android.icu.number.NumberFormatter;
import android.icu.number.UnlocalizedNumberFormatter;
import android.icu.text.DateFormat$HourCycle;
import android.icu.text.DateTimePatternGenerator;
import android.icu.util.MeasureUnit;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(33)
public class LocalePreferences$Api33Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private LocalePreferences$Api33Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static String getHourCycle(@NonNull Locale locale) {
        return getHourCycleType(DateTimePatternGenerator.getInstance(locale).getDefaultHourCycle());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static String getHourCycleType(DateFormat$HourCycle dateFormat$HourCycle) {
        int i9 = LocalePreferences$1.$SwitchMap$android$icu$text$DateFormat$HourCycle[dateFormat$HourCycle.ordinal()];
        if (i9 == 1) {
            return LocalePreferences$HourCycle.H11;
        }
        if (i9 == 2) {
            return LocalePreferences$HourCycle.H12;
        }
        if (i9 != 3) {
            return i9 != 4 ? "" : LocalePreferences$HourCycle.H24;
        }
        return LocalePreferences$HourCycle.H23;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static String getResolvedTemperatureUnit(@NonNull Locale locale) {
        String identifier = ((UnlocalizedNumberFormatter) ((UnlocalizedNumberFormatter) NumberFormatter.with().usage("weather")).unit(MeasureUnit.CELSIUS)).locale(locale).format(1L).getOutputUnit().getIdentifier();
        return identifier.startsWith(LocalePreferences$TemperatureUnit.FAHRENHEIT) ? LocalePreferences$TemperatureUnit.FAHRENHEIT : identifier;
    }
}
