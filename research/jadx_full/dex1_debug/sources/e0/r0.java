package e0;

import android.view.View;
import android.widget.RadioGroup;
import android.widget.RadioGroup$OnCheckedChangeListener;
import com.example.navistart.MainActivity;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class r0 implements RadioGroup$OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int[] f1939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f1940b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ r0(int[] iArr, View view) {
        this.f1939a = iArr;
        this.f1940b = view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.RadioGroup$OnCheckedChangeListener
    public final void onCheckedChanged(RadioGroup radioGroup, int i9) {
        String str = MainActivity.f688e1;
        if (n0.c.B.name().equals(h0.b.o().loadString(m.h(new byte[]{53, -13, -78, -17, 11, 44, 46, -120, 26, -41}, new byte[]{118, -78, -32, -65, 121, 67, 72, -31}), ""))) {
            int i10 = 0;
            while (i10 < 5) {
                if (this.f1939a[i10] == i9) {
                    h0.b.o().saveInt(m.h(new byte[]{36, 34, 15, -89, -117, 60, 79, 68, 30, 62, 17, -81, -109, 45, 121, 81, 46, 62, 6, -103, -106, 45, 74, 89, 34, 46, 10, -87, -117}, new byte[]{65, 90, 99, -58, -27, 72, 38, 60}), i10);
                    this.f1940b.setVisibility(i10 == 4 ? 0 : 8);
                    x.a();
                    return;
                }
                i10++;
            }
        }
    }
}
