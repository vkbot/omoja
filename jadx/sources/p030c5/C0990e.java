package p030c5;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.example.navistart.MyA11yService;
import com.example.navistart.cores.ColorText;
import com.google.android.material.tabs.TabLayout;
import java.io.File;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import p003a2.EnumC0005b;
import p018b3.AbstractC0884a;
import p023b8.InterfaceC0929c;
import p025c0.AbstractC0933b;
import p041d4.C1278l;
import p047e0.AbstractC1387m;
import p052e5.InterfaceC1495b;
import p059f2.InterfaceC1534b;
import p077h.C1646h;
import p077h.InterfaceC1644f;
import p077h.InterfaceC1649k;
import p078h0.C1652b;
import p097j.InterfaceC1889d0;
import p099j1.C1929i;
import p099j1.InterfaceC1943w;
import p100j2.C1945a;
import p100j2.C1946b;
import p100j2.EnumC1947c;
import p108k.InterfaceC2014b;
import p130l9.C2242l;
import p133m2.InterfaceC2380a;
import p142n0.C2467b;
import p155o4.AbstractC2587b;
import p165p2.C2962e;
import p170p7.C2996u;
import p192s3.AbstractC3203q;
import p205u.C3270b;
import p205u.C3274f;
import p252y7.AbstractC3660b;
import p252y7.C3663e;
import p255z0.InterfaceC3692a;

