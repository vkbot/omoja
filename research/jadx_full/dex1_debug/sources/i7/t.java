package i7;

import android.widget.SeekBar;
import android.widget.TextView;
import m0.y1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class t implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2714b;
    public final /* synthetic */ SeekBar c;
    public final /* synthetic */ int d;
    public final /* synthetic */ TextView e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f2715f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ t(SeekBar seekBar, int i9, TextView textView, int i10, int i11) {
        this.f2714b = i11;
        this.c = seekBar;
        this.d = i9;
        this.e = textView;
        this.f2715f = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        int i9 = this.f2714b;
        int i10 = this.f2715f;
        TextView textView = this.e;
        int i11 = this.d;
        SeekBar seekBar = this.c;
        switch (i9) {
            case 0:
                seekBar.setProgress(i11);
                textView.setText(String.valueOf(i10));
                break;
            default:
                String str = y1.e;
                seekBar.setProgress(i11);
                textView.setText(String.valueOf(i10));
                break;
        }
    }
}
