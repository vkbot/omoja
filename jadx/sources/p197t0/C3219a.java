package p197t0;

import android.widget.CompoundButton;
import p225w0.C3481o0;

/* JADX INFO: renamed from: t0.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C3219a implements CompoundButton.OnCheckedChangeListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f9418a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C3481o0 f9419b;

    public /* synthetic */ C3219a(C3481o0 c3481o0, int i10) {
        this.f9418a = i10;
        this.f9419b = c3481o0;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
        switch (this.f9418a) {
            case 0:
                this.f9419b.f10180c = z9;
                break;
            default:
                this.f9419b.f10180c = z9;
                break;
        }
    }
}
