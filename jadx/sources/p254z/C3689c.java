package p254z;

import android.content.Context;
import android.graphics.Point;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import java.util.ArrayList;
import p025c0.AbstractC0938g;

/* JADX INFO: renamed from: z.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3689c {

    /* JADX INFO: renamed from: d */
    public static Integer f10923d;

    /* JADX INFO: renamed from: a */
    public final View f10924a;

    /* JADX INFO: renamed from: b */
    public final ArrayList f10925b = new ArrayList();

    /* JADX INFO: renamed from: c */
    public ViewTreeObserverOnPreDrawListenerC3688b f10926c;

    public C3689c(View view) {
        this.f10924a = view;
    }

    /* JADX INFO: renamed from: a */
    public final int m5912a(int i10, int i11, int i12) {
        int i13 = i11 - i12;
        if (i13 > 0) {
            return i13;
        }
        int i14 = i10 - i12;
        if (i14 > 0) {
            return i14;
        }
        View view = this.f10924a;
        if (view.isLayoutRequested() || i11 != -2) {
            return 0;
        }
        if (Log.isLoggable("CustomViewTarget", 4)) {
            Log.i("CustomViewTarget", "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use .override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
        }
        Context context = view.getContext();
        if (f10923d == null) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            AbstractC0938g.m1072c(windowManager, "Argument must not be null");
            Display defaultDisplay = windowManager.getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getSize(point);
            f10923d = Integer.valueOf(Math.max(point.x, point.y));
        }
        return f10923d.intValue();
    }
}
