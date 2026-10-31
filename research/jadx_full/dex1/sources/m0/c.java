package m0;

import android.content.Context;
import java.util.function.BiConsumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c implements BiConsumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f3343a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3344b;
    public final /* synthetic */ Context c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(i iVar, int i9, Context context) {
        this.f3343a = iVar;
        this.f3344b = i9;
        this.c = context;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        i iVar = this.f3343a;
        iVar.f3459g.post(new f(iVar, this.f3344b, this.c, (Integer) obj, (Integer) obj2));
    }
}
