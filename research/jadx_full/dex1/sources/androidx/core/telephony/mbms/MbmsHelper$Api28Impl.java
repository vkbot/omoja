package androidx.core.telephony.mbms;

import android.content.Context;
import android.telephony.mbms.ServiceInfo;
import androidx.annotation.RequiresApi;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(28)
public class MbmsHelper$Api28Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private MbmsHelper$Api28Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static CharSequence getBestNameForService(Context context, ServiceInfo serviceInfo) {
        Set<Locale> namedContentLocales = serviceInfo.getNamedContentLocales();
        if (namedContentLocales.isEmpty()) {
            return null;
        }
        String[] strArr = new String[namedContentLocales.size()];
        Iterator<Locale> it = serviceInfo.getNamedContentLocales().iterator();
        int i9 = 0;
        while (it.hasNext()) {
            strArr[i9] = it.next().toLanguageTag();
            i9++;
        }
        Locale firstMatch = context.getResources().getConfiguration().getLocales().getFirstMatch(strArr);
        if (firstMatch == null) {
            return null;
        }
        return serviceInfo.getNameForLocale(firstMatch);
    }
}
