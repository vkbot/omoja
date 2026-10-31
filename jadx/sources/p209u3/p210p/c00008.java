package p209u3.p210p;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class c00008 {
    private final Context context;

    public c00008(Context context) {
        this.context = context;
    }

    /* JADX INFO: renamed from: p */
    private native Object m5219p(String str, Context context, boolean z9);

    /* JADX INFO: renamed from: r */
    private native Object m5220r(Context context);

    public Object getP(Context context) {
        try {
            return m5220r(context);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public Object getPic(String str) {
        try {
            return m5219p(str, this.context, false);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public Object getPic(String str, Context context) {
        try {
            return m5219p(str, context, true);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
