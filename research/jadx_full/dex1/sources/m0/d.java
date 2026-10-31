package m0;

import java.io.Serializable;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3371b = 0;
    public final /* synthetic */ int c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ l0.b e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Serializable f3372f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(i iVar, int i9, boolean z8, String str) {
        this.e = iVar;
        this.c = i9;
        this.d = z8;
        this.f3372f = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3371b) {
            case 0:
                i iVar = (i) this.e;
                int i9 = this.c;
                boolean z8 = this.d;
                String str = (String) this.f3372f;
                if (i9 == iVar.f3462j && iVar.isAdded()) {
                    iVar.f3461i = false;
                    if (z8) {
                        iVar.f3460h = false;
                    }
                    iVar.f3457b.setEnabled(true);
                    iVar.u();
                    iVar.d.setText(str);
                    break;
                }
                break;
            default:
                n3 n3Var = (n3) this.e;
                int i10 = this.c;
                ArrayList arrayList = (ArrayList) this.f3372f;
                boolean z9 = this.d;
                ArrayList arrayList2 = n3Var.f3535b;
                if (i10 == n3Var.f3537g && n3Var.f3538h != null) {
                    arrayList2.clear();
                    arrayList2.addAll(arrayList);
                    n3Var.t = false;
                    n3Var.f3549u = z9;
                    n3Var.u();
                    break;
                }
                break;
        }
    }

    public /* synthetic */ d(n3 n3Var, int i9, ArrayList arrayList, boolean z8) {
        this.e = n3Var;
        this.c = i9;
        this.f3372f = arrayList;
        this.d = z8;
    }
}
