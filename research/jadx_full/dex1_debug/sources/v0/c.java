package v0;

import android.os.Handler;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int[] f5500b;
    public final /* synthetic */ int c;
    public final /* synthetic */ int d;
    public final /* synthetic */ TextView e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Handler f5501f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f5502g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(int[] iArr, int i9, int i10, TextView textView, Handler handler, int i11) {
        this.f5500b = iArr;
        this.c = i9;
        this.d = i10;
        this.e = textView;
        this.f5501f = handler;
        this.f5502g = i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        int[] iArr = this.f5500b;
        int i9 = iArr[0];
        int i10 = this.c;
        int i11 = i9 + i10;
        TextView textView = this.e;
        int i12 = this.d;
        if ((i10 > 0 && i11 > i12) || (i10 < 0 && i11 < i12)) {
            iArr[0] = i12;
            textView.setText(String.valueOf(i12));
        } else {
            iArr[0] = i11;
            textView.setText(String.valueOf(i11));
            this.f5501f.postDelayed(this, this.f5502g);
        }
    }
}
