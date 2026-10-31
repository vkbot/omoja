package e0;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import androidx.core.os.ConfigurationCompat;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f1839a = m.h(new byte[]{24, -72, -94, -5, -58, -7, -16, -57, 12, -87, -75, -63}, new byte[]{121, -56, -46, -92, -86, -104, -98, -96});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f1840b = m.h(new byte[]{-1, -96, 33, 76, -4, -126}, new byte[]{-116, -39, 82, 56, -103, -17, 38, 48});

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String a() {
        String strLoadString = h0.b.o().loadString(f1839a, Locale.getDefault().getLanguage());
        return strLoadString.equals(f1840b) ? Resources.getSystem().getConfiguration().getLocales().get(0).getLanguage() : strLoadString;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Context b(Context context) {
        Locale locale = new Locale(a());
        Configuration configuration = new Configuration(context.getResources().getConfiguration());
        configuration.setLocale(locale);
        return context.createConfigurationContext(configuration);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(Activity activity, String str) {
        Locale locale = str.equals(f1840b) ? ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration()).get(0) : new Locale(str);
        Locale.setDefault(locale);
        Configuration configuration = new Configuration(activity.getResources().getConfiguration());
        configuration.setLocale(locale);
        activity.getResources().updateConfiguration(configuration, activity.getResources().getDisplayMetrics());
        h0.b.o().saveString(f1839a, str);
    }
}
