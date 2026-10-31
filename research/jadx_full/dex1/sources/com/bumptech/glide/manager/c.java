package com.bumptech.glide.manager;

import android.content.Context;
import android.net.ConnectivityManager;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c implements b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f598b;
    public final com.bumptech.glide.o c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(Context context, com.bumptech.glide.o oVar) {
        this.f598b = context.getApplicationContext();
        this.c = oVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.manager.i
    public final void e() {
        t tVarC = t.c(this.f598b);
        com.bumptech.glide.o oVar = this.c;
        synchronized (tVarC) {
            ((HashSet) tVarC.e).remove(oVar);
            if (tVarC.c && ((HashSet) tVarC.e).isEmpty()) {
                s sVar = (s) tVarC.d;
                ((ConnectivityManager) ((c0.h) sVar.d).get()).unregisterNetworkCallback((r) sVar.e);
                tVarC.c = false;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.manager.i
    public final void onStart() {
        t tVarC = t.c(this.f598b);
        com.bumptech.glide.o oVar = this.c;
        synchronized (tVarC) {
            ((HashSet) tVarC.e).add(oVar);
            tVarC.g();
        }
    }

    @Override // com.bumptech.glide.manager.i
    public final void c() {
    }
}
