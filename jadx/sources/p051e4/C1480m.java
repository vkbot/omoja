package p051e4;

import android.text.Editable;
import p192s3.AbstractC3197k;

/* JADX INFO: renamed from: e4.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1480m extends AbstractC3197k {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C1483p f3595b;

    public C1480m(C1483p c1483p) {
        this.f3595b = c1483p;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        this.f3595b.m2544b().mo2520a();
    }

    @Override // p192s3.AbstractC3197k, android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        this.f3595b.m2544b().mo2557b();
    }
}
