package p124l3;

import android.graphics.Typeface;
import com.google.android.material.chip.Chip;
import p192s3.C3196j;
import p192s3.InterfaceC3195i;
import p228w3.AbstractC3522g;

/* JADX INFO: renamed from: l3.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2200a extends AbstractC3522g {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f5729a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f5730b;

    public /* synthetic */ C2200a(int i10, Object obj) {
        this.f5729a = i10;
        this.f5730b = obj;
    }

    @Override // p228w3.AbstractC3522g
    /* JADX INFO: renamed from: a */
    public final void mo3502a(int i10) {
        switch (this.f5729a) {
            case 0:
                break;
            default:
                C3196j c3196j = (C3196j) this.f5730b;
                c3196j.f9366e = true;
                InterfaceC3195i interfaceC3195i = (InterfaceC3195i) c3196j.f9367f.get();
                if (interfaceC3195i != null) {
                    interfaceC3195i.mo2262a();
                }
                break;
        }
    }

    @Override // p228w3.AbstractC3522g
    /* JADX INFO: renamed from: b */
    public final void mo3503b(Typeface typeface, boolean z9) {
        switch (this.f5729a) {
            case 0:
                Chip chip = (Chip) this.f5730b;
                C2204e c2204e = chip.f2232b;
                chip.setText(c2204e.f5754N0 ? c2204e.f5757P : chip.getText());
                chip.requestLayout();
                chip.invalidate();
                break;
            default:
                if (!z9) {
                    C3196j c3196j = (C3196j) this.f5730b;
                    c3196j.f9366e = true;
                    InterfaceC3195i interfaceC3195i = (InterfaceC3195i) c3196j.f9367f.get();
                    if (interfaceC3195i != null) {
                        interfaceC3195i.mo2262a();
                    }
                    break;
                }
                break;
        }
    }

    /* JADX INFO: renamed from: c */
    private final void m3501c(int i10) {
    }
}
