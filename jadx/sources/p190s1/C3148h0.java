package p190s1;

import android.text.Editable;
import android.text.TextWatcher;

/* JADX INFO: renamed from: s1.h0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3148h0 implements TextWatcher {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f9024b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3150i0 f9025c;

    public /* synthetic */ C3148h0(C3150i0 c3150i0, int i10) {
        this.f9024b = i10;
        this.f9025c = c3150i0;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        int i10 = this.f9024b;
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        int i13 = this.f9024b;
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        switch (this.f9024b) {
            case 0:
                this.f9025c.m4983a(charSequence == null ? "" : charSequence.toString());
                break;
            default:
                this.f9025c.m4983a(charSequence == null ? "" : charSequence.toString());
                break;
        }
    }

    /* JADX INFO: renamed from: a */
    private final void m4979a(Editable editable) {
    }

    /* JADX INFO: renamed from: b */
    private final void m4980b(Editable editable) {
    }

    /* JADX INFO: renamed from: c */
    private final void m4981c(CharSequence charSequence, int i10, int i11, int i12) {
    }

    /* JADX INFO: renamed from: d */
    private final void m4982d(CharSequence charSequence, int i10, int i11, int i12) {
    }
}
