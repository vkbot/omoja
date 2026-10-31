package b4;

import android.os.Handler$Callback;
import android.os.Message;
import j.d0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c implements Handler$Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f315a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(int i9) {
        this.f315a = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Handler$Callback
    public final boolean handleMessage(Message message) {
        switch (this.f315a) {
            case 0:
                int i9 = message.what;
                if (i9 == 0) {
                    ((j) message.obj).getClass();
                    throw null;
                }
                if (i9 != 1) {
                    return false;
                }
                ((j) message.obj).getClass();
                Object obj = null;
                obj.getClass();
                throw null;
            default:
                if (message.what != 1) {
                    return false;
                }
                ((d0) message.obj).recycle();
                return true;
        }
    }
}
