package p246y1;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import p099j1.C1929i;
import p226w1.AbstractC3512i;

/* JADX INFO: renamed from: y1.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3639c extends AbstractC3638b {

    /* JADX INFO: renamed from: g */
    public final /* synthetic */ int f10813g;

    /* JADX INFO: renamed from: h */
    public float f10814h;

    /* JADX INFO: renamed from: i */
    public Path f10815i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3639c(Context context, int i10) {
        super(context);
        this.f10813g = i10;
        switch (i10) {
            case 2:
                super(context);
                this.f10815i = new Path();
                m5828h(12.0f * this.f10809b);
                break;
            case 3:
                super(context);
                this.f10815i = new Path();
                m5828h(12.0f * this.f10809b);
                break;
            case 4:
                super(context);
                break;
            default:
                this.f10815i = new Path();
                m5828h(12.0f * this.f10809b);
                break;
        }
    }

    @Override // p246y1.AbstractC3638b
    /* JADX INFO: renamed from: a */
    public final void mo5821a(Canvas canvas) {
        switch (this.f10813g) {
            case 0:
                canvas.drawPath(this.f10815i, this.f10808a);
                break;
            case 1:
                canvas.drawPath(this.f10815i, this.f10808a);
                break;
            case 2:
                canvas.drawPath(this.f10815i, this.f10808a);
                break;
            case 3:
                canvas.drawPath(this.f10815i, this.f10808a);
                break;
            default:
                canvas.drawPath(this.f10815i, this.f10808a);
                break;
        }
    }

    @Override // p246y1.AbstractC3638b
    /* JADX INFO: renamed from: b */
    public final float mo5822b() {
        switch (this.f10813g) {
            case 0:
                return this.f10814h;
            case 1:
                return m5824d() * this.f10814h;
            case 2:
                return this.f10814h;
            case 3:
                return this.f10814h;
            default:
                return this.f10814h + this.f10811d;
        }
    }

    @Override // p246y1.AbstractC3638b
    /* JADX INFO: renamed from: e */
    public float mo5825e() {
        switch (this.f10813g) {
            case 3:
                float fM5826f = m5826f() / 5.0f;
                AbstractC3512i abstractC3512i = this.f10810c;
                abstractC3512i.getClass();
                return fM5826f + abstractC3512i.getPadding();
            case 4:
                return this.f10814h;
            default:
                return super.mo5825e();
        }
    }

    @Override // p246y1.AbstractC3638b
    /* JADX INFO: renamed from: i */
    public final void mo5829i() {
        switch (this.f10813g) {
            case 0:
                Path path = this.f10815i;
                path.reset();
                float fM5823c = m5823c();
                AbstractC3512i abstractC3512i = this.f10810c;
                abstractC3512i.getClass();
                path.moveTo(fM5823c, abstractC3512i.getPadding());
                float fM5826f = m5826f() * 0.5f;
                AbstractC3512i abstractC3512i2 = this.f10810c;
                abstractC3512i2.getClass();
                this.f10814h = fM5826f + abstractC3512i2.getPadding();
                path.lineTo(m5823c() - this.f10811d, this.f10814h);
                path.lineTo(m5823c(), this.f10814h + this.f10811d);
                path.lineTo(m5823c() + this.f10811d, this.f10814h);
                this.f10808a.setColor(this.f10812e);
                break;
            case 1:
                Path path2 = this.f10815i;
                path2.reset();
                float fM5823c2 = m5823c();
                AbstractC3512i abstractC3512i3 = this.f10810c;
                abstractC3512i3.getClass();
                path2.moveTo(fM5823c2, abstractC3512i3.getPadding());
                path2.lineTo(m5823c(), m5824d() * this.f10814h);
                Paint.Style style = Paint.Style.STROKE;
                Paint paint = this.f10808a;
                paint.setStyle(style);
                paint.setStrokeWidth(this.f10811d);
                paint.setColor(this.f10812e);
                break;
            case 2:
                Path path3 = this.f10815i;
                path3.reset();
                float fM5823c3 = m5823c();
                AbstractC3512i abstractC3512i4 = this.f10810c;
                abstractC3512i4.getClass();
                path3.moveTo(fM5823c3, abstractC3512i4.getPadding());
                float fM5826f2 = (m5826f() * 2.0f) / 3.0f;
                AbstractC3512i abstractC3512i5 = this.f10810c;
                abstractC3512i5.getClass();
                this.f10814h = fM5826f2 + abstractC3512i5.getPadding();
                path3.lineTo(m5823c() - this.f10811d, this.f10814h);
                path3.lineTo(m5823c() + this.f10811d, this.f10814h);
                float fM5823c4 = m5823c();
                float f8 = this.f10811d;
                float f10 = fM5823c4 - f8;
                float f11 = this.f10814h - f8;
                float fM5823c5 = m5823c();
                float f12 = this.f10811d;
                path3.addArc(new RectF(f10, f11, fM5823c5 + f12, this.f10814h + f12), 0.0f, 180.0f);
                this.f10808a.setColor(this.f10812e);
                break;
            case 3:
                Path path4 = this.f10815i;
                path4.reset();
                float fM5823c6 = m5823c();
                float fM5826f3 = m5826f() / 5.0f;
                AbstractC3512i abstractC3512i6 = this.f10810c;
                abstractC3512i6.getClass();
                path4.moveTo(fM5823c6, fM5826f3 + abstractC3512i6.getPadding());
                float fM5826f4 = (m5826f() * 3.0f) / 5.0f;
                AbstractC3512i abstractC3512i7 = this.f10810c;
                abstractC3512i7.getClass();
                this.f10814h = fM5826f4 + abstractC3512i7.getPadding();
                path4.lineTo(m5823c() - this.f10811d, this.f10814h);
                path4.lineTo(m5823c() + this.f10811d, this.f10814h);
                float fM5823c7 = m5823c();
                float f13 = this.f10811d;
                float f14 = fM5823c7 - f13;
                float f15 = this.f10814h - f13;
                float fM5823c8 = m5823c();
                float f16 = this.f10811d;
                path4.addArc(new RectF(f14, f15, fM5823c8 + f16, this.f10814h + f16), 0.0f, 180.0f);
                this.f10808a.setColor(this.f10812e);
                break;
            default:
                this.f10815i = new Path();
                AbstractC3512i abstractC3512i8 = this.f10810c;
                abstractC3512i8.getClass();
                float padding = abstractC3512i8.getPadding();
                AbstractC3512i abstractC3512i9 = this.f10810c;
                abstractC3512i9.getClass();
                this.f10814h = (5.0f * this.f10809b) + abstractC3512i9.getSpeedometerWidth() + padding;
                this.f10815i.moveTo(m5823c(), this.f10814h);
                Path path5 = this.f10815i;
                float fM5823c9 = m5823c();
                float f17 = this.f10811d;
                path5.lineTo(fM5823c9 - f17, this.f10814h + f17);
                Path path6 = this.f10815i;
                float fM5823c10 = m5823c();
                float f18 = this.f10811d;
                path6.lineTo(fM5823c10 + f18, this.f10814h + f18);
                this.f10815i.moveTo(0.0f, 0.0f);
                this.f10808a.setShader(new LinearGradient(m5823c(), this.f10814h, m5823c(), this.f10814h + this.f10811d, this.f10812e, Color.argb(0, Color.red(this.f10812e), Color.green(this.f10812e), Color.blue(this.f10812e)), Shader.TileMode.CLAMP));
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3639c(Context context, float f8) {
        super(context);
        this.f10813g = 1;
        this.f10814h = f8;
        this.f10815i = new Path();
        if (0.0f <= f8 && f8 <= 1.0f) {
            m5828h(8.0f * this.f10809b);
        } else {
            C1929i.m3029k("Length must be between [0,1].");
            throw null;
        }
    }
}
