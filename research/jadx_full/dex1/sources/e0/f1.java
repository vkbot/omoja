package e0;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemSelectedListener;
import com.example.navistart.LocServ;
import com.example.navistart.MainActivity;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f1 implements AdapterView$OnItemSelectedListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String[] f1834b;
    public final /* synthetic */ String c;
    public final /* synthetic */ androidx.core.view.inputmethod.a d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f1(String[] strArr, String str, androidx.core.view.inputmethod.a aVar) {
        this.f1834b = strArr;
        this.c = str;
        this.d = aVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.AdapterView$OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i9, long j9) {
        LocServ locServ;
        i7.m mVar;
        String str = this.f1834b[i9];
        h0.b.o().saveString(this.c, str);
        View view2 = this.d.f162a;
        String str2 = MainActivity.f688e1;
        n0.a aVar = n0.a.e;
        view2.setVisibility(aVar.name().equals(str) ? 0 : 8);
        if (str.equals(aVar.name())) {
            LocServ.f680n = Boolean.TRUE;
        } else {
            LocServ.f680n = Boolean.FALSE;
            androidx.fragment.app.h hVar = LocServ.f674h;
            if (hVar != null && (mVar = (locServ = (LocServ) hVar.c).d) != null) {
                mVar.e.e();
                locServ.d = null;
                LocServ.f674h = null;
            }
        }
        try {
            h0.b.a();
            h0.b.i().d();
        } catch (Exception unused) {
            w.c(-1, m.h(new byte[]{-100, -16, -116, -126, -86, 1, 16, 46, -89, -8, -111, -107}, new byte[]{-47, -111, -27, -20, -21, 98, 100, 71})).schedule(new v0(0), 1000L, TimeUnit.MILLISECONDS);
        }
    }

    @Override // android.widget.AdapterView$OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
    }
}
