package p225w0;

import com.example.navistart.R;

/* JADX INFO: renamed from: w0.s0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC3489s0 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f10206b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3495v0 f10207c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ int f10208d;

    public /* synthetic */ RunnableC3489s0(C3495v0 c3495v0, int i10, int i11) {
        this.f10206b = i11;
        this.f10207c = c3495v0;
        this.f10208d = i10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10206b) {
            case 0:
                C3495v0 c3495v0 = this.f10207c;
                c3495v0.f10239i.setText(c3495v0.getString(R.string.vosk_model_loading, Integer.valueOf(this.f10208d)));
                break;
            default:
                C3495v0 c3495v1 = this.f10207c;
                c3495v1.f10242l.setText(c3495v1.getString(R.string.voice_engine_loading, Integer.valueOf(this.f10208d)));
                break;
        }
    }
}
