package androidx.core.app;

import android.app.ForegroundServiceStartNotAllowedException;
import android.content.ClipData;
import android.location.LocationRequest;
import android.p011os.OutcomeReceiver;
import android.view.ContentInfo;

/* JADX INFO: renamed from: androidx.core.app.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC0325c {
    /* JADX INFO: renamed from: d */
    public static /* bridge */ /* synthetic */ ForegroundServiceStartNotAllowedException m473d(IllegalStateException illegalStateException) {
        return (ForegroundServiceStartNotAllowedException) illegalStateException;
    }

    /* JADX INFO: renamed from: f */
    public static /* bridge */ /* synthetic */ LocationRequest m475f(Object obj) {
        return (LocationRequest) obj;
    }

    /* JADX INFO: renamed from: i */
    public static /* bridge */ /* synthetic */ OutcomeReceiver m478i(Object obj) {
        return (OutcomeReceiver) obj;
    }

    /* JADX INFO: renamed from: j */
    public static /* synthetic */ ContentInfo.Builder m479j(ClipData clipData, int i10) {
        return new ContentInfo.Builder(clipData, i10);
    }

    /* JADX INFO: renamed from: k */
    public static /* synthetic */ ContentInfo.Builder m480k(ContentInfo contentInfo) {
        return new ContentInfo.Builder(contentInfo);
    }

    /* JADX INFO: renamed from: m */
    public static /* bridge */ /* synthetic */ ContentInfo m482m(Object obj) {
        return (ContentInfo) obj;
    }

    /* JADX INFO: renamed from: p */
    public static /* synthetic */ void m485p() {
    }

    /* JADX INFO: renamed from: z */
    public static /* bridge */ /* synthetic */ boolean m495z(IllegalStateException illegalStateException) {
        return illegalStateException instanceof ForegroundServiceStartNotAllowedException;
    }
}
