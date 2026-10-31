package p166p3;

import android.content.Context;
import com.example.navistart.R;
import p134m3.AbstractC2381a;
import p228w3.AbstractC3517b;

/* JADX INFO: renamed from: p3.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2968a {

    /* JADX INFO: renamed from: f */
    public static final int f8252f = (int) Math.round(5.1000000000000005d);

    /* JADX INFO: renamed from: a */
    public final boolean f8253a;

    /* JADX INFO: renamed from: b */
    public final int f8254b;

    /* JADX INFO: renamed from: c */
    public final int f8255c;

    /* JADX INFO: renamed from: d */
    public final int f8256d;

    /* JADX INFO: renamed from: e */
    public final float f8257e;

    public C2968a(Context context) {
        boolean zM5585b = AbstractC3517b.m5585b(context, R.attr.elevationOverlayEnabled, false);
        int iM3747b = AbstractC2381a.m3747b(context, R.attr.elevationOverlayColor, 0);
        int iM3747b2 = AbstractC2381a.m3747b(context, R.attr.elevationOverlayAccentColor, 0);
        int iM3747b3 = AbstractC2381a.m3747b(context, R.attr.colorSurface, 0);
        float f8 = context.getResources().getDisplayMetrics().density;
        this.f8253a = zM5585b;
        this.f8254b = iM3747b;
        this.f8255c = iM3747b2;
        this.f8256d = iM3747b3;
        this.f8257e = f8;
    }
}
