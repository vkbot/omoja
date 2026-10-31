package com.example.navistart;

import a4.g;
import android.accessibilityservice.AccessibilityService;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.KeyEvent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityWindowInfo;
import androidx.recyclerview.widget.ItemTouchHelper$Callback;
import b1.n;
import com.example.navistart.cores.ColorText;
import com.google.protobuf.q;
import d2.h;
import e0.m;
import e0.p3;
import e0.w;
import e0.x1;
import e0.y1;
import h0.b;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import u0.a;
import y5.k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MyA11yService extends AccessibilityService {
    public static MyA11yService c;
    public static Boolean e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f775b = w.c(-1, m.h(new byte[]{53, 118, 36, -63, -27, 3, 42, 51, 10, 121, 12, -109, -79}, new byte[]{120, 15, 101, -16, -44, 122, 121, 86}));

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f771f = m.h(new byte[]{68, 27, -103, -109, 32, 17, -100, 28, 123, 20, -79, -63, 116}, new byte[]{9, 98, -40, -94, 17, 104, -49, 121});

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f772g = m.h(new byte[]{-95, -26, 24, 102, 24, -36, 34, -49, -87, -26, 8, 113, 25, -63, 104, ByteCompanionObject.MIN_VALUE, -93, -4, 21, 123, 25, -101, 37, ByteCompanionObject.MIN_VALUE, -78, -41, 15, 109, 4, -63, 35, -116, -97, -17, 25, 103, 3, -64, 52, -124, -97, -27, 19, 112, 18}, new byte[]{-64, -120, 124, 20, 119, -75, 70, -31});

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f773h = m.h(new byte[]{72, -4, -47, 47, 30, -114, -61}, new byte[]{47, -103, -94, 91, 107, -4, -90, -57});

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f774i = m.h(new byte[]{46, -12, 80, 46, -18, 27, 27, -26, 86, -85, 90}, new byte[]{103, -102, 35, 90, -113, 119, 119, -89});
    public static h d = null;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MyA11yService() {
        new ArrayList();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Boolean a() {
        StringBuilder sb = new StringBuilder();
        a aVarO = b.o();
        byte[] bArr = m.f1896j;
        String[] strArr = p3.f1924a;
        q.s(bArr, aVarO, "", sb);
        q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strG = q.g(sb, x1.f1989q);
        a aVarO2 = b.o();
        byte[] bArr2 = m.f1892f;
        if (!q.w(bArr2, aVarO2, "", strG)) {
            return Boolean.FALSE;
        }
        b.a();
        return Boolean.valueOf(q.d(Long.MAX_VALUE, b.a().j()) < Long.parseLong(new String(q.x(new byte[]{-33}, new byte[]{-17, 18, 1, -9, 57, -99, -94, 35}, b.o(), q.h(m.f1893g, b.o(), new String(bArr2)), 0))));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean c(AccessibilityNodeInfo accessibilityNodeInfo, String str) {
        StringBuilder sbU = ai.onnxruntime.a.u(str);
        sbU.append(m.h(new byte[]{125, 9, -34, 66, -45, -81, -63, -116, 47, 13, -41, 95, -115}, new byte[]{93, 106, -78, 43, -80, -60, -107, -19}));
        sbU.append(d(accessibilityNodeInfo));
        String string = sbU.toString();
        String str2 = f774i;
        Log.i(str2, string);
        try {
            boolean zPerformAction = accessibilityNodeInfo.performAction(16);
            Log.i(str2, str + m.h(new byte[]{31, -118, 23, -20, -68, 45, 54, -11, 124, -121, 29, -5, -66, 95}, new byte[]{63, -53, 84, -72, -11, 98, 120, -86}) + zPerformAction);
            return zPerformAction;
        } catch (RuntimeException e6) {
            StringBuilder sbU2 = ai.onnxruntime.a.u(str);
            sbU2.append(m.h(new byte[]{-1, 84, Base64.padSymbol, 114, -19, 71, -65, 19, -66, 94, Base64.padSymbol, 126, -22, 17}, new byte[]{-33, 55, 81, 27, -114, 44, -32, 117}));
            sbU2.append(e6.getClass().getName());
            Log.e(str2, sbU2.toString());
            throw e6;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String d(AccessibilityNodeInfo accessibilityNodeInfo) {
        if (accessibilityNodeInfo == null) {
            return m.h(new byte[]{-119, -45, 118, 94}, new byte[]{-25, -90, 26, 50, -114, 11, 117, -123});
        }
        try {
            Rect rect = new Rect();
            accessibilityNodeInfo.getBoundsInScreen(rect);
            return m.h(new byte[]{79, 16, 19, -110, 90, 42, 96, -66, 9}, new byte[]{52, 96, 114, -15, 49, 75, 7, -37}) + ((Object) accessibilityNodeInfo.getPackageName()) + m.h(new byte[]{-14, -27, 7, -97, -4, 124, -9, 50}, new byte[]{-46, -110, 110, -15, -104, 19, ByteCompanionObject.MIN_VALUE, 15}) + accessibilityNodeInfo.getWindowId() + m.h(new byte[]{82, -4, -6, -26}, new byte[]{114, -107, -98, -37, 68, 93, -124, 124}) + accessibilityNodeInfo.getViewIdResourceName() + m.h(new byte[]{46, 38, 42, -15, 6, -21, Base64.padSymbol}, new byte[]{14, 69, 70, -112, 117, -104, 0, -42}) + ((Object) accessibilityNodeInfo.getClassName()) + m.h(new byte[]{-121, -123, 60, -11, -127, 41}, new byte[]{-89, -15, 89, -115, -11, 20, -119, -78}) + ((Object) accessibilityNodeInfo.getText()) + m.h(new byte[]{69, 24, 36, 80, 119, 2, -62, 6, 88}, new byte[]{101, 125, 74, 49, 21, 110, -89, 98}) + accessibilityNodeInfo.isEnabled() + m.h(new byte[]{62, -33, -57, 14, -10, -20, -37, -99, 114, -39, -106}, new byte[]{30, -68, -85, 103, -107, -121, -70, -1}) + accessibilityNodeInfo.isClickable() + m.h(new byte[]{-105, -4, -56, -20, -110, -56, 6, 123, -118}, new byte[]{-73, -118, -95, -97, -5, -86, 106, 30}) + accessibilityNodeInfo.isVisibleToUser() + m.h(new byte[]{94, -87, 5, -114, -94, -92, -3, -8, 67}, new byte[]{126, -56, 102, -6, -53, -53, -109, -117}) + accessibilityNodeInfo.getActionList() + m.h(new byte[]{-79, -17, 1, ByteCompanionObject.MIN_VALUE, 67, -74, 74, 7}, new byte[]{-111, -115, 110, -11, 45, -46, 57, 58}) + rect.toShortString() + m.h(new byte[]{-123}, new byte[]{-8, 110, -36, -20, -2, 57, -117, 116});
        } catch (RuntimeException e6) {
            return m.h(new byte[]{48, 73, 118, -112, -28, 102, 11, -54, 39, 75, 114, -36}, new byte[]{69, 39, 23, -26, -123, 15, 103, -85}).concat(e6.getClass().getName());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean f() {
        return c != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void g(String str, List list) {
        StringBuilder sbU = ai.onnxruntime.a.u(str);
        sbU.append(m.h(new byte[]{-16, -50, -111, 102, -122, -109, -79}, new byte[]{-48, -83, -2, 19, -24, -25, -116, 89}));
        sbU.append(list == null ? 0 : list.size());
        String string = sbU.toString();
        String str2 = f774i;
        Log.i(str2, string);
        if (list == null) {
            return;
        }
        for (int i9 = 0; i9 < Math.min(list.size(), 8); i9++) {
            StringBuilder sbU2 = ai.onnxruntime.a.u(str);
            q.t(new byte[]{66, 73, -92, 13, 118, -81}, new byte[]{98, 39, -53, 105, 19, -12, -67, 103}, sbU2, i9);
            sbU2.append(m.h(new byte[]{122, 73}, new byte[]{39, 116, -19, 99, 64, 38, 6, 44}));
            sbU2.append(d((AccessibilityNodeInfo) list.get(i9)));
            Log.i(str2, sbU2.toString());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(AccessibilityEvent accessibilityEvent) {
        String strValueOf = String.valueOf(accessibilityEvent.getPackageName());
        String strValueOf2 = String.valueOf(accessibilityEvent.getClassName());
        boolean z8 = true;
        boolean z9 = strValueOf.equals(m.h(new byte[]{-122, -88, -93, -70, -61, -19, 12, -33, -118, -82, -86, -70, -46, -30, 11, -58, -124, -96, -85, -3, -52, -16, 28, -52, -119, -85, -85, -26}, new byte[]{-27, -57, -50, -108, -94, -125, 104, -83})) || strValueOf.equals(m.h(new byte[]{-66, -50, 12, -29, 96, 93, 89, -39, -79, -60, 79, -84, 105, 86, 68, -47, -76, -59, 79, -67, 102, 81, 93, -33, -70, -60, 8, -93, 116, 70, 87, -46, -79, -60, 19}, new byte[]{-35, -95, 97, -51, 7, 50, 54, -66})) || strValueOf.equals(m.h(new byte[]{81, -83, 91, -118, 96, ByteCompanionObject.MIN_VALUE, -118, 41, 28, -78, 87, -57, 102, -120, -104, 37, 91, -84, 69, -48, 108, -123, -109, 37, 64}, new byte[]{50, -62, 54, -92, 13, -23, -1, 64}));
        String str = m.h(new byte[]{25, 64, -61, 71, -91, -40, 47, 59, 25, 11}, new byte[]{124, 54, -90, 41, -47, -116, 70, 86}) + accessibilityEvent.getEventTime() + m.h(new byte[]{-19, 34, -71, -50, -43, -13, -3, -96}, new byte[]{-51, 85, -48, -96, -79, -100, -118, -99}) + accessibilityEvent.getWindowId();
        String str2 = f774i;
        if (z9) {
            try {
                AccessibilityServiceInfo serviceInfo = getServiceInfo();
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(m.h(new byte[]{60, -20, Base64.padSymbol, 32, 103, -85, -26}, new byte[]{28, -119, 75, 69, 9, -33, -37, -15}));
                sb.append(AccessibilityEvent.eventTypeToString(accessibilityEvent.getEventType()));
                sb.append(m.h(new byte[]{-16, 36, 2, 89, -119, 99, 33, 51, -19}, new byte[]{-48, 84, 99, 58, -30, 2, 70, 86}));
                sb.append(strValueOf);
                sb.append(m.h(new byte[]{-84, 114, 124, 118, -82, 43, 126}, new byte[]{-116, 17, 16, 23, -35, 88, 67, 87}));
                sb.append(strValueOf2);
                sb.append(m.h(new byte[]{-74, 97, -4, 39, -88, 108, 27, 82}, new byte[]{-106, 13, -109, 68, -55, 0, 126, 111}));
                sb.append(getResources().getConfiguration().getLocales().toLanguageTags());
                sb.append(m.h(new byte[]{36, ByteCompanionObject.MIN_VALUE, -62, 88, 90, 67, -104, 126, 103, -118, -118}, new byte[]{4, -31, -73, 44, 53, 0, -12, 23}));
                sb.append(e);
                sb.append(m.h(new byte[]{67, 40, -27, -5, -16, -57, 86, 95, 37, 55, -31, -18, -11, -109}, new byte[]{99, 91, ByteCompanionObject.MIN_VALUE, -119, -122, -82, 53, 58}));
                sb.append(serviceInfo == null ? m.h(new byte[]{14, 43, 35, -75}, new byte[]{96, 94, 79, -39, 72, 55, 26, 85}) : Integer.valueOf(serviceInfo.flags));
                Log.i(str2, sb.toString());
            } catch (RuntimeException e6) {
                if (z9) {
                    StringBuilder sbU = ai.onnxruntime.a.u(str);
                    sbU.append(m.h(new byte[]{-3, -121, 74, -63, -93, 89, -101, 14, -68, -115, 78, -63, -92, 15}, new byte[]{-35, -28, 34, -92, -64, 50, -60, 104}));
                    sbU.append(e6.getClass().getName());
                    Log.e(str2, sbU.toString());
                }
                throw e6;
            }
        }
        if (!e.booleanValue() || !a().booleanValue()) {
            z8 = false;
        }
        if (z9) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(m.h(new byte[]{-90, 84, -23, 21, -28, 124, 93, 7, -69}, new byte[]{-122, 53, -123, 121, -117, 11, 56, 99}));
            sb2.append(z8);
            sb2.append(m.h(new byte[]{-46, -118, -32, -67, -15, 108}, new byte[]{-14, -19, -127, -55, -108, 81, 6, 87}));
            sb2.append(e.booleanValue() ? Boolean.valueOf(z8) : m.h(new byte[]{51, 23, 13, -112, 72, -52, -78, -20, 54, 29, 29}, new byte[]{93, 120, 121, -49, 43, -92, -41, -113}));
            Log.i(str2, sb2.toString());
        }
        if (z8) {
            if (accessibilityEvent.getEventType() != 32) {
                if (z9) {
                    Log.i(str2, str.concat(m.h(new byte[]{-8, -81, -71, -21, -77, 13, -27, 62, -67, -78, -90, -35, -73, 73, -16, 45}, new byte[]{-40, -36, -46, -126, -61, 48, ByteCompanionObject.MIN_VALUE, 72})));
                    return;
                }
                return;
            }
            if (z9) {
                if (!strValueOf2.contains(m.h(new byte[]{-124, 93, -114, -119, 36, -5, 22, -91, -124, 67, -102, -43, 15, -5, 19, -25, -118, 84}, new byte[]{-27, 51, -22, -5, 75, -110, 114, -117})) && !strValueOf2.contains(m.h(new byte[]{81, -91, -15, -71, -58, -27, -81, 108, 93, -93, -8, -71, -41, -22, -88, 117, 83, -83, -7, -2, -55, -8, -65, ByteCompanionObject.MAX_VALUE, 94, -90, -7, -27, -119, -37, -86, 125, 89, -85, -5, -14, -18, -27, -72, 106, 83, -90, -16, -14, -43, -54, -88, 106, 91, -68, -11, -29, -34}, new byte[]{50, -54, -100, -105, -89, -117, -53, 30}))) {
                    Log.i(str2, str.concat(m.h(new byte[]{-94, 105, 40, 101, 47, 85, -121, -117, -20, 126, 44, 123, 0, 11, -100, -125, -15, 105}, new byte[]{-126, 26, 67, 12, 95, 104, -16, -30})));
                    return;
                }
                AccessibilityNodeInfo rootInActiveWindow = getRootInActiveWindow();
                Log.i(str2, str + m.h(new byte[]{-81, -1, 59, -32, 105, -25, ByteCompanionObject.MIN_VALUE, 60, -32, -15, 44, -87}, new byte[]{-113, -98, 88, -108, 0, -111, -27, 110}) + d(rootInActiveWindow));
                if (rootInActiveWindow == null || !strValueOf.contentEquals(String.valueOf(rootInActiveWindow.getPackageName()))) {
                    h(str);
                }
                if (rootInActiveWindow == null) {
                    Log.i(str2, str.concat(m.h(new byte[]{81, -57, 91, 40, -116, 76, -38, -119, 30, -64, 111, 47, -119, 29, -60}, new byte[]{113, -76, 48, 65, -4, 113, -88, -26})));
                    return;
                }
                e(m.h(new byte[]{7, 70, -19, 18, 6, 119, -45, -112, 7, 88, -20, 45, 7, 71, -45, -104, 6, 103, -19, 31}, new byte[]{-41, -27, 60, -109, -41, -11, 3, 32}), str);
                e(m.h(new byte[]{-4, -114, 67, -61, 4, 31, -29, 68, -4, -94, 67, -54, 5, 32, -30, 118}, new byte[]{44, 16, -109, 114, -44, -94, 51, -6}), str);
                e(m.h(new byte[]{72, 21, 125, -120, 0, 79, -89}, new byte[]{1, 123, 14, -4, 97, 35, -53, 109}), str);
                e(m.h(new byte[]{-14, 125, 117, 5, 85, -18}, new byte[]{-89, 13, 17, 100, 33, -117, -116, -39}), str);
                e(m.h(new byte[]{44, 11, 3, 88, -127, -34}, new byte[]{-55, -91, -118, -80, 34, 91, -97, 101}), str);
                e(m.h(new byte[]{-29, 79, -113, -78, 119, -121}, new byte[]{5, -44, 59, 84, -31, 55, 38, -22}), str);
                List<AccessibilityNodeInfo> listFindAccessibilityNodeInfosByViewId = rootInActiveWindow.findAccessibilityNodeInfosByViewId(m.h(new byte[]{-61, 29, 34, 38, 2, 98, -50, 102, -53, 23, 105, 54, 24, ByteCompanionObject.MAX_VALUE, -34, 51, -52, 65}, new byte[]{-94, 115, 70, 84, 109, 11, -86, 92}));
                g(str.concat(m.h(new byte[]{-102, -39, -91, 15, 113, 110, 119, -55, -61, -13, -96}, new byte[]{-70, -70, -60, 97, 18, 11, 27, -117})), listFindAccessibilityNodeInfosByViewId);
                if (listFindAccessibilityNodeInfosByViewId.isEmpty() || !listFindAccessibilityNodeInfosByViewId.get(0).isEnabled()) {
                    g(str.concat(m.h(new byte[]{-78, 9, 24, -29, 56, -40, 1, -1, -48, 25, 63, -12, 19, -35, 4, -14, -11, 14, 25, -29, 56, -48, 14}, new byte[]{-110, 96, 118, -112, 76, -71, 109, -109})), rootInActiveWindow.findAccessibilityNodeInfosByViewId(m.h(new byte[]{28, 37, -66, 117, 104, 19, -78, -15, 20, 47, -11, 101, 114, 14, -94, -92, 19, 122}, new byte[]{125, 75, -38, 7, 7, 122, -42, -53})));
                    Log.i(str2, str.concat(m.h(new byte[]{-32, 89, 10, -69, -70, -69, 48, -24, -82, 73, 4, -66, -107, -21, 58, -6, -77, 67, 15, -75, -107, -23, 33, -42, -92, 67, 18, -77, -88, -22, 54, -19}, new byte[]{-64, 42, 97, -46, -54, -122, 83, -119})));
                    return;
                }
                List<AccessibilityNodeInfo> listFindAccessibilityNodeInfosByViewId2 = rootInActiveWindow.findAccessibilityNodeInfosByViewId(m.h(new byte[]{-98, -29, 114, 17, 34, 120, -25, 89, -106, -23, 57, 1, 56, 101, -9, 12, -111, -68}, new byte[]{-1, -115, 22, 99, 77, 17, -125, 99}));
                g(str.concat(m.h(new byte[]{102, 66, 46, -34, -86, -47, 24, -12, 4, 82, 9, -55}, new byte[]{70, 43, 64, -83, -34, -80, 116, -104})), listFindAccessibilityNodeInfosByViewId2);
                if (listFindAccessibilityNodeInfosByViewId2.isEmpty() || !listFindAccessibilityNodeInfosByViewId2.get(0).isEnabled()) {
                    Log.i(str2, str.concat(m.h(new byte[]{20, -3, 14, ByteCompanionObject.MAX_VALUE, -114, -72, 24, 64, 71, -6, 4, 122, -110, -38, 28, 71, 71, -3, 12, 120, -103, -38, 30, 92, 107, -22, 12, 101, -97, -25, 29, 75, 80}, new byte[]{52, -114, 101, 22, -2, -123, 113, 46})));
                } else {
                    Log.i(str2, str.concat(m.h(new byte[]{87, 39, -84, -42, -117, -10, -115, -124, 74, 62, -89, -6, -100, -13, -118, ByteCompanionObject.MIN_VALUE, 28}, new byte[]{119, 87, -61, -91, -1, -97, -29, -29})));
                    new Handler(Looper.getMainLooper()).post(new a1.a(this, listFindAccessibilityNodeInfosByViewId2, str));
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e(String str, String str2) {
        AccessibilityNodeInfo rootInActiveWindow = getRootInActiveWindow();
        StringBuilder sbU = ai.onnxruntime.a.u(str2);
        q.u(new byte[]{-47, 48, 106, -107, -60, -78, 109, -119, -108, 59, 123, -55}, new byte[]{-15, 67, 15, -12, -74, -47, 5, -35}, sbU, str);
        sbU.append(m.h(new byte[]{21, -61, 69, -23, 82, 112}, new byte[]{53, -79, 42, -122, 38, 77, 65, -116}));
        sbU.append(d(rootInActiveWindow));
        Log.i(f774i, sbU.toString());
        if (rootInActiveWindow == null) {
            return;
        }
        List<AccessibilityNodeInfo> listFindAccessibilityNodeInfosByText = rootInActiveWindow.findAccessibilityNodeInfosByText(str);
        StringBuilder sbU2 = ai.onnxruntime.a.u(str2);
        sbU2.append(m.h(new byte[]{-23, -73, 99, 54, -30, -11, -73, 23, -84, -68, 114, 106}, new byte[]{-55, -60, 6, 87, -112, -106, -33, 67}));
        sbU2.append(str);
        g(sbU2.toString(), listFindAccessibilityNodeInfosByText);
        if (listFindAccessibilityNodeInfosByText == null || listFindAccessibilityNodeInfosByText.isEmpty()) {
            return;
        }
        for (AccessibilityNodeInfo accessibilityNodeInfo : listFindAccessibilityNodeInfosByText) {
            if (m.h(new byte[]{26, 41, 1, -103, 47, -87, -70, 4, 12, 46, 1, -116, 37, -76, -16, 104, 14, 51, 17, -124, 46}, new byte[]{123, 71, 101, -21, 64, -64, -34, 42}).equals(accessibilityNodeInfo.getClassName())) {
                StringBuilder sbU3 = ai.onnxruntime.a.u(str2);
                sbU3.append(m.h(new byte[]{-98, -24, -119, 6, -22, 120, 10, 8, -41, -1, -121, 67}, new byte[]{-66, -100, -20, 126, -98, 39, 105, 100}));
                sbU3.append(str);
                if (c(accessibilityNodeInfo, sbU3.toString())) {
                    new Handler(Looper.getMainLooper()).post(new n(this, accessibilityNodeInfo, str2, str));
                    return;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h(String str) {
        String str2 = f774i;
        try {
            List<AccessibilityWindowInfo> windows = getWindows();
            if (windows == null) {
                return;
            }
            for (AccessibilityWindowInfo accessibilityWindowInfo : windows) {
                AccessibilityNodeInfo root = accessibilityWindowInfo.getRoot();
                try {
                    Log.i(str2, str + m.h(new byte[]{-32, -88, 56, 119, -47, -38, -69, -27, -84, -84, 25, ByteCompanionObject.MAX_VALUE, -42, -46, -75, -16, -3}, new byte[]{-64, -55, 78, 22, -72, -74, -38, -121}) + accessibilityWindowInfo.getId() + m.h(new byte[]{-5, 34, 15, -89, -81, -99}, new byte[]{-37, 86, 118, -41, -54, -96, -107, -65}) + accessibilityWindowInfo.getType() + m.h(new byte[]{-66, 5, -61, 105, 78, -97, 119, -58}, new byte[]{-98, 100, -96, 29, 39, -23, 18, -5}) + accessibilityWindowInfo.isActive() + m.h(new byte[]{60, 66, -93, -126, -80, 59, 111, 63, 33}, new byte[]{28, 36, -52, -31, -59, 72, 10, 91}) + accessibilityWindowInfo.isFocused() + m.h(new byte[]{115, 81, 57, -27, -109, 115}, new byte[]{83, 35, 86, -118, -25, 78, -103, 75}) + d(root));
                    if (root != null) {
                        root.recycle();
                    }
                } catch (Throwable th) {
                    if (root != null) {
                        root.recycle();
                    }
                    throw th;
                }
            }
        } catch (RuntimeException e6) {
            StringBuilder sbU = ai.onnxruntime.a.u(str);
            sbU.append(m.h(new byte[]{-57, 39, -2, 91, 14, 75, 115, 20, -108, 51, -10, 91, 53, 66, 101, 34, -117, 53, -13, 8}, new byte[]{-25, 80, -105, 53, 106, 36, 4, 75}));
            sbU.append(e6.getClass().getName());
            Log.e(str2, sbU.toString());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i(int i9) {
        Intent intent = new Intent(f772g);
        intent.putExtra(f773h, i9);
        k.r(getApplicationContext(), intent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.accessibilityservice.AccessibilityService
    public final void onAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        this.f775b.execute(new y1(this, AccessibilityEvent.obtain(accessibilityEvent), 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        Log.d(f771f, m.h(new byte[]{-122, 80, 115, 78, -126, 73, -70, -49, -71, 95, 91, 28, -42, 16, -60, -118, -92, 71, 113, 13, -42, 81, -99, -49}, new byte[]{-53, 41, 50, ByteCompanionObject.MAX_VALUE, -77, 48, -23, -86}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        c = null;
        h hVar = d;
        if (hVar != null) {
            hVar.m();
            d = null;
        }
        b.v(m.h(new byte[]{-123, -67, 126, 85, -45, 27, 96, -66, -83, -78, 116, 68, -39, 59, 108, -82, -78, -73, 126, 85, ByteCompanionObject.MIN_VALUE, 69, 41, -109, -126, -104}, new byte[]{-60, -34, 29, 48, -96, 104, 9, -36}));
        k.r(getApplicationContext(), new Intent(m.h(new byte[]{34, 15, -68, 1, -17, 38, -115, 10, 49, 9, -84, 16, -3, 39, -112, 23, 57, 6, -90, 1, -9, 43, -118, 16, 34, 28, -90, 22, -21}, new byte[]{112, 74, -17, 85, -82, 116, -39, 85})).setClassName(getPackageName(), m.h(new byte[]{18, -116, -89, 62, -50, 64, 45, 19, 1, -113, -81, 62, -59, 89, 58, 23, 2, -105, -85, 98, -33, 22, 13, 29, 18, -122, -71, 99, -62, 90, 37, 18, 24, -105, -77, 66, -50, 75, 56, 31, 3, -105, -104, 117, -56, 93, 37, 8, 20, -111}, new byte[]{113, -29, -54, 16, -85, 56, 76, 126})));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.accessibilityservice.AccessibilityService
    public final boolean onGesture(int i9) {
        String strJ = q.j(new byte[]{32, 42, -10, -66, 67, -65, -30, 13, 42, 100, -100, -5}, new byte[]{79, 68, -79, -37, 48, -53, -105, ByteCompanionObject.MAX_VALUE}, new StringBuilder(), i9);
        ColorText colorText = ColorText.RED;
        b.w(strJ, colorText);
        if (i9 == 7) {
            performGlobalAction(1);
            return true;
        }
        switch (i9) {
            case 25:
                b.w(m.h(new byte[]{-52, 7, 53, 25, -96, 123, -37, 85, -71, 29, 32, 4, -69, 110, -37, 88, -44, 17, 49, 4, -91, 108, -63, 95, -37}, new byte[]{-117, 66, 102, 77, -11, 41, -98, 10}), colorText);
                i(203);
                return true;
            case 26:
                b.w(m.h(new byte[]{-94, 13, -27, 35, 95, ByteCompanionObject.MAX_VALUE, -2, -86, -41, 23, -16, 62, 68, 106, -2, -89, -70, 27, -31, 62, 90, 104, -28, -79, -86, 31, -8}, new byte[]{-27, 72, -74, 119, 10, 45, -69, -11}), colorText);
                i(202);
                return true;
            case 27:
                b.w(m.h(new byte[]{103, 77, -47, 112, -86, -114, -41, 19, 18, 87, -60, 109, -79, -101, -41, 30, ByteCompanionObject.MAX_VALUE, 91, -43, 109, -81, -103, -51, 0, 101, 78, -42}, new byte[]{32, 8, -126, 36, -1, -36, -110, 76}), colorText);
                i(ItemTouchHelper$Callback.DEFAULT_DRAG_ANIMATION_DURATION);
                return true;
            case 28:
                b.w(m.h(new byte[]{-45, -24, -122, -56, -100, -61, -78, -94, -90, -14, -109, -43, -121, -42, -78, -81, -53, -2, -126, -43, -103, -44, -88, -81, -35, -22, -99, -56}, new byte[]{-108, -83, -43, -100, -55, -111, -9, -3}), colorText);
                i(201);
                return true;
            default:
                return false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.accessibilityservice.AccessibilityService
    public final void onInterrupt() {
        Log.e(m.h(new byte[]{1, -22, -74, 101, -34, -8, -70, -89, 41, -27, -68, 116, -44, -40, -74, -73, 54, -32, -74, 101}, new byte[]{64, -119, -43, 0, -83, -117, -45, -59}), m.h(new byte[]{-107, -52, 56, 87, -91, -116, -7, -104, -113, -46, 5}, new byte[]{-6, -94, 113, 57, -47, -23, -117, -22}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.accessibilityservice.AccessibilityService
    public final boolean onKeyEvent(KeyEvent keyEvent) {
        try {
            b.v(m.h(new byte[]{7, -108, -34, -15, 83, -74, 4, 0, 102, -120, -49}, new byte[]{70, -91, -17, -76, 37, -45, 106, 116}) + keyEvent.getAction());
        } catch (Exception unused) {
        }
        return super.onKeyEvent(keyEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.accessibilityservice.AccessibilityService
    public final void onServiceConnected() {
        super.onServiceConnected();
        c = this;
        this.f775b.execute(new g(13, this));
        AccessibilityServiceInfo serviceInfo = getServiceInfo();
        if (serviceInfo == null) {
            return;
        }
        serviceInfo.flags |= 64;
        setServiceInfo(serviceInfo);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        c = null;
        Log.e(m.h(new byte[]{-77, -124, -65, 84, 5, 17, 24, -45, -101, -117, -75, 69, 15, 49, 20, -61, -124, -114, -65, 84}, new byte[]{-14, -25, -36, 49, 118, 98, 113, -79}), m.h(new byte[]{91, 101, 91, -52, 53, 115, 78, 84}, new byte[]{52, 11, 14, -94, 87, 26, 32, 48}));
        return super.onUnbind(intent);
    }
}
