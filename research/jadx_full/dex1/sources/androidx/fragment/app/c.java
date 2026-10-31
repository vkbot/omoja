package androidx.fragment.app;

import androidx.collection.ArrayMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SpecialEffectsController$Operation f182b;
    public final /* synthetic */ SpecialEffectsController$Operation c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ ArrayMap e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(SpecialEffectsController$Operation specialEffectsController$Operation, SpecialEffectsController$Operation specialEffectsController$Operation2, boolean z8, ArrayMap arrayMap) {
        this.f182b = specialEffectsController$Operation;
        this.c = specialEffectsController$Operation2;
        this.d = z8;
        this.e = arrayMap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        DefaultSpecialEffectsController.d(this.f182b, this.c, this.d, this.e);
    }
}
