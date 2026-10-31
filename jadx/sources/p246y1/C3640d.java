package p246y1;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import p226w1.AbstractC3512i;

/* JADX INFO: renamed from: y1.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3640d extends AbstractC3638b {

    /* JADX INFO: renamed from: g */
    public final Path f10816g;

    /* JADX INFO: renamed from: h */
    public final Path f10817h;

    /* JADX INFO: renamed from: i */
    public final Paint f10818i;

    /* JADX INFO: renamed from: j */
    public float f10819j;

    public C3640d(Context context) {
        super(context);
        this.f10816g = new Path();
        this.f10817h = new Path();
        Paint paint = new Paint(1);
        this.f10818i = paint;
        m5828h(12.0f * this.f10809b);
        paint.setStyle(Paint.Style.STROKE);
    }

    @Override // p246y1.AbstractC3638b
    /* JADX INFO: renamed from: a */
    public final void mo5821a(Canvas canvas) {
        canvas.drawPath(this.f10816g, this.f10808a);
        canvas.drawPath(this.f10817h, this.f10818i);
    }

    @Override // p246y1.AbstractC3638b
    /* JADX INFO: renamed from: b */
    public final float mo5822b() {
        return this.f10819j;
    }

    @Override // p246y1.AbstractC3638b
    /* JADX INFO: renamed from: i */
    public final void mo5829i() {
        Path path = this.f10816g;
        path.reset();
        Path path2 = this.f10817h;
        path2.reset();
        float fM5823c = m5823c();
        AbstractC3512i abstractC3512i = this.f10810c;
        abstractC3512i.getClass();
        path.moveTo(fM5823c, abstractC3512i.getPadding());
        float fM5826f = (m5826f() * 0.5f) + ((float) (Math.sin(Math.toRadians(260.0d)) * ((double) this.f10811d)));
        AbstractC3512i abstractC3512i2 = this.f10810c;
        abstractC3512i2.getClass();
        this.f10819j = fM5826f + abstractC3512i2.getPadding();
        float fM5826f2 = (m5826f() * 0.5f) + ((float) (Math.cos(Math.toRadians(260.0d)) * ((double) this.f10811d)));
        AbstractC3512i abstractC3512i3 = this.f10810c;
        abstractC3512i3.getClass();
        path.lineTo(fM5826f2 + abstractC3512i3.getPadding(), this.f10819j);
        path.arcTo(new RectF(m5823c() - this.f10811d, m5824d() - this.f10811d, m5823c() + this.f10811d, m5824d() + this.f10811d), 260.0f, 20.0f);
        float f8 = this.f10811d * 0.25f;
        path2.addCircle(m5823c(), m5824d(), (this.f10811d - (0.5f * f8)) + 0.6f, Path.Direction.CW);
        this.f10808a.setColor(this.f10812e);
        int i10 = this.f10812e;
        Paint paint = this.f10818i;
        paint.setColor(i10);
        paint.setStrokeWidth(f8);
    }
}
