package p051e4;

import com.google.android.material.internal.CheckableImageButton;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: e4.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1472e extends AbstractC1484q {

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ int f3571e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1472e(C1483p c1483p, int i10) {
        super(c1483p);
        this.f3571e = i10;
    }

    @Override // p051e4.AbstractC1484q
    /* JADX INFO: renamed from: q */
    public void mo2528q() {
        switch (this.f3571e) {
            case 0:
                C1483p c1483p = this.f3624b;
                c1483p.f3615p = null;
                CheckableImageButton checkableImageButton = c1483p.f3607h;
                checkableImageButton.setOnLongClickListener(null);
                AbstractC3656k.m5873s(checkableImageButton, null);
                break;
        }
    }
}
