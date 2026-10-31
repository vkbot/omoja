package p0;

import android.util.Log;
import android.view.WindowManager;
import android.widget.TextView;
import com.google.protobuf.q;
import e0.m;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class h implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4560b;
    public final /* synthetic */ j c;
    public final /* synthetic */ int d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ h(j jVar, int i9, int i10) {
        this.f4560b = i10;
        this.c = jVar;
        this.d = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        TextView textView;
        int i9 = this.f4560b;
        int i10 = this.d;
        j jVar = this.c;
        switch (i9) {
            case 0:
                String str = j.f4564l;
                if (j.f4565m == jVar) {
                    TextView textView2 = jVar.f4571i;
                    if (textView2 != null && textView2.isAttachedToWindow()) {
                        Log.i(str, m.h(new byte[]{40, 115, 45, -4, 71, 53, -112, 15, 38, 113, 60, -17, 72, 60, -116, 75, 103, 100, 60, -6, 78, 57, -103, 91, 122}, new byte[]{71, 5, 72, -114, 43, 84, -23, 47}) + i10);
                    } else {
                        StringBuilder sb = new StringBuilder();
                        q.t(new byte[]{-106, -75, 26, 56, 59, 113, 45, -34, -105, -84, 11, 106, 54, 100, 32, -97, -102, -85, 26, 46, 119, 113, 32, -118, -100, -82, 15, 62, 106}, new byte[]{-7, -61, ByteCompanionObject.MAX_VALUE, 74, 87, 16, 84, -2}, sb, i10);
                        sb.append(m.h(new byte[]{86, -45, 79, 95}, new byte[]{118, -92, 34, 98, -101, -30, 106, -127}));
                        sb.append(jVar.f4569g != null);
                        Log.w(str, sb.toString());
                        WindowManager windowManager = jVar.f4569g;
                        if (windowManager != null && (textView = jVar.f4571i) != null) {
                            a.a.v(windowManager, textView);
                        }
                        jVar.f4571i = null;
                        jVar.f4570h = null;
                        jVar.f4569g = null;
                        jVar.f4567b.getClass();
                        if (e.e() && i10 < 6) {
                            jVar.h(i10 + 1);
                        } else {
                            jVar.d(m.h(new byte[]{87, 103, -30, -124, -23, 21, -107, -113, 86, 126, -13, -42, -28, 0, -104, -50, 91, 121, -30, -110}, new byte[]{56, 17, -121, -10, -123, 116, -20, -81}));
                        }
                    }
                    break;
                }
                break;
            default:
                jVar.f(i10 + 1);
                break;
        }
    }
}
