package c5;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.os.Build$VERSION;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import android.view.WindowManager;
import android.view.WindowManager$LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.example.navistart.MyA11yService;
import com.example.navistart.cores.ColorText;
import com.google.android.material.tabs.TabLayout;
import e0.m;
import h.k;
import j.d0;
import j1.w;
import java.io.File;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import l9.l;
import p7.u;
import s3.q;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class e implements b8.c, h.f, e5.b, f2.b, w, k.b, m2.a, k, z0.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f498b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(p2.e eVar) {
        this.f498b = 10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static u o(int i9) {
        return new u(Math.min(1048576, Math.max(4096, i9)), new l());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static RectF p(TabLayout tabLayout, View view) {
        if (view == null) {
            return new RectF();
        }
        if (tabLayout.G || !(view instanceof d4.l)) {
            return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        d4.l lVar = (d4.l) view;
        int contentWidth = lVar.getContentWidth();
        int contentHeight = lVar.getContentHeight();
        int iA = (int) q.a(24, lVar.getContext());
        if (contentWidth < iA) {
            contentWidth = iA;
        }
        int right = (lVar.getRight() + lVar.getLeft()) / 2;
        int bottom = (lVar.getBottom() + lVar.getTop()) / 2;
        int i9 = contentWidth / 2;
        return new RectF(right - i9, bottom - (contentHeight / 2), i9 + right, (right / 2) + bottom);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k.b
    public Bitmap b(int i9, int i10, Bitmap$Config bitmap$Config) {
        return Bitmap.createBitmap(i9, i10, bitmap$Config);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k.b
    public void c(Bitmap bitmap) {
        bitmap.recycle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // m2.a
    public long d() {
        return System.currentTimeMillis();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.k
    public int e(h.h hVar) {
        return 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z0.a
    public WindowManager f(View view, WindowManager$LayoutParams windowManager$LayoutParams) {
        return g(view, 0, windowManager$LayoutParams);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:11:0x005f  */
    @Override // z0.a
    public WindowManager g(View view, int i9, ViewGroup$LayoutParams viewGroup$LayoutParams) {
        WindowManager windowManagerX;
        if (MyA11yService.f() && h0.b.o().loadBoolean(m.h(new byte[]{-116, 98, 76, -116, -1, -55, -60, 34, -108, 125, 77, -103, -59, -50, -50, 14, -113, 110, 69}, new byte[]{-5, 11, 40, -21, -102, -67, -73, 125}), false)) {
            MyA11yService myA11yService = MyA11yService.c;
            if (myA11yService != null) {
                Display[] displays = ((DisplayManager) myA11yService.getSystemService(m.h(new byte[]{-74, -22, 91, 4, 63, 3, 55}, new byte[]{-46, -125, 40, 116, 83, 98, 78, -94}))).getDisplays();
                if (i9 < displays.length) {
                    windowManagerX = (WindowManager) myA11yService.createDisplayContext(displays[i9]).getSystemService(m.h(new byte[]{12, 105, -16, -77, 3, -6}, new byte[]{123, 0, -98, -41, 108, -115, 117, 115}));
                } else {
                    windowManagerX = null;
                }
            } else {
                windowManagerX = null;
            }
        } else {
            windowManagerX = o4.b.x(i9);
        }
        if (windowManagerX != null) {
            try {
                windowManagerX.addView(view, viewGroup$LayoutParams);
                return windowManagerX;
            } catch (Exception e) {
                h0.b.w(m.h(new byte[]{-69, -66, 73, 7, 105, 92, -88, 2}, new byte[]{-2, -52, 59, 104, 27, 124, -123, 34}) + e.getMessage(), ColorText.RED);
            }
        }
        return windowManagerX;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t8.a
    public Object get() {
        Set setUnmodifiableSet;
        switch (this.f498b) {
            case 10:
                y7.e eVar = y7.b.f6141a;
                if (eVar != null) {
                    return eVar;
                }
                n0.b.n("scheduler == null");
                return null;
            default:
                e eVar2 = new e(15);
                HashMap map = new HashMap();
                Set set = Collections.EMPTY_SET;
                if (set != null) {
                    map.put(a2.b.f6b, new j2.b(30000L, 86400000L, set));
                    if (set != null) {
                        map.put(a2.b.d, new j2.b(1000L, 86400000L, set));
                        if (set == null || (setUnmodifiableSet = Collections.unmodifiableSet(new HashSet(Arrays.asList(j2.c.c)))) == null) {
                            n0.b.n("Null flags");
                        } else {
                            map.put(a2.b.c, new j2.b(86400000L, 86400000L, setUnmodifiableSet));
                            if (map.keySet().size() >= a2.b.values().length) {
                                new HashMap();
                                return new j2.a(eVar2, map);
                            }
                            j1.i.l("Not all priorities have been configured");
                        }
                    } else {
                        n0.b.n("Null flags");
                    }
                } else {
                    n0.b.n("Null flags");
                }
                return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.b
    public boolean h(Object obj, File file, h.h hVar) throws Throwable {
        try {
            c0.b.d(((u.f) ((u.b) ((d0) obj).get()).f5423b.f4939b).f5436a.d.asReadOnlyBuffer(), file);
            return true;
        } catch (IOException e) {
            if (!Log.isLoggable("GifEncoder", 5)) {
                return false;
            }
            Log.w("GifEncoder", "Failed to encode GIF drawable data", e);
            return false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.w
    public void i(Context context) {
        int i9 = this.f498b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k.b
    public Bitmap j(int i9, int i10, Bitmap$Config bitmap$Config) {
        return Bitmap.createBitmap(i9, i10, bitmap$Config);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.w
    public void k(AccessibilityEvent accessibilityEvent, AccessibilityNodeInfo accessibilityNodeInfo) {
        int i9 = this.f498b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z0.a
    public int m() {
        if (MyA11yService.f() && h0.b.o().loadBoolean(m.h(new byte[]{91, 80, -122, 103, -79, -83, -105, -24, 67, 79, -121, 114, -117, -86, -99, -60, 88, 92, -113}, new byte[]{44, 57, -30, 0, -44, -39, -28, -73}), false)) {
            return 2032;
        }
        return Build$VERSION.SDK_INT >= 26 ? 2038 : 2002;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        switch (this.f498b) {
            case 5:
                return "IdentityFunction";
            default:
                return super.toString();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void u(TabLayout tabLayout, View view, View view2, float f8, Drawable drawable) {
        RectF rectFP = p(tabLayout, view);
        RectF rectFP2 = p(tabLayout, view2);
        drawable.setBounds(b3.a.c(f8, (int) rectFP.left, (int) rectFP2.left), drawable.getBounds().top, b3.a.c(f8, (int) rectFP.right, (int) rectFP2.right), drawable.getBounds().bottom);
    }

    public /* synthetic */ e(int i9) {
        this.f498b = i9;
    }

    @Override // k.b
    public void n() {
    }

    private final void s(Context context) {
    }

    private final void t(Context context) {
    }

    @Override // b8.c
    public Object apply(Object obj) {
        return obj;
    }

    @Override // k.b
    public void l(int i9) {
    }

    private final void q(AccessibilityEvent accessibilityEvent, AccessibilityNodeInfo accessibilityNodeInfo) {
    }

    private final void r(AccessibilityEvent accessibilityEvent, AccessibilityNodeInfo accessibilityNodeInfo) {
    }

    @Override // h.f
    public void a(byte[] bArr, Object obj, MessageDigest messageDigest) {
    }
}
