package m0;

import android.widget.CompoundButton;
import android.widget.CompoundButton$OnCheckedChangeListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class z1 implements CompoundButton$OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3646a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ z1(int i9) {
        this.f3646a = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CompoundButton$OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z8) {
        switch (this.f3646a) {
            case 0:
                String str = c2.f3348i;
                h0.b.o().saveBoolean(e0.m.h(new byte[]{-31, -111, 20, 75, 38, 90, 63, -3, -64, -123, 48, 77, 54, 113, 3, -7, -58, -107, 24, 64, 37, 107, 15, -37, -30, -78}, new byte[]{-78, -31, 113, 46, 66, 24, 80, -100}), z8);
                break;
            default:
                h0.b.o().saveBoolean(e0.m.h(new byte[]{-70, 45, 62, -102, 112, -102, -119, 90, -70, 45, 62, -124, 104, -102, -118, 119, -99, 9, 45, -121, 124, -68}, new byte[]{-55, 89, 95, -24, 4, -59, -64, 52}), z8);
                break;
        }
    }
}
