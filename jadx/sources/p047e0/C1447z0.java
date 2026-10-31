package p047e0;

import android.view.View;
import android.widget.AdapterView;
import com.example.navistart.MainActivity;
import p078h0.C1652b;

/* JADX INFO: renamed from: e0.z0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1447z0 implements AdapterView.OnItemSelectedListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C1369i1 f3508b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ String f3509c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ boolean f3510d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ MainActivity f3511e;

    public C1447z0(MainActivity mainActivity, C1369i1 c1369i1, String str, boolean z9) {
        this.f3511e = mainActivity;
        this.f3508b = c1369i1;
        this.f3509c = str;
        this.f3510d = z9;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i10, long j10) {
        C1374j1 c1374j1 = (C1374j1) this.f3508b.getItem(i10);
        if (c1374j1 == null) {
            return;
        }
        String str = c1374j1.f3279a;
        C1652b.m2745o().saveString(this.f3509c, str);
        if (this.f3510d) {
            this.f3511e.f1395w = str;
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
    }
}
