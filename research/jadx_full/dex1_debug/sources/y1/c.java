package y1;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Paint$Style;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader$TileMode;
import w1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c extends b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f6113g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f6114h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Path f6115i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(Context context, int i9) {
        super(context);
        this.f6113g = i9;
        switch (i9) {
            case 2:
                super(context);
                this.f6115i = new Path();
                h(12.0f * this.f6112b);
                break;
            case 3:
                super(context);
                this.f6115i = new Path();
                h(12.0f * this.f6112b);
                break;
            case 4:
                super(context);
                break;
            default:
                this.f6115i = new Path();
                h(12.0f * this.f6112b);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y1.b
    public final void a(Canvas canvas) {
        switch (this.f6113g) {
            case 0:
                canvas.drawPath(this.f6115i, this.f6111a);
                break;
            case 1:
                canvas.drawPath(this.f6115i, this.f6111a);
                break;
            case 2:
                canvas.drawPath(this.f6115i, this.f6111a);
                break;
            case 3:
                canvas.drawPath(this.f6115i, this.f6111a);
                break;
            default:
                canvas.drawPath(this.f6115i, this.f6111a);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y1.b
    public final float b() {
        switch (this.f6113g) {
            case 0:
                return this.f6114h;
            case 1:
                return d() * this.f6114h;
            case 2:
                return this.f6114h;
            case 3:
                return this.f6114h;
            default:
                return this.f6114h + this.d;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y1.b
    public float e() {
        switch (this.f6113g) {
            case 3:
                float f8 = f() / 5.0f;
                i iVar = this.c;
                iVar.getClass();
                return f8 + iVar.getPadding();
            case 4:
                return this.f6114h;
            default:
                return super.e();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y1.b
    public final void i() {
        switch (this.f6113g) {
            case 0:
                Path path = this.f6115i;
                path.reset();
                float fC = c();
                i iVar = this.c;
                iVar.getClass();
                path.moveTo(fC, iVar.getPadding());
                float f8 = f() * 0.5f;
                i iVar2 = this.c;
                iVar2.getClass();
                this.f6114h = f8 + iVar2.getPadding();
                path.lineTo(c() - this.d, this.f6114h);
                path.lineTo(c(), this.f6114h + this.d);
                path.lineTo(c() + this.d, this.f6114h);
                this.f6111a.setColor(this.e);
                break;
            case 1:
                Path path2 = this.f6115i;
                path2.reset();
                float fC2 = c();
                i iVar3 = this.c;
                iVar3.getClass();
                path2.moveTo(fC2, iVar3.getPadding());
                path2.lineTo(c(), d() * this.f6114h);
                Paint$Style paint$Style = Paint$Style.STROKE;
                Paint paint = this.f6111a;
                paint.setStyle(paint$Style);
                paint.setStrokeWidth(this.d);
                paint.setColor(this.e);
                break;
            case 2:
                Path path3 = this.f6115i;
                path3.reset();
                float fC3 = c();
                i iVar4 = this.c;
                iVar4.getClass();
                path3.moveTo(fC3, iVar4.getPadding());
                float f9 = (f() * 2.0f) / 3.0f;
                i iVar5 = this.c;
                iVar5.getClass();
                this.f6114h = f9 + iVar5.getPadding();
                path3.lineTo(c() - this.d, this.f6114h);
                path3.lineTo(c() + this.d, this.f6114h);
                float fC4 = c();
                float f10 = this.d;
                float f11 = fC4 - f10;
                float f12 = this.f6114h - f10;
                float fC5 = c();
                float f13 = this.d;
                path3.addArc(new RectF(f11, f12, fC5 + f13, this.f6114h + f13), 0.0f, 180.0f);
                this.f6111a.setColor(this.e);
                break;
            case 3:
                Path path4 = this.f6115i;
                path4.reset();
                float fC6 = c();
                float f14 = f() / 5.0f;
                i iVar6 = this.c;
                iVar6.getClass();
                path4.moveTo(fC6, f14 + iVar6.getPadding());
                float f15 = (f() * 3.0f) / 5.0f;
                i iVar7 = this.c;
                iVar7.getClass();
                this.f6114h = f15 + iVar7.getPadding();
                path4.lineTo(c() - this.d, this.f6114h);
                path4.lineTo(c() + this.d, this.f6114h);
                float fC7 = c();
                float f16 = this.d;
                float f17 = fC7 - f16;
                float f18 = this.f6114h - f16;
                float fC8 = c();
                float f19 = this.d;
                path4.addArc(new RectF(f17, f18, fC8 + f19, this.f6114h + f19), 0.0f, 180.0f);
                this.f6111a.setColor(this.e);
                break;
            default:
                this.f6115i = new Path();
                i iVar8 = this.c;
                iVar8.getClass();
                float padding = iVar8.getPadding();
                i iVar9 = this.c;
                iVar9.getClass();
                this.f6114h = (5.0f * this.f6112b) + iVar9.getSpeedometerWidth() + padding;
                this.f6115i.moveTo(c(), this.f6114h);
                Path path5 = this.f6115i;
                float fC9 = c();
                float f20 = this.d;
                path5.lineTo(fC9 - f20, this.f6114h + f20);
                Path path6 = this.f6115i;
                float fC10 = c();
                float f21 = this.d;
                path6.lineTo(fC10 + f21, this.f6114h + f21);
                this.f6115i.moveTo(0.0f, 0.0f);
                this.f6111a.setShader(new LinearGradient(c(), this.f6114h, c(), this.f6114h + this.d, this.e, Color.argb(0, Color.red(this.e), Color.green(this.e), Color.blue(this.e)), Shader$TileMode.CLAMP));
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(Context context, float f8) {
        super(context);
        this.f6113g = 1;
        this.f6114h = f8;
        this.f6115i = new Path();
        if (0.0f <= f8 && f8 <= 1.0f) {
            h(8.0f * this.f6112b);
        } else {
            j1.i.k("Length must be between [0,1].");
            throw null;
        }
    }
}
