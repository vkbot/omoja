package com.example.navistart;

import a4.g;
import android.app.UiModeManager;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import b1.h;
import com.google.protobuf.q;
import e0.m;
import e0.p3;
import e0.q2;
import e0.w;
import e0.x1;
import h0.b;
import h0.c;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import u0.a;
import v0.e;
import v1.d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SpeedBoardActi extends AppCompatActivity implements c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f822f = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f823b = w.c(-1, m.h(new byte[]{-65, -78, 87, 110, 119, -32, 23, -41, -98, -90, 115, 104, 103, -53}, new byte[]{-20, -62, 50, 11, 19, -94, 120, -74}));
    public g c;
    public ScheduledFuture d;
    public Fragment e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BlackActivity.t(this);
        setContentView(2131493134);
        b.a();
        Fragment eVar = m.h(new byte[]{42, 28, 110, -96, -95, -95, 125}, new byte[]{78, 121, 8, -63, -44, -51, 9, 29}).equals(b.o().loadString(m.h(new byte[]{114, -106, -26, -104, ByteCompanionObject.MIN_VALUE, -68, -65, 32, 96, -121, -37, -76, -110, -71, -66, 36, 113, -106, -32}, new byte[]{5, -13, -124, -57, -9, -43, -37, 71}), m.h(new byte[]{-103, 101, 106, 31, -55, -6, 101}, new byte[]{-3, 0, 12, 126, -68, -106, 17, 79}))) ? new e() : new h();
        getSupportFragmentManager().beginTransaction().replace(2131297386, eVar, m.h(new byte[]{41, 6, 81, 29, -13, -98, -72, 48, 59, 4, 80}, new byte[]{122, 86, 20, 88, -73, -63, -6, ByteCompanionObject.MAX_VALUE})).commit();
        this.e = eVar;
        d.a().d().f5511a.observe(this, new q2(this, 0));
        d.a().d().f5512b.observe(this, new q2(this, 1));
        d.a().d().c.observe(this, new q2(this, 2));
        d.a().d().d.observe(this, new q2(this, 3));
        d.a().d().e.observe(this, new q2(this, 4));
        d.a().d().f5513f.observe(this, new q2(this, 5));
        this.c = new g(18, this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        s();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.fragment.app.Fragment, v0.g] */
    /* JADX WARN: Type inference failed for: r0v10, types: [androidx.fragment.app.Fragment, v0.g] */
    /* JADX WARN: Type inference failed for: r0v14, types: [androidx.fragment.app.Fragment, v0.g] */
    /* JADX WARN: Type inference failed for: r0v18, types: [androidx.fragment.app.Fragment, v0.g] */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        this.e.q();
        int nightMode = ((UiModeManager) getSystemService(m.h(new byte[]{111, 12, 123, -69, -7, 64}, new byte[]{26, 101, 22, -44, -99, 37, -118, 6}))).getNightMode();
        if (nightMode == 0) {
            b.v(m.h(new byte[]{-91, -9, -100, -1, -123, 2, -78, -127, -106, -7, -3, 93, -123, 22, -78, -123, -105, -59, -4, 111, -124, 44, 66, -24, -59, -88, -103, 15, -23, 115, -46, 25, -105, -57, -4, 106, -124, 35, -78, -116, -105, -62, -4, 100, -124, 45, -77, -66, -105, -56, -4, 106, -124, 33, -77, -72, -106, -9, 12, 15, -27, 115, -48, -24, -59, -88, -110, 15, -23, 115, -46, -24, -59, -88, -108, 14, -46, 115, -41, -24, -58, -88, -106, 15, -19}, new byte[]{71, 120, 44, -33, 85, -93, 98, 57}));
        } else if (nightMode == 1) {
            b.v(m.h(new byte[]{107, -115, 120, 120, -52, 113, 57, -6, 74, -109, 36, 94, Base64.padSymbol, 32, 122, 88, 75, -89, 36, 90, 60, 20, -117, 10, 41, -62, 78, 54, 87, 112, 37, 11, 28, -62, 65, 54, 81, 113, 27, -6, 74, -109, 36, 84, 60, 20, 122, 88, 75, -87, 36, 86, Base64.padSymbol, 46, -117, 11, 25, -62, 65, 54, 80, 113, 27}, new byte[]{-101, 18, -12, -26, -20, -95, -85, -38}));
            ?? r1 = this.e;
            if (r1 != 0) {
                r1.h();
            }
        } else if (nightMode != 2) {
            b.v(m.h(new byte[]{59, -29, 8, -104, -79, -74, 70, -16, 9, -62, 75, 8, 65, -59, 23, -107, 97, -81, 26, 105, -29, -60, 35, -107, 101, -81, 16, -104, -79, -87, 70, -16, -7, -82, 37, 104, -34, -59, 22, -107, 108, -82, 47, 104, -44, -60, 45, -107, 108, -82, 38, 104, -47}, new byte[]{-39, 126, -101, -72, 97, 20, -106, 69}));
        } else {
            b.v(m.h(new byte[]{41, -67, -117, -119, -34, 13, 31, -60, 8, -93, -41, -94, 47, 92, 92, 102, 9, -105, -41, -90, 46, 104, -83, 52, 107, -14, -67, -54, 69, 12, 3, 53, 94, -14, -78, -54, 67, 13, Base64.padSymbol, -60, 8, -96, -42, -117, 46, 97, 93, 89, 9, -110, -42, -107, -34, 12, 15, 52, 108, -14, -69, -54, 78}, new byte[]{-39, 34, 7, 26, -2, -35, -115, -28}));
            ?? r9 = this.e;
            if (r9 != 0) {
                r9.r();
            }
        }
        this.e.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStart() {
        Boolean boolValueOf;
        super.onStart();
        b.f2431q = this;
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
            boolValueOf = Boolean.valueOf(q.d(Long.MAX_VALUE, b.a().j()) < Long.parseLong(new String(q.x(new byte[]{-95}, new byte[]{-111, 28, -73, -57, -52, 15, -120, -126}, b.o(), q.h(m.f1893g, b.o(), new String(bArr2)), 0))));
        } else {
            boolValueOf = Boolean.FALSE;
        }
        if (boolValueOf.booleanValue()) {
            s();
            this.d = this.f823b.scheduleWithFixedDelay(this.c, 10L, 400L, TimeUnit.MILLISECONDS);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStop() {
        super.onStop();
        s();
        b.f2431q = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void s() {
        ScheduledFuture scheduledFuture = this.d;
        if (scheduledFuture == null || scheduledFuture.isCancelled()) {
            return;
        }
        this.d.cancel(true);
    }
}
