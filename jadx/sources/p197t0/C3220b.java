package p197t0;

import android.view.View;
import android.widget.AdapterView;
import p098j0.C1919e;
import p225w0.C3481o0;

/* JADX INFO: renamed from: t0.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3220b implements AdapterView.OnItemSelectedListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f9420b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3481o0 f9421c;

    public /* synthetic */ C3220b(C3481o0 c3481o0, int i10) {
        this.f9420b = i10;
        this.f9421c = c3481o0;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i10, long j10) {
        switch (this.f9420b) {
            case 0:
                this.f9421c.f10179b = (C1919e) adapterView.getItemAtPosition(i10);
                break;
            default:
                this.f9421c.f10179b = (C1919e) adapterView.getItemAtPosition(i10);
                break;
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
        int i10 = this.f9420b;
    }

    /* JADX INFO: renamed from: a */
    private final void m5157a(AdapterView adapterView) {
    }

    /* JADX INFO: renamed from: b */
    private final void m5158b(AdapterView adapterView) {
    }
}
