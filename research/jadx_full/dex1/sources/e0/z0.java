package e0;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemSelectedListener;
import com.example.navistart.MainActivity;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class z0 implements AdapterView$OnItemSelectedListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i1 f2012b;
    public final /* synthetic */ String c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ MainActivity e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public z0(MainActivity mainActivity, i1 i1Var, String str, boolean z8) {
        this.e = mainActivity;
        this.f2012b = i1Var;
        this.c = str;
        this.d = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.AdapterView$OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i9, long j9) {
        j1 j1Var = (j1) this.f2012b.getItem(i9);
        if (j1Var == null) {
            return;
        }
        String str = j1Var.f1869a;
        h0.b.o().saveString(this.c, str);
        if (this.d) {
            this.e.w = str;
        }
    }

    @Override // android.widget.AdapterView$OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
    }
}
