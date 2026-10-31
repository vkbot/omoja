package w0;

import com.example.navistart.cores.BTProxy$Listener;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i0 implements BTProxy$Listener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5653a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5654b;
    public final /* synthetic */ l0 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i0(l0 l0Var, int i9, int i10) {
        this.c = l0Var;
        this.f5653a = i9;
        this.f5654b = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.BTProxy$Listener
    public final void onContactsChanged(List list, int i9, int i10) {
        if (i10 >= 0) {
            if (i10 <= 0 || i9 >= i10 - 1) {
                this.c.g0(new m0.d1(this, this.f5653a, this.f5654b, list == null ? new ArrayList() : new ArrayList(list)));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.BTProxy$Listener
    public final void onError(String str, Throwable th) {
        this.c.g0(new p0.f(this, this.f5653a, this.f5654b, 2));
    }
}
