package u3.p;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class c00008 {
    private final Context context;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c00008(Context context) {
        this.context = context;
    }

    private native Object p(String str, Context context, boolean z);

    private native Object r(Context context);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object getP(Context context) {
        try {
            return r(context);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object getPic(String str) {
        try {
            return p(str, this.context, false);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public Object getPic(String str, Context context) {
        try {
            return p(str, context, true);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
