package p246y1;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import p226w1.AbstractC3512i;

/* JADX INFO: renamed from: y1.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3642f extends AbstractC3638b {

    /* JADX INFO: renamed from: g */
    public final Path f10820g;

    public C3642f(Context context) {
        super(context);
        this.f10820g = new Path();
        m5828h(16.0f * this.f10809b);
    }

    @Override // p246y1.AbstractC3638b
    /* JADX INFO: renamed from: a */
    public final void mo5821a(Canvas canvas) {
        canvas.drawPath(this.f10820g, this.f10808a);
    }

    @Override // p246y1.AbstractC3638b
    /* JADX INFO: renamed from: e */
    public final float mo5825e() {
        float fM5826f = m5826f() * 0.18f;
        AbstractC3512i abstractC3512i = this.f10810c;
        abstractC3512i.getClass();
        return fM5826f + abstractC3512i.getPadding();
    }

    @Override // p246y1.AbstractC3638b
    /* JADX INFO: renamed from: i */
    public final void mo5829i() {
        Path path = this.f10820g;
        path.reset();
        path.moveTo(m5823c(), m5824d());
        float fM5823c = m5823c() - this.f10811d;
        float fM5826f = m5826f() * 0.34f;
        AbstractC3512i abstractC3512i = this.f10810c;
        abstractC3512i.getClass();
        float padding = fM5826f + abstractC3512i.getPadding();
        float fM5823c2 = m5823c();
        float fM5826f2 = m5826f() * 0.18f;
        AbstractC3512i abstractC3512i2 = this.f10810c;
        abstractC3512i2.getClass();
        path.quadTo(fM5823c, padding, fM5823c2, fM5826f2 + abstractC3512i2.getPadding());
        float fM5823c3 = m5823c() + this.f10811d;
        float fM5826f3 = m5826f() * 0.34f;
        AbstractC3512i abstractC3512i3 = this.f10810c;
        abstractC3512i3.getClass();
        path.quadTo(fM5823c3, fM5826f3 + abstractC3512i3.getPadding(), m5823c(), m5824d());
        this.f10808a.setColor(this.f10812e);
    }
}
