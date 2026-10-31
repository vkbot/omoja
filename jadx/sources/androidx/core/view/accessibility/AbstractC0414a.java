package androidx.core.view.accessibility;

import android.media.session.MediaSessionManager;
import android.text.PrecomputedText;
import android.view.DisplayCutout;

/* JADX INFO: renamed from: androidx.core.view.accessibility.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC0414a {
    /* JADX INFO: renamed from: d */
    public static /* synthetic */ MediaSessionManager.RemoteUserInfo m687d(int i10, int i11, String str) {
        return new MediaSessionManager.RemoteUserInfo(str, i10, i11);
    }

    /* JADX INFO: renamed from: h */
    public static /* bridge */ /* synthetic */ DisplayCutout m691h(Object obj) {
        return (DisplayCutout) obj;
    }

    /* JADX INFO: renamed from: s */
    public static /* bridge */ /* synthetic */ boolean m702s(CharSequence charSequence) {
        return charSequence instanceof PrecomputedText;
    }

    /* JADX INFO: renamed from: t */
    public static /* bridge */ /* synthetic */ boolean m703t(Object obj) {
        return obj instanceof DisplayCutout;
    }
}
