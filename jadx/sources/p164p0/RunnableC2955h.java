package p164p0;

import android.util.Log;
import android.view.WindowManager;
import android.widget.TextView;
import com.google.protobuf.AbstractC1178q;
import kotlin.jvm.internal.ByteCompanionObject;
import p000a.AbstractC0000a;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: p0.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2955h implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8216b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2957j f8217c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ int f8218d;

    public /* synthetic */ RunnableC2955h(C2957j c2957j, int i10, int i11) {
        this.f8216b = i11;
        this.f8217c = c2957j;
        this.f8218d = i10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TextView textView;
        int i10 = this.f8216b;
        int i11 = this.f8218d;
        C2957j c2957j = this.f8217c;
        switch (i10) {
            case 0:
                String str = C2957j.f8225l;
                if (C2957j.f8226m == c2957j) {
                    TextView textView2 = c2957j.f8235i;
                    if (textView2 != null && textView2.isAttachedToWindow()) {
                        Log.i(str, AbstractC1387m.m2421h(new byte[]{40, 115, 45, -4, 71, 53, -112, 15, 38, 113, 60, -17, 72, 60, -116, 75, 103, 100, 60, -6, 78, 57, -103, 91, 122}, new byte[]{71, 5, 72, -114, 43, 84, -23, 47}) + i11);
                    } else {
                        StringBuilder sb = new StringBuilder();
                        AbstractC1178q.m2086t(new byte[]{-106, -75, 26, 56, 59, 113, 45, -34, -105, -84, 11, 106, 54, 100, 32, -97, -102, -85, 26, 46, 119, 113, 32, -118, -100, -82, 15, 62, 106}, new byte[]{-7, -61, ByteCompanionObject.MAX_VALUE, 74, 87, 16, 84, -2}, sb, i11);
                        sb.append(AbstractC1387m.m2421h(new byte[]{86, -45, 79, 95}, new byte[]{118, -92, 34, 98, -101, -30, 106, -127}));
                        sb.append(c2957j.f8233g != null);
                        Log.w(str, sb.toString());
                        WindowManager windowManager = c2957j.f8233g;
                        if (windowManager != null && (textView = c2957j.f8235i) != null) {
                            AbstractC0000a.m21v(windowManager, textView);
                        }
                        c2957j.f8235i = null;
                        c2957j.f8234h = null;
                        c2957j.f8233g = null;
                        c2957j.f8228b.getClass();
                        if (C2952e.m4727e() && i11 < 6) {
                            c2957j.m4745h(i11 + 1);
                        } else {
                            c2957j.m4741d(AbstractC1387m.m2421h(new byte[]{87, 103, -30, -124, -23, 21, -107, -113, 86, 126, -13, -42, -28, 0, -104, -50, 91, 121, -30, -110}, new byte[]{56, 17, -121, -10, -123, 116, -20, -81}));
                        }
                    }
                    break;
                }
                break;
            default:
                c2957j.m4743f(i11 + 1);
                break;
        }
    }
}
