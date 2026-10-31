package p216v0;

import android.os.Handler;
import android.widget.TextView;

/* JADX INFO: renamed from: v0.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC3316c implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int[] f9707b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f9708c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ int f9709d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ TextView f9710e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ Handler f9711f;

    /* JADX INFO: renamed from: g */
    public final /* synthetic */ int f9712g;

    public RunnableC3316c(int[] iArr, int i10, int i11, TextView textView, Handler handler, int i12) {
        this.f9707b = iArr;
        this.f9708c = i10;
        this.f9709d = i11;
        this.f9710e = textView;
        this.f9711f = handler;
        this.f9712g = i12;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int[] iArr = this.f9707b;
        int i10 = iArr[0];
        int i11 = this.f9708c;
        int i12 = i10 + i11;
        TextView textView = this.f9710e;
        int i13 = this.f9709d;
        if ((i11 > 0 && i12 > i13) || (i11 < 0 && i12 < i13)) {
            iArr[0] = i13;
            textView.setText(String.valueOf(i13));
        } else {
            iArr[0] = i12;
            textView.setText(String.valueOf(i12));
            this.f9711f.postDelayed(this, this.f9712g);
        }
    }
}
