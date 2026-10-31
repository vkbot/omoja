package p248y3;

import android.graphics.Paint;
import android.graphics.Path;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.ViewCompat;

/* JADX INFO: renamed from: y3.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3644a {

    /* JADX INFO: renamed from: i */
    public static final int[] f10825i = new int[3];

    /* JADX INFO: renamed from: j */
    public static final float[] f10826j = {0.0f, 0.5f, 1.0f};

    /* JADX INFO: renamed from: k */
    public static final int[] f10827k = new int[4];

    /* JADX INFO: renamed from: l */
    public static final float[] f10828l = {0.0f, 0.0f, 0.5f, 1.0f};

    /* JADX INFO: renamed from: a */
    public final Paint f10829a;

    /* JADX INFO: renamed from: b */
    public final Paint f10830b;

    /* JADX INFO: renamed from: c */
    public final Paint f10831c;

    /* JADX INFO: renamed from: d */
    public int f10832d;

    /* JADX INFO: renamed from: e */
    public int f10833e;

    /* JADX INFO: renamed from: f */
    public int f10834f;

    /* JADX INFO: renamed from: g */
    public final Path f10835g = new Path();

    /* JADX INFO: renamed from: h */
    public final Paint f10836h;

    public C3644a() {
        Paint paint = new Paint();
        this.f10836h = paint;
        this.f10829a = new Paint();
        m5832a(ViewCompat.MEASURED_STATE_MASK);
        paint.setColor(0);
        Paint paint2 = new Paint(4);
        this.f10830b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        this.f10831c = new Paint(paint2);
    }

    /* JADX INFO: renamed from: a */
    public final void m5832a(int i10) {
        this.f10832d = ColorUtils.setAlphaComponent(i10, 68);
        this.f10833e = ColorUtils.setAlphaComponent(i10, 20);
        this.f10834f = ColorUtils.setAlphaComponent(i10, 0);
        this.f10829a.setColor(this.f10832d);
    }
}
