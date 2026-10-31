package p132m0;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.SystemClock;
import android.view.View;
import com.example.navistart.DialogUni.Fragmenti.ExlantixTelemetryFragment;
import com.google.protobuf.AbstractC1178q;
import java.util.Iterator;
import java.util.Locale;
import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: m0.h0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2298h0 extends View {

    /* JADX INFO: renamed from: b */
    public final Paint f6104b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ ExlantixTelemetryFragment f6105c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2298h0(ExlantixTelemetryFragment exlantixTelemetryFragment, Context context) {
        super(context);
        this.f6105c = exlantixTelemetryFragment;
        this.f6104b = new Paint(1);
        setContentDescription(AbstractC1387m.m2421h(new byte[]{-97, 91, -77, 96, -69, -16, 4, 32, -98, 67, -78, 89, -69, -3, -12, 78, -13, 19, -36, 48, -29, -94, 105, 78, -15, 18, -29, 48, -24, -94, 108, -66, -97, 114, -78, 81, -69, -16, 4, 46, -98, 67, -78, 84, -70, -54}, new byte[]{79, -61, 98, -31, 106, 114, -44, -98}));
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0259  */
    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        float f8;
        ExlantixTelemetryFragment exlantixTelemetryFragment;
        super.onDraw(canvas);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        ExlantixTelemetryFragment exlantixTelemetryFragment2 = this.f6105c;
        long j10 = ((long) exlantixTelemetryFragment2.minutes) * 60000;
        float fM1409dp = exlantixTelemetryFragment2.m1409dp(44.0f);
        float width = getWidth() - exlantixTelemetryFragment2.m1409dp(8.0f);
        float fM1409dp2 = exlantixTelemetryFragment2.m1409dp(12.0f);
        float height = getHeight() - exlantixTelemetryFragment2.m1409dp(26.0f);
        if (width <= fM1409dp) {
            return;
        }
        Iterator it = exlantixTelemetryFragment2.history.iterator();
        double dMax = 10.0d;
        boolean z9 = false;
        while (it.hasNext()) {
            C2293g0 c2293g0 = (C2293g0) it.next();
            long j11 = c2293g0.f6088a;
            Iterator it2 = it;
            float f10 = fM1409dp;
            double d = c2293g0.f6089b;
            if (jElapsedRealtime - j11 <= j10 && Double.isFinite(d)) {
                dMax = Math.max(dMax, Math.ceil(Math.abs(d) / 10.0d) * 10.0d);
                z9 = true;
            }
            fM1409dp = f10;
            it = it2;
        }
        float f11 = fM1409dp;
        float fM1409dp3 = exlantixTelemetryFragment2.m1409dp(11.0f);
        Paint paint = this.f6104b;
        paint.setTextSize(fM1409dp3);
        paint.setStrokeWidth(exlantixTelemetryFragment2.m1409dp(1.0f));
        int i10 = 0;
        while (i10 < 5) {
            float f12 = (((height - fM1409dp2) * i10) / 4.0f) + fM1409dp2;
            paint.setColor(exlantixTelemetryFragment2.muted);
            paint.setAlpha(i10 == 2 ? 130 : 35);
            int i11 = i10;
            float f13 = f11;
            canvas.drawLine(f13, f12, width, f12, paint);
            paint.setAlpha(255);
            canvas.drawText(String.format(Locale.getDefault(), AbstractC1387m.m2421h(new byte[]{27, 51, -18, 111}, new byte[]{62, 29, -34, 9, -17, 12, 18, -50}), Double.valueOf((1.0d - (((double) i11) / 2.0d)) * dMax)), 0.0f, f12 + exlantixTelemetryFragment2.m1409dp(4.0f), paint);
            i10 = i11 + 1;
            f11 = f13;
            width = width;
            jElapsedRealtime = jElapsedRealtime;
        }
        float f14 = width;
        long j12 = jElapsedRealtime;
        float f15 = f11;
        StringBuilder sb = new StringBuilder();
        sb.append(AbstractC1387m.m2421h(new byte[]{-64, -44, 99}, new byte[]{34, 92, -15, 109, -69, 26, -69, 120}));
        sb.append(exlantixTelemetryFragment2.minutes);
        canvas.drawText(AbstractC1178q.m2075i(new byte[]{75, 9, 65, 126, 70, 3, -46}, new byte[]{107, -39, -3, -82, -2, -45, 111, 123}, sb), f15, getHeight() - exlantixTelemetryFragment2.m1409dp(4.0f), paint);
        paint.setTextAlign(Paint.Align.RIGHT);
        canvas.drawText(AbstractC1387m.m2421h(new byte[]{29, -92, -1, -70, -91, -58, 46, 56, 29, -75, -2, -114}, new byte[]{-51, 5, 47, 15, 117, ByteCompanionObject.MAX_VALUE, -1, -65}), f14, getHeight() - exlantixTelemetryFragment2.m1409dp(4.0f), paint);
        paint.setTextAlign(Paint.Align.LEFT);
        if (!z9) {
            canvas.drawText(AbstractC1387m.m2421h(new byte[]{18, -88, 62, 62, 18, -85, -23, 75, 118, -27, 94, 91, 126, -7, 116, 74, 73, -28, 107}, new byte[]{-62, 53, -18, -117, -61, 41, -55, -101}), f15 + exlantixTelemetryFragment2.m1409dp(12.0f), fM1409dp2 + exlantixTelemetryFragment2.m1409dp(30.0f), paint);
            return;
        }
        float f16 = 2.0f;
        paint.setStrokeWidth(exlantixTelemetryFragment2.m1409dp(2.0f));
        while (true) {
            C2293g0 c2293g1 = null;
            for (C2293g0 c2293g2 : exlantixTelemetryFragment2.history) {
                float f17 = f16;
                long j13 = c2293g2.f6088a;
                ExlantixTelemetryFragment exlantixTelemetryFragment3 = exlantixTelemetryFragment2;
                double d10 = c2293g2.f6089b;
                if (j12 - j13 > j10 || !Double.isFinite(d10)) {
                    f15 = f15;
                    f16 = f17;
                    exlantixTelemetryFragment2 = exlantixTelemetryFragment3;
                    f14 = f14;
                } else {
                    float f18 = f14 - f15;
                    float f19 = j10;
                    float f20 = f14 - (((j12 - j13) * f18) / f19);
                    double d11 = (fM1409dp2 + height) / f17;
                    double d12 = height - fM1409dp2;
                    float f21 = (float) (d11 - (((d10 / dMax) * d12) / 2.0d));
                    paint.setColor(d10 < 0.0d ? exlantixTelemetryFragment3.green : exlantixTelemetryFragment3.blue);
                    if (c2293g1 != null) {
                        long j14 = c2293g1.f6088a;
                        if (j13 - j14 <= 2500) {
                            canvas.drawLine(f14 - ((f18 * (j12 - j14)) / f19), (float) (d11 - (((c2293g1.f6089b / dMax) * d12) / 2.0d)), f20, f21, paint);
                            f8 = f17;
                            exlantixTelemetryFragment = exlantixTelemetryFragment3;
                        } else {
                            f8 = f17;
                            exlantixTelemetryFragment = exlantixTelemetryFragment3;
                            canvas.drawCircle(f20, f21, exlantixTelemetryFragment.m1409dp(f8), paint);
                        }
                    } else {
                        f8 = f17;
                        exlantixTelemetryFragment = exlantixTelemetryFragment3;
                        canvas.drawCircle(f20, f21, exlantixTelemetryFragment.m1409dp(f8), paint);
                    }
                    float f22 = f8;
                    f15 = f15;
                    f16 = f22;
                    exlantixTelemetryFragment2 = exlantixTelemetryFragment;
                    f14 = f14;
                    c2293g1 = c2293g2;
                }
            }
            return;
        }
    }
}
