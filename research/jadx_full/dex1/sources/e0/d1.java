package e0;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemSelectedListener;
import com.example.navistart.MainActivity;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d1 implements AdapterView$OnItemSelectedListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1824b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d1(String[] strArr, String str) {
        this.f1824b = 2;
        this.c = strArr;
        this.d = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.AdapterView$OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i9, long j9) {
        switch (this.f1824b) {
            case 0:
                String str = ((String[]) this.c)[i9];
                h0.b.o().saveString(m.h(new byte[]{-86, 7, 45, 39, -37, 109, -117, -77, -123, 35}, new byte[]{-23, 70, ByteCompanionObject.MAX_VALUE, 119, -87, 2, -19, -38}), str);
                synchronized (h0.b.class) {
                    h0.b.x(false);
                }
                MainActivity mainActivity = (MainActivity) this.d;
                String str2 = MainActivity.f688e1;
                mainActivity.t(str);
                return;
            case 1:
                j0.e eVar = (j0.e) adapterView.getItemAtPosition(i9);
                j0.c cVar = (j0.c) this.d;
                String str3 = (String) this.c;
                cVar.getClass();
                j0.f.f(str3, eVar);
                return;
            case 2:
                String str4 = ((String[]) this.c)[i9];
                u0.a aVarO = h0.b.o();
                String str5 = (String) this.d;
                if (str4.equals(aVarO.loadString(str5, ""))) {
                    return;
                }
                h0.b.o().saveString(str5, str4);
                return;
            default:
                ((w0.o0) this.c).f5751b = (j0.e) adapterView.getItemAtPosition(i9);
                f5.j jVar = ((m0.q1) this.d).d;
                if (jVar != null) {
                    jVar.run();
                    return;
                }
                return;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.AdapterView$OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
        int i9 = this.f1824b;
    }

    public /* synthetic */ d1(int i9, Object obj, Object obj2) {
        this.f1824b = i9;
        this.d = obj;
        this.c = obj2;
    }

    private final void a(AdapterView adapterView) {
    }

    private final void b(AdapterView adapterView) {
    }

    private final void c(AdapterView adapterView) {
    }

    private final void d(AdapterView adapterView) {
    }
}
