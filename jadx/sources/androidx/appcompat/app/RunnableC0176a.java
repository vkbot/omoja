package androidx.appcompat.app;

import android.content.Context;

/* JADX INFO: renamed from: androidx.appcompat.app.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0176a implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f273b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Context f274c;

    public /* synthetic */ RunnableC0176a(Context context, int i10) {
        this.f273b = i10;
        this.f274c = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f273b) {
            case 0:
                AppCompatDelegate.lambda$syncRequestedAndStoredLocales$1(this.f274c);
                break;
            default:
                AppCompatDelegate.syncRequestedAndStoredLocales(this.f274c);
                break;
        }
    }
}
