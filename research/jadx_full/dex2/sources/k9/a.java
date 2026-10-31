package k9;

import java.util.concurrent.ThreadFactory;
import okhttp3.internal.Util;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class a implements ThreadFactory {
    public final /* synthetic */ String b;
    public final /* synthetic */ boolean c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(String str, boolean z) {
        this.b = str;
        this.c = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return Util.b(this.b, this.c, runnable);
    }
}
