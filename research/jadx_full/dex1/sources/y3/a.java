package y3;

import android.graphics.Paint;
import android.graphics.Paint$Style;
import android.graphics.Path;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.ViewCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int[] f6123i = new int[3];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final float[] f6124j = {0.0f, 0.5f, 1.0f};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f6125k = new int[4];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final float[] f6126l = {0.0f, 0.0f, 0.5f, 1.0f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Paint f6127a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Paint f6128b;
    public final Paint c;
    public int d;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6129f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Path f6130g = new Path();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Paint f6131h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a() {
        Paint paint = new Paint();
        this.f6131h = paint;
        this.f6127a = new Paint();
        a(ViewCompat.MEASURED_STATE_MASK);
        paint.setColor(0);
        Paint paint2 = new Paint(4);
        this.f6128b = paint2;
        paint2.setStyle(Paint$Style.FILL);
        this.c = new Paint(paint2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(int i9) {
        this.d = ColorUtils.setAlphaComponent(i9, 68);
        this.e = ColorUtils.setAlphaComponent(i9, 20);
        this.f6129f = ColorUtils.setAlphaComponent(i9, 0);
        this.f6127a.setColor(this.d);
    }
}
