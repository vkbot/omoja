package m0;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i f3418b;
    public final /* synthetic */ int c;
    public final /* synthetic */ Context d;
    public final /* synthetic */ Integer e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Integer f3419f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ f(i iVar, int i9, Context context, Integer num, Integer num2) {
        this.f3418b = iVar;
        this.c = i9;
        this.d = context;
        this.e = num;
        this.f3419f = num2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        i iVar = this.f3418b;
        int i9 = this.c;
        Context context = this.d;
        Integer num = this.e;
        Integer num2 = this.f3419f;
        if (i9 == iVar.f3462j && iVar.isAdded()) {
            iVar.d.setText(context.getString(2131951800) + " " + num + e0.m.h(new byte[]{-117}, new byte[]{-92, -40, 5, 86, -80, -119, -89, 26}) + num2);
        }
    }
}
