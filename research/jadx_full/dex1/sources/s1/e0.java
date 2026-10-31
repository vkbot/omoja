package s1;

import android.app.AlertDialog;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import java.util.ArrayList;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class e0 implements AdapterView$OnItemClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ q0 f5072b;
    public final /* synthetic */ i0 c;
    public final /* synthetic */ AlertDialog d;
    public final /* synthetic */ boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ j0.e f5073f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ ArrayList f5074g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e0(q0 q0Var, i0 i0Var, AlertDialog alertDialog, boolean z8, j0.e eVar, ArrayList arrayList) {
        this.f5072b = q0Var;
        this.c = i0Var;
        this.d = alertDialog;
        this.e = z8;
        this.f5073f = eVar;
        this.f5074g = arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.AdapterView$OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i9, long j9) {
        q0 q0Var = this.f5072b;
        ArrayList arrayList = q0Var.f5182q;
        j0.e eVar = (j0.e) this.c.c.get(i9);
        this.d.dismiss();
        if (!this.e) {
            float[] fArrN = q0Var.n(0.1f, 0.14f);
            j0 j0Var = new j0(m0.e, fArrN[0], fArrN[1], 0.1f, 0.14f, j0.f.g(eVar));
            arrayList.add(j0Var);
            q0Var.f5185v = j0Var.f5099a;
            q0Var.y();
            q0Var.A();
            return;
        }
        j0.e eVar2 = this.f5073f;
        if (eVar2 == null) {
            q0Var.M(this.f5074g, true, eVar);
            return;
        }
        float[] fArrN2 = q0Var.n(0.1f, 0.14f);
        m0 m0Var = m0.f5139f;
        float f8 = fArrN2[0];
        float f9 = fArrN2[1];
        String strG = j0.f.g(eVar2);
        String strG2 = j0.f.g(eVar);
        String string = UUID.randomUUID().toString();
        arrayList.add(new j0(string, m0Var, f8, f9, 0.1f, 0.14f, strG, strG2, false));
        q0Var.f5185v = string;
        q0Var.y();
        q0Var.A();
    }
}
