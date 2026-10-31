package p047e0;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import androidx.core.os.ConfigurationCompat;
import java.util.Locale;
import p078h0.C1652b;

/* JADX INFO: renamed from: e0.g0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1358g0 {

    /* JADX INFO: renamed from: a */
    public static final String f3235a = AbstractC1387m.m2421h(new byte[]{24, -72, -94, -5, -58, -7, -16, -57, 12, -87, -75, -63}, new byte[]{121, -56, -46, -92, -86, -104, -98, -96});

    /* JADX INFO: renamed from: b */
    public static final String f3236b = AbstractC1387m.m2421h(new byte[]{-1, -96, 33, 76, -4, -126}, new byte[]{-116, -39, 82, 56, -103, -17, 38, 48});

    /* JADX INFO: renamed from: a */
    public static String m2403a() {
        String strLoadString = C1652b.m2745o().loadString(f3235a, Locale.getDefault().getLanguage());
        return strLoadString.equals(f3236b) ? Resources.getSystem().getConfiguration().getLocales().get(0).getLanguage() : strLoadString;
    }

    /* JADX INFO: renamed from: b */
    public static Context m2404b(Context context) {
        Locale locale = new Locale(m2403a());
        Configuration configuration = new Configuration(context.getResources().getConfiguration());
        configuration.setLocale(locale);
        return context.createConfigurationContext(configuration);
    }

    /* JADX INFO: renamed from: c */
    public static void m2405c(Activity activity, String str) {
        Locale locale = str.equals(f3236b) ? ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration()).get(0) : new Locale(str);
        Locale.setDefault(locale);
        Configuration configuration = new Configuration(activity.getResources().getConfiguration());
        configuration.setLocale(locale);
        activity.getResources().updateConfiguration(configuration, activity.getResources().getDisplayMetrics());
        C1652b.m2745o().saveString(f3235a, str);
    }
}
