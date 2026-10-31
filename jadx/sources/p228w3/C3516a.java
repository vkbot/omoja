package p228w3;

import android.graphics.Typeface;
import p141n.C2455p;
import p192s3.C3189c;

/* JADX INFO: renamed from: w3.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3516a extends AbstractC3522g {

    /* JADX INFO: renamed from: a */
    public final Typeface f10432a;

    /* JADX INFO: renamed from: b */
    public final C2455p f10433b;

    /* JADX INFO: renamed from: c */
    public boolean f10434c;

    public C3516a(C2455p c2455p, Typeface typeface) {
        this.f10432a = typeface;
        this.f10433b = c2455p;
    }

    @Override // p228w3.AbstractC3522g
    /* JADX INFO: renamed from: a */
    public final void mo3502a(int i10) {
        if (this.f10434c) {
            return;
        }
        C3189c c3189c = (C3189c) this.f10433b.f6648c;
        if (c3189c.m5124l(this.f10432a)) {
            c3189c.m5122j(false);
        }
    }

    @Override // p228w3.AbstractC3522g
    /* JADX INFO: renamed from: b */
    public final void mo3503b(Typeface typeface, boolean z9) {
        if (this.f10434c) {
            return;
        }
        C3189c c3189c = (C3189c) this.f10433b.f6648c;
        if (c3189c.m5124l(typeface)) {
            c3189c.m5122j(false);
        }
    }
}
