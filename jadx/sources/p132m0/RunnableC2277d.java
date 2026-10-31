package p132m0;

import java.io.Serializable;
import java.util.ArrayList;
import p121l0.C2195b;

/* JADX INFO: renamed from: m0.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2277d implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5989b = 0;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f5990c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ boolean f5991d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ C2195b f5992e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ Serializable f5993f;

    public /* synthetic */ RunnableC2277d(C2302i c2302i, int i10, boolean z9, String str) {
        this.f5992e = c2302i;
        this.f5990c = i10;
        this.f5991d = z9;
        this.f5993f = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5989b) {
            case 0:
                C2302i c2302i = (C2302i) this.f5992e;
                int i10 = this.f5990c;
                boolean z9 = this.f5991d;
                String str = (String) this.f5993f;
                if (i10 == c2302i.f6136j && c2302i.isAdded()) {
                    c2302i.f6135i = false;
                    if (z9) {
                        c2302i.f6134h = false;
                    }
                    c2302i.f6128b.setEnabled(true);
                    c2302i.m3692u();
                    c2302i.f6130d.setText(str);
                    break;
                }
                break;
            default:
                C2331n3 c2331n3 = (C2331n3) this.f5992e;
                int i11 = this.f5990c;
                ArrayList arrayList = (ArrayList) this.f5993f;
                boolean z10 = this.f5991d;
                ArrayList arrayList2 = c2331n3.f6253b;
                if (i11 == c2331n3.f6258g && c2331n3.f6259h != null) {
                    arrayList2.clear();
                    arrayList2.addAll(arrayList);
                    c2331n3.f6271t = false;
                    c2331n3.f6272u = z10;
                    c2331n3.m3712u();
                    break;
                }
                break;
        }
    }

    public /* synthetic */ RunnableC2277d(C2331n3 c2331n3, int i10, ArrayList arrayList, boolean z9) {
        this.f5992e = c2331n3;
        this.f5990c = i10;
        this.f5993f = arrayList;
        this.f5991d = z9;
    }
}