/* JADX INFO: renamed from: c5.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C0990e implements InterfaceC0929c, InterfaceC1644f, InterfaceC1495b, InterfaceC1534b, InterfaceC1943w, InterfaceC2014b, InterfaceC2380a, InterfaceC1649k, InterfaceC3692a {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f947b;

    public C0990e(C2962e c2962e) {
        this.f947b = 10;
    }

    /* JADX INFO: renamed from: o */
    public static C2996u m1133o(int i10) {
        return new C2996u(Math.min(1048576, Math.max(4096, i10)), new C2242l());
    }

    /* JADX INFO: renamed from: p */
    public static RectF m1134p(TabLayout tabLayout, View view) {
        if (view == null) {
            return new RectF();
        }
        if (tabLayout.f2440G || !(view instanceof C1278l)) {
            return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        C1278l c1278l = (C1278l) view;
        int contentWidth = c1278l.getContentWidth();
        int contentHeight = c1278l.getContentHeight();
        int iM5138a = (int) AbstractC3203q.m5138a(24, c1278l.getContext());
        if (contentWidth < iM5138a) {
            contentWidth = iM5138a;
        }
        int right = (c1278l.getRight() + c1278l.getLeft()) / 2;
        int bottom = (c1278l.getBottom() + c1278l.getTop()) / 2;
        int i10 = contentWidth / 2;
        return new RectF(right - i10, bottom - (contentHeight / 2), i10 + right, (right / 2) + bottom);
    }

    @Override // p108k.InterfaceC2014b
    /* JADX INFO: renamed from: b */
    public Bitmap mo1140b(int i10, int i11, Bitmap.Config config) {
        return Bitmap.createBitmap(i10, i11, config);
    }

    @Override // p108k.InterfaceC2014b
    /* JADX INFO: renamed from: c */
    public void mo1141c(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override // p133m2.InterfaceC2380a
    /* JADX INFO: renamed from: d */
    public long mo1142d() {
        return System.currentTimeMillis();
    }

    @Override // p077h.InterfaceC1649k
    /* JADX INFO: renamed from: e */
    public int mo1143e(C1646h c1646h) {
        return 1;
    }

    @Override // p255z0.InterfaceC3692a
    /* JADX INFO: renamed from: f */
    public WindowManager mo1144f(View view, WindowManager.LayoutParams layoutParams) {
        return mo1145g(view, 0, layoutParams);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x005f  */
    @Override // p255z0.InterfaceC3692a
    /* JADX INFO: renamed from: g */
    public WindowManager mo1145g(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        WindowManager windowManagerM4057x;
        if (MyA11yService.m1479f() && C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-116, 98, 76, -116, -1, -55, -60, 34, -108, 125, 77, -103, -59, -50, -50, 14, -113, 110, 69}, new byte[]{-5, 11, 40, -21, -102, -67, -73, 125}), false)) {
            MyA11yService myA11yService = MyA11yService.f1453c;
            if (myA11yService != null) {
                Display[] displays = ((DisplayManager) myA11yService.getSystemService(AbstractC1387m.m2421h(new byte[]{-74, -22, 91, 4, 63, 3, 55}, new byte[]{-46, -125, 40, 116, 83, 98, 78, -94}))).getDisplays();
                if (i10 < displays.length) {
                    windowManagerM4057x = (WindowManager) myA11yService.createDisplayContext(displays[i10]).getSystemService(AbstractC1387m.m2421h(new byte[]{12, 105, -16, -77, 3, -6}, new byte[]{123, 0, -98, -41, 108, -115, 117, 115}));
                } else {
                    windowManagerM4057x = null;
                }
            } else {
                windowManagerM4057x = null;
            }
        } else {
            windowManagerM4057x = AbstractC2587b.m4057x(i10);
        }
        if (windowManagerM4057x != null) {
            try {
                windowManagerM4057x.addView(view, layoutParams);
                return windowManagerM4057x;
            } catch (Exception e) {
                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-69, -66, 73, 7, 105, 92, -88, 2}, new byte[]{-2, -52, 59, 104, 27, 124, -123, 34}) + e.getMessage(), ColorText.RED);
            }
        }
        return windowManagerM4057x;
    }

    @Override // p204t8.InterfaceC3268a
    public Object get() {
        Set setUnmodifiableSet;
        switch (this.f947b) {
            case 10:
                C3663e c3663e = AbstractC3660b.f10849a;
                if (c3663e != null) {
                    return c3663e;
                }
                C2467b.m3828n("scheduler == null");
                return null;
            default:
                C0990e c0990e = new C0990e(15);
                HashMap map = new HashMap();
                Set set = Collections.EMPTY_SET;
                if (set != null) {
                    map.put(EnumC0005b.f5b, new C1946b(30000L, 86400000L, set));
                    if (set != null) {
                        map.put(EnumC0005b.f7d, new C1946b(1000L, 86400000L, set));
                        if (set == null || (setUnmodifiableSet = Collections.unmodifiableSet(new HashSet(Arrays.asList(EnumC1947c.f5305c)))) == null) {
                            C2467b.m3828n("Null flags");
                        } else {
                            map.put(EnumC0005b.f6c, new C1946b(86400000L, 86400000L, setUnmodifiableSet));
                            if (map.keySet().size() >= EnumC0005b.values().length) {
                                new HashMap();
                                return new C1945a(c0990e, map);
                            }
                            C1929i.m3030l("Not all priorities have been configured");
                        }
                    } else {
                        C2467b.m3828n("Null flags");
                    }
                } else {
                    C2467b.m3828n("Null flags");
                }
                return null;
        }
    }

    @Override // p077h.InterfaceC1640b
    /* JADX INFO: renamed from: h */
    public boolean mo1146h(Object obj, File file, C1646h c1646h) throws Throwable {
        try {
            AbstractC0933b.m1068d(((C3274f) ((C3270b) ((InterfaceC1889d0) obj).get()).f9570b.f8794b).f9589a.f3996d.asReadOnlyBuffer(), file);
            return true;
        } catch (IOException e) {
            if (!Log.isLoggable("GifEncoder", 5)) {
                return false;
            }
            Log.w("GifEncoder", "Failed to encode GIF drawable data", e);
            return false;
        }
    }

    @Override // p099j1.InterfaceC1943w
    /* JADX INFO: renamed from: i */
    public void mo1147i(Context context) {
        int i10 = this.f947b;
    }

    @Override // p108k.InterfaceC2014b
    /* JADX INFO: renamed from: j */
    public Bitmap mo1148j(int i10, int i11, Bitmap.Config config) {
        return Bitmap.createBitmap(i10, i11, config);
    }

    @Override // p099j1.InterfaceC1943w
    /* JADX INFO: renamed from: k */
    public void mo1149k(AccessibilityEvent accessibilityEvent, AccessibilityNodeInfo accessibilityNodeInfo) {
        int i10 = this.f947b;
    }

    @Override // p255z0.InterfaceC3692a
    /* JADX INFO: renamed from: m */
    public int mo1151m() {
        if (MyA11yService.m1479f() && C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{91, 80, -122, 103, -79, -83, -105, -24, 67, 79, -121, 114, -117, -86, -99, -60, 88, 92, -113}, new byte[]{44, 57, -30, 0, -44, -39, -28, -73}), false)) {
            return 2032;
        }
        return Build.VERSION.SDK_INT >= 26 ? 2038 : 2002;
    }

    public String toString() {
        switch (this.f947b) {
            case 5:
                return "IdentityFunction";
            default:
                return super.toString();
        }
    }

    /* JADX INFO: renamed from: u */
    public void mo1153u(TabLayout tabLayout, View view, View view2, float f8, Drawable drawable) {
        RectF rectFM1134p = m1134p(tabLayout, view);
        RectF rectFM1134p2 = m1134p(tabLayout, view2);
        drawable.setBounds(AbstractC0884a.m1017c(f8, (int) rectFM1134p.left, (int) rectFM1134p2.left), drawable.getBounds().top, AbstractC0884a.m1017c(f8, (int) rectFM1134p.right, (int) rectFM1134p2.right), drawable.getBounds().bottom);
    }

    public /* synthetic */ C0990e(int i10) {
        this.f947b = i10;
    }

    @Override // p108k.InterfaceC2014b
    /* JADX INFO: renamed from: n */
    public void mo1152n() {
    }

    /* JADX INFO: renamed from: s */
    private final void m1137s(Context context) {
    }

    /* JADX INFO: renamed from: t */
    private final void m1138t(Context context) {
    }

    @Override // p023b8.InterfaceC0929c
    public Object apply(Object obj) {
        return obj;
    }

    @Override // p108k.InterfaceC2014b
    /* JADX INFO: renamed from: l */
    public void mo1150l(int i10) {
    }

    /* JADX INFO: renamed from: q */
    private final void m1135q(AccessibilityEvent accessibilityEvent, AccessibilityNodeInfo accessibilityNodeInfo) {
    }

    /* JADX INFO: renamed from: r */
    private final void m1136r(AccessibilityEvent accessibilityEvent, AccessibilityNodeInfo accessibilityNodeInfo) {
    }

    @Override // p077h.InterfaceC1644f
    /* JADX INFO: renamed from: a */
    public void mo1139a(byte[] bArr, Object obj, MessageDigest messageDigest) {
    }
}
