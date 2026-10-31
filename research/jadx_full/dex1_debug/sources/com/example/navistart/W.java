package com.example.navistart;

import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.hardware.display.DisplayManager;
import android.os.Bundle;
import android.view.Display;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import c5.h;
import com.google.protobuf.q;
import e0.m;
import e0.m3;
import e0.p3;
import e0.x1;
import h0.b;
import kotlin.jvm.internal.ByteCompanionObject;
import u0.a;
import y5.k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class W extends AppCompatActivity {
    public static final /* synthetic */ int c = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Bundle f889b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Boolean s() {
        StringBuilder sb = new StringBuilder();
        a aVarO = b.o();
        byte[] bArr = m.f1896j;
        String[] strArr = p3.f1924a;
        q.s(bArr, aVarO, "", sb);
        q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strG = q.g(sb, x1.f1989q);
        a aVarO2 = b.o();
        byte[] bArr2 = m.f1892f;
        if (q.w(bArr2, aVarO2, "", strG)) {
            return Boolean.valueOf(q.d(Long.MAX_VALUE, b.a().j()) < Long.parseLong(new String(q.x(new byte[]{15}, new byte[]{63, 27, 19, -92, 22, -29, 36, 110}, b.o(), q.h(m.f1893g, b.o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void t(Context context, Class cls, Bundle bundle) {
        Display[] displays = ((DisplayManager) context.getSystemService(m.h(new byte[]{-56, -34, -41, 37, -93, 18, 4}, new byte[]{-84, -73, -92, 85, -49, 115, 125, -110}))).getDisplays();
        int i9 = bundle != null ? bundle.getInt(m.h(new byte[]{80, 108, -85}, new byte[]{52, 5, -40, -119, 67, -20, -42, 8}), 0) : 0;
        if (i9 < 0 || i9 >= displays.length || !s().booleanValue()) {
            return;
        }
        Intent intent = new Intent(context, (Class<?>) W.class);
        intent.putExtra(m.h(new byte[]{120, -74, -55, 11, 56, 35, -47, 49, 65, -106, -3, 34, 10, 18, -26, 21, 91}, new byte[]{30, -60, -88, 108, 85, 70, -65, 69}), m.h(new byte[]{-72, 97, -110, -89, -57, -57, -127, ByteCompanionObject.MAX_VALUE, -68, 125, -120, -95, -39, -47, -101, ByteCompanionObject.MAX_VALUE}, new byte[]{-22, 52, -36, -8, -122, -124, -43, 54}));
        intent.putExtra(m.h(new byte[]{-66, 95, 31, 5, -66, -101, -21, 30, -121, 78, 18, 3, -96, -115}, new byte[]{-40, 45, 126, 98, -45, -2, -123, 106}), cls.getName());
        intent.putExtra(m.h(new byte[]{115, -122, -77, -32, -74, -121, -31, -9, 74, -107, -96, -32, -88}, new byte[]{21, -12, -46, -121, -37, -30, -113, -125}), bundle);
        intent.addFlags(402653184);
        k.u(context, intent, h.b(ActivityOptions.makeBasic(), displays[i9].getDisplayId()).toBundle());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void u(Context context, Class cls, Bundle bundle) {
        Display[] displays = ((DisplayManager) context.getSystemService(m.h(new byte[]{-38, 123, 5, -73, -56, -51, -59}, new byte[]{-66, 18, 118, -57, -92, -84, -68, -16}))).getDisplays();
        int i9 = bundle != null ? bundle.getInt(m.h(new byte[]{-106, -117, 109}, new byte[]{-14, -30, 30, 47, 32, -106, 117, -89}), 0) : 0;
        if (i9 < 0 || i9 >= displays.length || !s().booleanValue()) {
            return;
        }
        Intent intent = new Intent(context, (Class<?>) W.class);
        intent.putExtra(m.h(new byte[]{68, -126, 58, 41, -111, -67, 99, -122, 125, -94, 14, 0, -93, -116, 84, -94, 103}, new byte[]{34, -16, 91, 78, -4, -40, 13, -14}), m.h(new byte[]{97, 117, ByteCompanionObject.MAX_VALUE, -79, 93, 125, 95, -20, 124, 103, 110, -69, 87, 125}, new byte[]{51, 32, 49, -18, 25, 52, 30, -96}));
        intent.putExtra(m.h(new byte[]{-10, -93, 44, -87, -20, 21, 2, 82, -49, -78, 33, -81, -14, 3}, new byte[]{-112, -47, 77, -50, -127, 112, 108, 38}), cls.getName());
        intent.putExtra(m.h(new byte[]{121, -96, 36, 47, -85, -123, -8, 22, 64, -77, 55, 47, -75}, new byte[]{31, -46, 69, 72, -58, -32, -106, 98}), bundle);
        intent.addFlags(402653184);
        k.u(context, intent, h.b(ActivityOptions.makeBasic(), displays[i9].getDisplayId()).toBundle());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f889b = bundle;
        b.a();
        if (b.g().f()) {
            BlackActivity.t(this);
        }
        setContentView(2131493151);
        if (bundle == null || getSupportFragmentManager().findFragmentById(2131296457) == null) {
            return;
        }
        findViewById(2131296458).setVisibility(0);
        findViewById(2131296565).setOnClickListener(new m3(this, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPostResume() {
        super.onPostResume();
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra(m.h(new byte[]{103, 48, 28, -29, 32, -61, -66, -108, 94, 16, 40, -54, 18, -14, -119, -80, 68}, new byte[]{1, 66, 125, -124, 77, -90, -48, -32}));
        if (stringExtra != null) {
            intent.removeExtra(m.h(new byte[]{-43, 94, -93, -29, 43, 99, -67, 93, -20, 126, -105, -54, 25, 82, -118, 121, -10}, new byte[]{-77, 44, -62, -124, 70, 6, -45, 41}));
            int iHashCode = stringExtra.hashCode();
            if (iHashCode != -302384211) {
                if (iHashCode == 1443785972 && stringExtra.equals(m.h(new byte[]{-75, 2, 119, -43, 51, 106, 32, 82, -79, 30, 109, -45, 45, 124, 58, 82}, new byte[]{-25, 87, 57, -118, 114, 41, 116, 27})) && this.f889b == null) {
                    String stringExtra2 = intent.getStringExtra(m.h(new byte[]{-101, -8, 76, -112, 83, -112, 106, -7, -94, -23, 65, -106, 77, -122}, new byte[]{-3, -118, 45, -9, 62, -11, 4, -115}));
                    Bundle bundleExtra = intent.getBundleExtra(m.h(new byte[]{87, 58, 111, 122, 88, -98, -62, 58, 110, 41, 124, 122, 70}, new byte[]{49, 72, 14, 29, 53, -5, -84, 78}));
                    try {
                        Fragment fragment = (Fragment) Class.forName(stringExtra2).newInstance();
                        if (bundleExtra != null) {
                            fragment.setArguments(bundleExtra);
                        }
                        findViewById(2131296458).setVisibility(0);
                        findViewById(2131296565).setOnClickListener(new m3(this, 1));
                        getSupportFragmentManager().beginTransaction().replace(2131296457, fragment).commit();
                        return;
                    } catch (Exception unused) {
                        return;
                    }
                }
                return;
            }
            if (stringExtra.equals(m.h(new byte[]{55, 36, 36, 29, -27, -27, 112, -9, 42, 54, 53, 23, -17, -27}, new byte[]{101, 113, 106, 66, -95, -84, 49, -69}))) {
                String stringExtra3 = intent.getStringExtra(m.h(new byte[]{38, -82, -119, 42, 30, 73, 91, 97, 31, -65, -124, 44, 0, 95}, new byte[]{64, -36, -24, 77, 115, 44, 53, 21}));
                Bundle bundleExtra2 = intent.getBundleExtra(m.h(new byte[]{79, -77, 117, -47, -73, -16, -77, -125, 118, -96, 102, -47, -87}, new byte[]{41, -63, 20, -74, -38, -107, -35, -9}));
                FragmentManager supportFragmentManager = getSupportFragmentManager();
                if (stringExtra3 == null || isFinishing() || isDestroyed() || supportFragmentManager.isStateSaved() || supportFragmentManager.findFragmentByTag(m.h(new byte[]{-14, -50, 38, 19, 124, 14}, new byte[]{-106, -89, 71, ByteCompanionObject.MAX_VALUE, 19, 105, 41, 69})) != null) {
                    return;
                }
                try {
                    l0.a.t(Class.forName(stringExtra3), bundleExtra2).show(supportFragmentManager, m.h(new byte[]{117, -84, 25, -66, -119, 125}, new byte[]{17, -59, 120, -46, -26, 26, 12, -5}));
                } catch (Exception e) {
                    ai.onnxruntime.b.o(m.h(new byte[]{-58, 115, 69, 68, 20, -78, 46, 0, -96, 98, 72, 66, 10, -92, 96, 26, -17, 117, 4, 69, 22, -94, 46, 16, -70, 33}, new byte[]{ByteCompanionObject.MIN_VALUE, 1, 36, 35, 121, -41, 64, 116}).concat(stringExtra3), e);
                }
            }
        }
    }
}
