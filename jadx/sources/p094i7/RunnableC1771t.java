package p094i7;

import android.widget.SeekBar;
import android.widget.TextView;
import p132m0.C2374y1;

/* JADX INFO: renamed from: i7.t */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1771t implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4643b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ SeekBar f4644c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ int f4645d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ TextView f4646e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ int f4647f;

    public /* synthetic */ RunnableC1771t(SeekBar seekBar, int i10, TextView textView, int i11, int i12) {
        this.f4643b = i12;
        this.f4644c = seekBar;
        this.f4645d = i10;
        this.f4646e = textView;
        this.f4647f = i11;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10 = this.f4643b;
        int i11 = this.f4647f;
        TextView textView = this.f4646e;
        int i12 = this.f4645d;
        SeekBar seekBar = this.f4644c;
        switch (i10) {
            case 0:
                seekBar.setProgress(i12);
                textView.setText(String.valueOf(i11));
                break;
            default:
                String str = C2374y1.f6422e;
                seekBar.setProgress(i12);
                textView.setText(String.valueOf(i11));
                break;
        }
    }
}
