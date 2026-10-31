package t0;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemSelectedListener;
import j0.e;
import w0.o0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements AdapterView$OnItemSelectedListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5329b;
    public final /* synthetic */ o0 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(o0 o0Var, int i9) {
        this.f5329b = i9;
        this.c = o0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.AdapterView$OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i9, long j9) {
        switch (this.f5329b) {
            case 0:
                this.c.f5751b = (e) adapterView.getItemAtPosition(i9);
                break;
            default:
                this.c.f5751b = (e) adapterView.getItemAtPosition(i9);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.AdapterView$OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
        int i9 = this.f5329b;
    }

    private final void a(AdapterView adapterView) {
    }

    private final void b(AdapterView adapterView) {
    }
}
