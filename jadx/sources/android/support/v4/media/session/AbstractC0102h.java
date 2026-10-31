package android.support.v4.media.session;

import android.os.BadParcelableException;
import android.os.Bundle;
import android.util.Log;

/* JADX INFO: renamed from: android.support.v4.media.session.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0102h {
    /* JADX INFO: renamed from: a */
    public static void m276a(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(AbstractC0102h.class.getClassLoader());
        }
    }

    /* JADX INFO: renamed from: b */
    public static Bundle m277b(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        m276a(bundle);
        try {
            bundle.isEmpty();
            return bundle;
        } catch (BadParcelableException unused) {
            Log.e("MediaSessionCompat", "Could not unparcel the data.");
            return null;
        }
    }
}
