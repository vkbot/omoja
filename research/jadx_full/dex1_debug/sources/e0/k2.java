package e0;

import android.widget.TextView;
import com.example.navistart.ProgressActivity;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class k2 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1877b;
    public final /* synthetic */ ProgressActivity c;
    public final /* synthetic */ int d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ k2(ProgressActivity progressActivity, int i9, int i10) {
        this.f1877b = i10;
        this.c = progressActivity;
        this.d = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        int i9 = this.f1877b;
        int i10 = this.d;
        ProgressActivity progressActivity = this.c;
        switch (i9) {
            case 0:
                String str = ProgressActivity.e;
                if (i10 == 1) {
                    y5.k.x(progressActivity, m.h(new byte[]{39, 77, 81, 41, -92, 34, 77, 114, 39, 83, 80, 22, -91, 18, 77, 120, 39, 94, -96, 120, -62, 112, 45, 18, 69, 62, 53, 121, -11, 113, 21, 18, 66, 62, Base64.padSymbol, 120, -59, ByteCompanionObject.MIN_VALUE, 76, 65, 38, 111, 80, 23, -91, 21, 76, 74, 39, 83, 80, 22, 84}, new byte[]{-9, -18, ByteCompanionObject.MIN_VALUE, -88, 117, -96, -99, -62}));
                } else {
                    y5.k.x(progressActivity, m.h(new byte[]{112, -120, 26, 45, 53, -68, -72, -41, 112, -84, 27, 21, -59, -43, -21, -73, 33, -57, 73, 117, 85, -44, -43, -74, 30, -58, 121, 117, 95, -44, -48, 72}, new byte[]{-96, 22, -53, -91, -27, 4, 104, 102}));
                }
                progressActivity.finish();
                break;
            default:
                progressActivity.c.setProgress(i10);
                TextView textView = progressActivity.d;
                StringBuilder sb = new StringBuilder();
                com.google.protobuf.q.t(new byte[]{-36, 28, -8, -24, 47, 103, 13, 62, -35, 3, -7, -35, 46, 88, 12, 12, 54, -93}, new byte[]{12, -125, 41, 104, -1, -39, -35, -115}, sb, i10);
                sb.append(m.h(new byte[]{25}, new byte[]{60, -18, 64, -62, 95, 26, -26, 54}));
                textView.setText(sb.toString());
                break;
        }
    }
}
