package com.example.navistart;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import android.widget.LinearLayout;
import com.example.navistart.Transport.TransportService;
import e0.c2;
import e0.d2;
import e0.m;
import e0.w;
import g0.a;
import h0.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import m0.n1;
import org.json.JSONException;
import ru.transfer.MessageData;
import y0.d;
import y0.g;
import y0.h;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Notik extends Service {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final ArrayList f793l = new ArrayList();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f794m = m.h(new byte[]{-43, 77, -99, -19, -127, 75, -18, 24, -1, 98, -121, -27, -104, 69, -17, 8, -44, 77, -127, -19, -101, 80, -34, 3, -7, 114, -100, -23, -121, 80}, new byte[]{-105, 33, -24, -120, -11, 36, -127, 108});

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static boolean f795n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public a f796b;
    public b1.m c;
    public final ScheduledThreadPoolExecutor d = w.c(-1, m.h(new byte[]{25, 125, -22, -47, -106}, new byte[]{87, 18, -98, -72, -3, 67, -6, 47}));
    public final ConcurrentHashMap e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public h f797f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public d f798g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public d f799h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public d f800i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public d f801j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public d f802k;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        m.h(new byte[]{34, 101, -109, -15, -7, -84, -120, 47, 8, 74, -119, -7, -32, -94, -119, 63, 35, 101, -113, -15, -29, -73, -72, 25, 12, 124, -125, -32, -30, -84, -109, 51, 36, 108, -112, -3, -18, -90}, new byte[]{96, 9, -26, -108, -115, -61, -25, 91});
        f795n = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Notik() {
        w.b(100L, m.h(new byte[]{113, 111, -107, 14, -119, -7, -68, -28, 124, 75}, new byte[]{63, 0, -31, 103, -30, -90, -16, -85}));
        new AtomicBoolean(false);
        this.e = new ConcurrentHashMap();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void f(Context context, List list) {
        Bundle bundle = new Bundle();
        bundle.putSerializable(m.h(new byte[]{-56, -94, 22, -55, 36, 94, 9, -45, -60, -77, 4}, new byte[]{-91, -57, 101, -70, 69, 57, 108, -105}), new ArrayList(list));
        bundle.putBoolean(m.h(new byte[]{74, 58, -15, 85, 59, -75, -122, -18, 119, 56, -7, 75, 53, -78, -73, -30, 65, 63, -13, 73}, new byte[]{40, 91, -106, 39, 90, -64, -24, -118}), true);
        W.u(context, n1.class, bundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void g(Context context) {
        if (b.o().loadBoolean(f794m, false) && f795n) {
            context.startService(new Intent(context.getApplicationContext(), (Class<?>) Notik.class));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void a(MessageData messageData) {
        try {
            e(messageData);
            ArrayList arrayList = f793l;
            if (arrayList.size() >= 20) {
                arrayList.remove(0);
            }
            arrayList.add(messageData);
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(boolean z8) {
        h hVar = this.f797f;
        if (hVar != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = g.f6090a;
            if (TransportService.f857x.get()) {
                try {
                    hVar.c(m.h(new byte[]{-81, -34, 43, -56, 51, 7, 90, -16, -81, -126, 58, -44, 37, 4, 80, -20, -72, -55, 100, -53, 37, 4, 70, -29, -68, -55, 57}, new byte[]{-37, -84, 74, -90, 64, 119, 53, -126}), com.bumptech.glide.d.e(m.h(new byte[]{-121, -99, -81, 19, 16, 16, 76, 54}, new byte[]{-22, -8, -36, 96, 113, 119, 41, 69}), z8));
                } catch (RuntimeException | JSONException e) {
                    Log.w(m.h(new byte[]{-74, 86, 10, -26, 8}, new byte[]{-8, 57, 126, -113, 99, -114, -8, 7}), m.h(new byte[]{41, -122, 17, -66, -56, -24, -59, 117, 19, -56, 0, -87, -58, -31, -116, 114, 20, -56, 29, -71, -41, -2, -124, 102, 25, -101, 80, -84, -42, -24, -106, 100, 18, -117, 21}, new byte[]{124, -24, 112, -36, -92, -115, -27, 1}), e);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized MessageData c(String str) {
        ArrayList arrayList = f793l;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            MessageData messageData = (MessageData) obj;
            if (messageData.getKey().equals(str)) {
                return messageData;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(MessageData messageData) {
        Log.d(m.h(new byte[]{-101, -45, -121, -40, 5}, new byte[]{-43, -68, -13, -79, 110, -11, -46, -63}), m.h(new byte[]{119, -1, -95, 122, 97, 108, 80, 56, 91, -18, -77, 51, 32}, new byte[]{58, -102, -46, 9, 0, 11, 53, 124}) + messageData.getKey() + m.h(new byte[]{87, 116, -102}, new byte[]{119, 89, -70, 68, -121, 107, 118, 44}) + messageData.gethasReply());
        a(messageData);
        new Handler(Looper.getMainLooper()).post(new a1.a(28, this, messageData));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void e(MessageData messageData) {
        Iterator it = f793l.iterator();
        while (it.hasNext()) {
            if (((MessageData) it.next()).getKey().equals(messageData.getKey())) {
                it.remove();
                break;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        this.c = new b1.m(this, this);
        this.f796b = new a();
        this.f797f = g.a(this, m.h(new byte[]{-3, 96, 0, -5, 101, ByteCompanionObject.MAX_VALUE, Base64.padSymbol, -78}, new byte[]{-112, 5, 115, -120, 4, 24, 88, -63}));
        this.f798g = g.e(m.h(new byte[]{72, -11, -61, 106, -8, 7, -92, 106, 11, -27, -64, 106, -4, 18, -75}, new byte[]{37, -112, -80, 25, -103, 96, -63, 25}), new c2(this, 0));
        this.f799h = g.e(m.h(new byte[]{-94, 5, 87, 21, ByteCompanionObject.MIN_VALUE, -7, -15, -7, -31, 18, 65, 11, -114, -24, -15}, new byte[]{-49, 96, 36, 102, -31, -98, -108, -118}), new c2(this, 1));
        this.f800i = g.e(m.h(new byte[]{-34, 34, -86, 43, -71, 40, -125, 121, -99, 53, -68, 40, -76, 54, -56, 120, -42, 52, -84, 52, -84}, new byte[]{-77, 71, -39, 88, -40, 79, -26, 10}), new c2(this, 2));
        this.f802k = g.e(m.h(new byte[]{35, -78, 126, -117, 68, 83, 6, 26, 35, -18, 111, -105, 82, 80, 12, 6, 52, -91, 49, -120, 82, 80, 26, 9, 48, -91, 108}, new byte[]{87, -64, 31, -27, 55, 35, 105, 104}), new c2(this, 3));
        d2 d2Var = new d2(0, this);
        g.f6091b.add(d2Var);
        d2Var.a(TransportService.f857x.get());
        this.f801j = new d(1, d2Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final void onDestroy() {
        b(false);
        d dVar = this.f798g;
        if (dVar != null) {
            try {
                ai.onnxruntime.a.A(dVar);
            } catch (Exception unused) {
            }
        }
        this.f798g = null;
        d dVar2 = this.f799h;
        if (dVar2 != null) {
            try {
                ai.onnxruntime.a.A(dVar2);
            } catch (Exception unused2) {
            }
        }
        this.f799h = null;
        d dVar3 = this.f800i;
        if (dVar3 != null) {
            try {
                ai.onnxruntime.a.A(dVar3);
            } catch (Exception unused3) {
            }
        }
        this.f800i = null;
        d dVar4 = this.f801j;
        if (dVar4 != null) {
            try {
                ai.onnxruntime.a.A(dVar4);
            } catch (Exception unused4) {
            }
        }
        this.f801j = null;
        d dVar5 = this.f802k;
        if (dVar5 != null) {
            try {
                ai.onnxruntime.a.A(dVar5);
            } catch (Exception unused5) {
            }
        }
        this.f802k = null;
        h hVar = this.f797f;
        if (hVar != null) {
            hVar.close();
            this.f797f = null;
        }
        this.e.clear();
        a aVar = this.f796b;
        if (aVar != null) {
            aVar.a();
        }
        b1.m mVar = this.c;
        if (mVar != null) {
            LinearLayout linearLayout = (LinearLayout) mVar.d;
            mVar.e = null;
            linearLayout.removeAllViews();
        }
        g(this);
        n1.e = null;
        super.onDestroy();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i9, int i10) {
        g.d(this);
        this.f796b.a();
        n1.e = this;
        return 1;
    }
}
