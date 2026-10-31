package com.bumptech.glide.manager;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class u implements i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f616b = Collections.newSetFromMap(new WeakHashMap());

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.manager.i
    public final void c() {
        ArrayList arrayListE = c0.p.e(this.f616b);
        int size = arrayListE.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayListE.get(i9);
            i9++;
            ((z.d) obj).c();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.manager.i
    public final void e() {
        ArrayList arrayListE = c0.p.e(this.f616b);
        int size = arrayListE.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayListE.get(i9);
            i9++;
            ((z.d) obj).e();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.manager.i
    public final void onStart() {
        ArrayList arrayListE = c0.p.e(this.f616b);
        int size = arrayListE.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayListE.get(i9);
            i9++;
            ((z.d) obj).onStart();
        }
    }
}
