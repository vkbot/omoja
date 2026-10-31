package m0;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint$Align;
import android.os.SystemClock;
import android.view.View;
import com.example.navistart.DialogUni.Fragmenti.ExlantixTelemetryFragment;
import java.util.Iterator;
import java.util.Locale;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h0 extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Paint f3441b;
    public final /* synthetic */ ExlantixTelemetryFragment c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h0(ExlantixTelemetryFragment exlantixTelemetryFragment, Context context) {
        super(context);
        this.c = exlantixTelemetryFragment;
        this.f3441b = new Paint(1);
        setContentDescription(e0.m.h(new byte[]{-97, 91, -77, 96, -69, -16, 4, 32, -98, 67, -78, 89, -69, -3, -12, 78, -13, 19, -36, 48, -29, -94, 105, 78, -15, 18, -29, 48, -24, -94, 108, -66, -97, 114, -78, 81, -69, -16, 4, 46, -98, 67, -78, 84, -70, -54}, new byte[]{79, -61, 98, -31, 106, 114, -44, -98}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:44:0x0259  */
    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        float f8;
        ExlantixTelemetryFragment exlantixTelemetryFragment;
        super.onDraw(canvas);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        ExlantixTelemetryFragment exlantixTelemetryFragment2 = this.c;
        long jE = ((long) ExlantixTelemetryFragment.E(exlantixTelemetryFragment2)) * 60000;
        float fJ = ExlantixTelemetryFragment.J(exlantixTelemetryFragment2, 44.0f);
        float width = getWidth() - ExlantixTelemetryFragment.J(exlantixTelemetryFragment2, 8.0f);
        float fJ2 = ExlantixTelemetryFragment.J(exlantixTelemetryFragment2, 12.0f);
        float height = getHeight() - ExlantixTelemetryFragment.J(exlantixTelemetryFragment2, 26.0f);
        if (width <= fJ) {
            return;
        }
        Iterator it = ExlantixTelemetryFragment.B(exlantixTelemetryFragment2).iterator();
        double dMax = 10.0d;
        boolean z8 = false;
        while (it.hasNext()) {
            g0 g0Var = (g0) it.next();
            long j9 = g0Var.f3430a;
            Iterator it2 = it;
            float f9 = fJ;
            double d = g0Var.f3431b;
            if (jElapsedRealtime - j9 <= jE && Double.isFinite(d)) {
                dMax = Math.max(dMax, Math.ceil(Math.abs(d) / 10.0d) * 10.0d);
                z8 = true;
            }
            fJ = f9;
            it = it2;
        }
        float f10 = fJ;
        float fJ3 = ExlantixTelemetryFragment.J(exlantixTelemetryFragment2, 11.0f);
        Paint paint = this.f3441b;
        paint.setTextSize(fJ3);
        paint.setStrokeWidth(ExlantixTelemetryFragment.J(exlantixTelemetryFragment2, 1.0f));
        int i9 = 0;
        while (i9 < 5) {
            float f11 = (((height - fJ2) * i9) / 4.0f) + fJ2;
            paint.setColor(ExlantixTelemetryFragment.F(exlantixTelemetryFragment2));
            paint.setAlpha(i9 == 2 ? 130 : 35);
            int i10 = i9;
            float f12 = f10;
            canvas.drawLine(f12, f11, width, f11, paint);
            paint.setAlpha(255);
            canvas.drawText(String.format(Locale.getDefault(), e0.m.h(new byte[]{27, 51, -18, 111}, new byte[]{62, 29, -34, 9, -17, 12, 18, -50}), Double.valueOf((1.0d - (((double) i10) / 2.0d)) * dMax)), 0.0f, f11 + ExlantixTelemetryFragment.J(exlantixTelemetryFragment2, 4.0f), paint);
            i9 = i10 + 1;
            f10 = f12;
            width = width;
            jElapsedRealtime = jElapsedRealtime;
        }
        float f13 = width;
        long j10 = jElapsedRealtime;
        float f14 = f10;
        StringBuilder sb = new StringBuilder();
        sb.append(e0.m.h(new byte[]{-64, -44, 99}, new byte[]{34, 92, -15, 109, -69, 26, -69, 120}));
        sb.append(ExlantixTelemetryFragment.E(exlantixTelemetryFragment2));
        canvas.drawText(com.google.protobuf.q.i(new byte[]{75, 9, 65, 126, 70, 3, -46}, new byte[]{107, -39, -3, -82, -2, -45, 111, 123}, sb), f14, getHeight() - ExlantixTelemetryFragment.J(exlantixTelemetryFragment2, 4.0f), paint);
        paint.setTextAlign(Paint$Align.RIGHT);
        canvas.drawText(e0.m.h(new byte[]{29, -92, -1, -70, -91, -58, 46, 56, 29, -75, -2, -114}, new byte[]{-51, 5, 47, 15, 117, ByteCompanionObject.MAX_VALUE, -1, -65}), f13, getHeight() - ExlantixTelemetryFragment.J(exlantixTelemetryFragment2, 4.0f), paint);
        paint.setTextAlign(Paint$Align.LEFT);
        if (!z8) {
            canvas.drawText(e0.m.h(new byte[]{18, -88, 62, 62, 18, -85, -23, 75, 118, -27, 94, 91, 126, -7, 116, 74, 73, -28, 107}, new byte[]{-62, 53, -18, -117, -61, 41, -55, -101}), f14 + ExlantixTelemetryFragment.J(exlantixTelemetryFragment2, 12.0f), fJ2 + ExlantixTelemetryFragment.J(exlantixTelemetryFragment2, 30.0f), paint);
            return;
        }
        float f15 = 2.0f;
        paint.setStrokeWidth(ExlantixTelemetryFragment.J(exlantixTelemetryFragment2, 2.0f));
        while (true) {
            g0 g0Var2 = null;
            for (g0 g0Var3 : ExlantixTelemetryFragment.B(exlantixTelemetryFragment2)) {
                float f16 = f15;
                long j11 = g0Var3.f3430a;
                ExlantixTelemetryFragment exlantixTelemetryFragment3 = exlantixTelemetryFragment2;
                double d9 = g0Var3.f3431b;
                if (j10 - j11 > jE || !Double.isFinite(d9)) {
                    f14 = f14;
                    f15 = f16;
                    exlantixTelemetryFragment2 = exlantixTelemetryFragment3;
                    f13 = f13;
                } else {
                    float f17 = f13 - f14;
                    float f18 = jE;
                    float f19 = f13 - (((j10 - j11) * f17) / f18);
                    double d10 = (fJ2 + height) / f16;
                    double d11 = height - fJ2;
                    float f20 = (float) (d10 - (((d9 / dMax) * d11) / 2.0d));
                    paint.setColor(d9 < 0.0d ? ExlantixTelemetryFragment.A(exlantixTelemetryFragment3) : ExlantixTelemetryFragment.w(exlantixTelemetryFragment3));
                    if (g0Var2 != null) {
                        long j12 = g0Var2.f3430a;
                        if (j11 - j12 <= 2500) {
                            canvas.drawLine(f13 - ((f17 * (j10 - j12)) / f18), (float) (d10 - (((g0Var2.f3431b / dMax) * d11) / 2.0d)), f19, f20, paint);
                            f8 = f16;
                            exlantixTelemetryFragment = exlantixTelemetryFragment3;
                        } else {
                            f8 = f16;
                            exlantixTelemetryFragment = exlantixTelemetryFragment3;
                            canvas.drawCircle(f19, f20, ExlantixTelemetryFragment.J(exlantixTelemetryFragment, f8), paint);
                        }
                    } else {
                        f8 = f16;
                        exlantixTelemetryFragment = exlantixTelemetryFragment3;
                        canvas.drawCircle(f19, f20, ExlantixTelemetryFragment.J(exlantixTelemetryFragment, f8), paint);
                    }
                    float f21 = f8;
                    f14 = f14;
                    f15 = f21;
                    exlantixTelemetryFragment2 = exlantixTelemetryFragment;
                    f13 = f13;
                    g0Var2 = g0Var3;
                }
            }
            return;
        }
    }
}
