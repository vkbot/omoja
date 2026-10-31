package androidx.core.view;

import android.view.ViewConfiguration;
import androidx.core.util.Supplier;

/* JADX INFO: renamed from: androidx.core.view.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0429k implements Supplier {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f402b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ ViewConfiguration f403c;

    public /* synthetic */ C0429k(ViewConfiguration viewConfiguration, int i10) {
        this.f402b = i10;
        this.f403c = viewConfiguration;
    }

    @Override // androidx.core.util.Supplier
    public final Object get() {
        int scaledMaximumFlingVelocity;
        switch (this.f402b) {
            case 0:
                scaledMaximumFlingVelocity = this.f403c.getScaledMaximumFlingVelocity();
                break;
            default:
                scaledMaximumFlingVelocity = this.f403c.getScaledMinimumFlingVelocity();
                break;
        }
        return Integer.valueOf(scaledMaximumFlingVelocity);
    }
}
