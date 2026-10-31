package p041d4;

import android.database.DataSetObserver;
import com.google.android.material.tabs.TabLayout;

/* JADX INFO: renamed from: d4.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1272f extends DataSetObserver {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ TabLayout f3044a;

    public C1272f(TabLayout tabLayout) {
        this.f3044a = tabLayout;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        this.f3044a.m1839j();
    }

    @Override // android.database.DataSetObserver
    public final void onInvalidated() {
        this.f3044a.m1839j();
    }
}
