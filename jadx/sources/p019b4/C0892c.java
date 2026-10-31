package p019b4;

import android.os.Handler;
import android.os.Message;
import p097j.InterfaceC1889d0;

/* JADX INFO: renamed from: b4.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0892c implements Handler.Callback {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f677a;

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        switch (this.f677a) {
            case 0:
                int i10 = message.what;
                if (i10 == 0) {
                    ((AbstractC0899j) message.obj).getClass();
                    throw null;
                }
                if (i10 != 1) {
                    return false;
                }
                ((AbstractC0899j) message.obj).getClass();
                Object obj = null;
                obj.getClass();
                throw null;
            default:
                if (message.what != 1) {
                    return false;
                }
                ((InterfaceC1889d0) message.obj).recycle();
                return true;
        }
    }
}
