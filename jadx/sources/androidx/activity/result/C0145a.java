package androidx.activity.result;

import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: androidx.activity.result.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0145a implements ActivityResultCallback {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f252a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Function1 f253b;

    public /* synthetic */ C0145a(int i10, Function1 function1) {
        this.f252a = i10;
        this.f253b = function1;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public final void onActivityResult(Object obj) {
        switch (this.f252a) {
            case 0:
                this.f253b.invoke(obj);
                break;
            default:
                this.f253b.invoke(obj);
                break;
        }
    }
}
