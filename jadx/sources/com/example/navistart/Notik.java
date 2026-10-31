package com.example.navistart;

import ai.onnxruntime.AbstractC0074a;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import android.widget.LinearLayout;
import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.AbstractC1031d;
import com.example.navistart.Notik;
import com.example.navistart.Transport.TransportService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.json.JSONException;
import org.json.JSONObject;
import p002a1.RunnableC0003a;
import p016b1.C0872m;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1434w;
import p047e0.C1345d2;
import p067g0.C1599a;
import p078h0.C1652b;
import p132m0.C2271b3;
import p132m0.C2329n1;
import p245y0.AbstractC3629g;
import p245y0.C3626d;
import p245y0.C3630h;
import p245y0.InterfaceC3627e;
import ru.transfer.MessageData;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class Notik extends Service {

    /* JADX INFO: renamed from: l */
    public static final ArrayList f1486l = new ArrayList();

    /* JADX INFO: renamed from: m */
    public static final String f1487m = AbstractC1387m.m2421h(new byte[]{-43, 77, -99, -19, -127, 75, -18, 24, -1, 98, -121, -27, -104, 69, -17, 8, -44, 77, -127, -19, -101, 80, -34, 3, -7, 114, -100, -23, -121, 80}, new byte[]{-105, 33, -24, -120, -11, 36, -127, 108});

    /* JADX INFO: renamed from: n */
    public static boolean f1488n;

    /* JADX INFO: renamed from: b */
    public C1599a f1489b;

    /* JADX INFO: renamed from: c */
    public C0872m f1490c;

    /* JADX INFO: renamed from: d */
    public final ScheduledThreadPoolExecutor f1491d = AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{25, 125, -22, -47, -106}, new byte[]{87, 18, -98, -72, -3, 67, -6, 47}));

    /* JADX INFO: renamed from: e */
    public final ConcurrentHashMap f1492e;

    /* JADX INFO: renamed from: f */
    public C3630h f1493f;

    /* JADX INFO: renamed from: g */
    public C3626d f1494g;

    /* JADX INFO: renamed from: h */
    public C3626d f1495h;

    /* JADX INFO: renamed from: i */
    public C3626d f1496i;

    /* JADX INFO: renamed from: j */
    public C3626d f1497j;

    /* JADX INFO: renamed from: k */
    public C3626d f1498k;

    static {
        AbstractC1387m.m2421h(new byte[]{34, 101, -109, -15, -7, -84, -120, 47, 8, 74, -119, -7, -32, -94, -119, 63, 35, 101, -113, -15, -29, -73, -72, 25, 12, 124, -125, -32, -30, -84, -109, 51, 36, 108, -112, -3, -18, -90}, new byte[]{96, 9, -26, -108, -115, -61, -25, 91});
        f1488n = true;
    }

    public Notik() {
        AbstractC1434w.m2481b(100L, AbstractC1387m.m2421h(new byte[]{113, 111, -107, 14, -119, -7, -68, -28, 124, 75}, new byte[]{63, 0, -31, 103, -30, -90, -16, -85}));
        new AtomicBoolean(false);
        this.f1492e = new ConcurrentHashMap();
    }

    /* JADX INFO: renamed from: f */
    public static void m1505f(Context context, List list) {
        Bundle bundle = new Bundle();
        bundle.putSerializable(AbstractC1387m.m2421h(new byte[]{-56, -94, 22, -55, 36, 94, 9, -45, -60, -77, 4}, new byte[]{-91, -57, 101, -70, 69, 57, 108, -105}), new ArrayList(list));
        bundle.putBoolean(AbstractC1387m.m2421h(new byte[]{74, 58, -15, 85, 59, -75, -122, -18, 119, 56, -7, 75, 53, -78, -73, -30, 65, 63, -13, 73}, new byte[]{40, 91, -106, 39, 90, -64, -24, -118}), true);
        ActivityC1081W.m1610u(context, C2329n1.class, bundle);
    }

    /* JADX INFO: renamed from: g */
    public static void m1506g(Context context) {
        if (C1652b.m2745o().loadBoolean(f1487m, false) && f1488n) {
            context.startService(new Intent(context.getApplicationContext(), (Class<?>) Notik.class));
        }
    }

    /* JADX INFO: renamed from: a */
    public final synchronized void m1507a(MessageData messageData) {
        try {
            m1511e(messageData);
            ArrayList arrayList = f1486l;
            if (arrayList.size() >= 20) {
                arrayList.remove(0);
            }
            arrayList.add(messageData);
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m1508b(boolean z9) {
        C3630h c3630h = this.f1493f;
        if (c3630h != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = AbstractC3629g.f10774a;
            if (TransportService.f1661x.get()) {
                try {
                    c3630h.m5807c(AbstractC1387m.m2421h(new byte[]{-81, -34, 43, -56, 51, 7, 90, -16, -81, -126, 58, -44, 37, 4, 80, -20, -72, -55, 100, -53, 37, 4, 70, -29, -68, -55, 57}, new byte[]{-37, -84, 74, -90, 64, 119, 53, -126}), AbstractC1031d.m1275e(AbstractC1387m.m2421h(new byte[]{-121, -99, -81, 19, 16, 16, 76, 54}, new byte[]{-22, -8, -36, 96, 113, 119, 41, 69}), z9));
                } catch (RuntimeException | JSONException e) {
                    Log.w(AbstractC1387m.m2421h(new byte[]{-74, 86, 10, -26, 8}, new byte[]{-8, 57, 126, -113, 99, -114, -8, 7}), AbstractC1387m.m2421h(new byte[]{41, -122, 17, -66, -56, -24, -59, 117, 19, -56, 0, -87, -58, -31, -116, 114, 20, -56, 29, -71, -41, -2, -124, 102, 25, -101, 80, -84, -42, -24, -106, 100, 18, -117, 21}, new byte[]{124, -24, 112, -36, -92, -115, -27, 1}), e);
                }
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public final synchronized MessageData m1509c(String str) {
        ArrayList arrayList = f1486l;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            MessageData messageData = (MessageData) obj;
            if (messageData.getKey().equals(str)) {
                return messageData;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: d */
    public final void m1510d(MessageData messageData) {
        Log.d(AbstractC1387m.m2421h(new byte[]{-101, -45, -121, -40, 5}, new byte[]{-43, -68, -13, -79, 110, -11, -46, -63}), AbstractC1387m.m2421h(new byte[]{119, -1, -95, 122, 97, 108, 80, 56, 91, -18, -77, 51, 32}, new byte[]{58, -102, -46, 9, 0, 11, 53, 124}) + messageData.getKey() + AbstractC1387m.m2421h(new byte[]{87, 116, -102}, new byte[]{119, 89, -70, 68, -121, 107, 118, 44}) + messageData.gethasReply());
        m1507a(messageData);
        new Handler(Looper.getMainLooper()).post(new RunnableC0003a(28, this, messageData));
    }

    /* JADX INFO: renamed from: e */
    public final synchronized void m1511e(MessageData messageData) {
        Iterator it = f1486l.iterator();
        while (it.hasNext()) {
            if (((MessageData) it.next()).getKey().equals(messageData.getKey())) {
                it.remove();
                break;
            }
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        this.f1490c = new C0872m(this, this);
        this.f1489b = new C1599a();
        this.f1493f = AbstractC3629g.m5801a(this, AbstractC1387m.m2421h(new byte[]{-3, 96, 0, -5, 101, ByteCompanionObject.MAX_VALUE, Base64.padSymbol, -78}, new byte[]{-112, 5, 115, -120, 4, 24, 88, -63}));
        final int i10 = 0;
        this.f1494g = AbstractC3629g.m5805e(AbstractC1387m.m2421h(new byte[]{72, -11, -61, 106, -8, 7, -92, 106, 11, -27, -64, 106, -4, 18, -75}, new byte[]{37, -112, -80, 25, -103, 96, -63, 25}), new InterfaceC3627e(this) { // from class: e0.c2

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ Notik f3194b;

            {
                this.f3194b = this;
            }

            @Override // p245y0.InterfaceC3627e
            /* JADX INFO: renamed from: a */
            public final void mo2385a(String str) {
                int i11 = i10;
                Notik notik = this.f3194b;
                switch (i11) {
                    case 0:
                        ArrayList arrayList = Notik.f1486l;
                        try {
                            MessageData messageDataM1255g = AbstractC1030c.m1255g(str);
                            notik.m1510d(messageDataM1255g);
                            C3630h c3630h = notik.f1493f;
                            if (c3630h != null) {
                                c3630h.m5808y(AbstractC1387m.m2421h(new byte[]{-58, -42, -40, 21, 85, -90, 63, -67, -123, -63, -50, 5, 81, -88, 44, -85, -49}, new byte[]{-85, -77, -85, 102, 52, -63, 90, -50}), new JSONObject().put(AbstractC1387m.m2421h(new byte[]{84, 77, -1}, new byte[]{63, 40, -122, 18, -43, -127, 67, -51}), messageDataM1255g.getKey()).toString());
                            }
                        } catch (RuntimeException | JSONException e) {
                            Log.w(AbstractC1387m.m2421h(new byte[]{46, 11, -121, -77, 14}, new byte[]{96, 100, -13, -38, 101, 54, 99, -81}), AbstractC1387m.m2421h(new byte[]{57, -100, -19, Base64.padSymbol, 73, 100, -60, 48, 8, -115, -26, 111, 73, 54, -56, 59, 8, -114, -24, 122, 88}, new byte[]{123, -3, -119, 29, Base64.padSymbol, 22, -91, 94}), e);
                            return;
                        }
                        break;
                    case 1:
                        ArrayList arrayList2 = Notik.f1486l;
                        try {
                            String string = new JSONObject(str).getString(AbstractC1387m.m2421h(new byte[]{-84, -81, -76}, new byte[]{-57, -54, -51, -35, 124, 70, 44, -64}));
                            MessageData messageDataM1509c = notik.m1509c(string);
                            if (messageDataM1509c != null) {
                                notik.m1511e(messageDataM1509c);
                            }
                            notik.f1492e.remove(string);
                        } catch (RuntimeException e6) {
                            e = e6;
                            Log.w(AbstractC1387m.m2421h(new byte[]{30, 79, -88, 93, -8}, new byte[]{80, 32, -36, 52, -109, -33, -70, 121}), AbstractC1387m.m2421h(new byte[]{79, 9, 126, 76, 44, -71, 6, -94, 126, 24, 117, 30, 44, -21, 21, -87, 96, 7, 108, 9}, new byte[]{13, 104, 26, 108, 88, -53, 103, -52}), e);
                            return;
                        } catch (JSONException e10) {
                            e = e10;
                            Log.w(AbstractC1387m.m2421h(new byte[]{30, 79, -88, 93, -8}, new byte[]{80, 32, -36, 52, -109, -33, -70, 121}), AbstractC1387m.m2421h(new byte[]{79, 9, 126, 76, 44, -71, 6, -94, 126, 24, 117, 30, 44, -21, 21, -87, 96, 7, 108, 9}, new byte[]{13, 104, 26, 108, 88, -53, 103, -52}), e);
                            return;
                        }
                        break;
                    case 2:
                        ArrayList arrayList3 = Notik.f1486l;
                        try {
                            C2271b3 c2271b3M1256h = AbstractC1030c.m1256h(str);
                            MessageData messageData = (MessageData) notik.f1492e.remove(c2271b3M1256h.f5946b);
                            if (!c2271b3M1256h.f5945a && messageData != null) {
                                notik.m1507a(messageData);
                                break;
                            }
                        } catch (RuntimeException | JSONException e11) {
                            Log.w(AbstractC1387m.m2421h(new byte[]{13, 48, -98, 25, -96}, new byte[]{67, 95, -22, 112, -53, -66, 72, -117}), AbstractC1387m.m2421h(new byte[]{15, -35, 15, 9, -83, -92, -17, 88, 52, -100, 25, 76, -84, -76, -13, 64}, new byte[]{77, -68, 107, 41, -33, -63, -97, 52}), e11);
                            return;
                        }
                        break;
                    default:
                        ArrayList arrayList4 = Notik.f1486l;
                        try {
                            C2271b3 c2271b3M1273c = AbstractC1031d.m1273c(str);
                            if (AbstractC1387m.m2421h(new byte[]{-76, 126, 46, 119, -19, 58, -27, 43}, new byte[]{-39, 27, 93, 4, -116, 93, ByteCompanionObject.MIN_VALUE, 88}).equals(c2271b3M1273c.f5946b) && c2271b3M1273c.f5945a) {
                                notik.m1508b(true);
                                break;
                            }
                        } catch (RuntimeException | JSONException e12) {
                            Log.w(AbstractC1387m.m2421h(new byte[]{28, 33, -113, 15, -125}, new byte[]{82, 78, -5, 102, -24, 30, 25, -39}), AbstractC1387m.m2421h(new byte[]{-122, 101, 97, -92, 30, 83, 76, 51, -91, 99, 96, -9, 83, 70, 77, 37, -73, 97, 107, -25, 22, 22, 79, 33, -89, 111, 96, -16}, new byte[]{-60, 4, 5, -124, 115, 54, 63, 64}), e12);
                        }
                        break;
                }
            }
        });
        final int i11 = 1;
        this.f1495h = AbstractC3629g.m5805e(AbstractC1387m.m2421h(new byte[]{-94, 5, 87, 21, ByteCompanionObject.MIN_VALUE, -7, -15, -7, -31, 18, 65, 11, -114, -24, -15}, new byte[]{-49, 96, 36, 102, -31, -98, -108, -118}), new InterfaceC3627e(this) { // from class: e0.c2

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ Notik f3194b;

            {
                this.f3194b = this;
            }

            @Override // p245y0.InterfaceC3627e
            /* JADX INFO: renamed from: a */
            public final void mo2385a(String str) {
                int i12 = i11;
                Notik notik = this.f3194b;
                switch (i12) {
                    case 0:
                        ArrayList arrayList = Notik.f1486l;
                        try {
                            MessageData messageDataM1255g = AbstractC1030c.m1255g(str);
                            notik.m1510d(messageDataM1255g);
                            C3630h c3630h = notik.f1493f;
                            if (c3630h != null) {
                                c3630h.m5808y(AbstractC1387m.m2421h(new byte[]{-58, -42, -40, 21, 85, -90, 63, -67, -123, -63, -50, 5, 81, -88, 44, -85, -49}, new byte[]{-85, -77, -85, 102, 52, -63, 90, -50}), new JSONObject().put(AbstractC1387m.m2421h(new byte[]{84, 77, -1}, new byte[]{63, 40, -122, 18, -43, -127, 67, -51}), messageDataM1255g.getKey()).toString());
                            }
                        } catch (RuntimeException | JSONException e) {
                            Log.w(AbstractC1387m.m2421h(new byte[]{46, 11, -121, -77, 14}, new byte[]{96, 100, -13, -38, 101, 54, 99, -81}), AbstractC1387m.m2421h(new byte[]{57, -100, -19, Base64.padSymbol, 73, 100, -60, 48, 8, -115, -26, 111, 73, 54, -56, 59, 8, -114, -24, 122, 88}, new byte[]{123, -3, -119, 29, Base64.padSymbol, 22, -91, 94}), e);
                            return;
                        }
                        break;
                    case 1:
                        ArrayList arrayList2 = Notik.f1486l;
                        try {
                            String string = new JSONObject(str).getString(AbstractC1387m.m2421h(new byte[]{-84, -81, -76}, new byte[]{-57, -54, -51, -35, 124, 70, 44, -64}));
                            MessageData messageDataM1509c = notik.m1509c(string);
                            if (messageDataM1509c != null) {
                                notik.m1511e(messageDataM1509c);
                            }
                            notik.f1492e.remove(string);
                        } catch (RuntimeException e6) {
                            e = e6;
                            Log.w(AbstractC1387m.m2421h(new byte[]{30, 79, -88, 93, -8}, new byte[]{80, 32, -36, 52, -109, -33, -70, 121}), AbstractC1387m.m2421h(new byte[]{79, 9, 126, 76, 44, -71, 6, -94, 126, 24, 117, 30, 44, -21, 21, -87, 96, 7, 108, 9}, new byte[]{13, 104, 26, 108, 88, -53, 103, -52}), e);
                            return;
                        } catch (JSONException e10) {
                            e = e10;
                            Log.w(AbstractC1387m.m2421h(new byte[]{30, 79, -88, 93, -8}, new byte[]{80, 32, -36, 52, -109, -33, -70, 121}), AbstractC1387m.m2421h(new byte[]{79, 9, 126, 76, 44, -71, 6, -94, 126, 24, 117, 30, 44, -21, 21, -87, 96, 7, 108, 9}, new byte[]{13, 104, 26, 108, 88, -53, 103, -52}), e);
                            return;
                        }
                        break;
                    case 2:
                        ArrayList arrayList3 = Notik.f1486l;
                        try {
                            C2271b3 c2271b3M1256h = AbstractC1030c.m1256h(str);
                            MessageData messageData = (MessageData) notik.f1492e.remove(c2271b3M1256h.f5946b);
                            if (!c2271b3M1256h.f5945a && messageData != null) {
                                notik.m1507a(messageData);
                                break;
                            }
                        } catch (RuntimeException | JSONException e11) {
                            Log.w(AbstractC1387m.m2421h(new byte[]{13, 48, -98, 25, -96}, new byte[]{67, 95, -22, 112, -53, -66, 72, -117}), AbstractC1387m.m2421h(new byte[]{15, -35, 15, 9, -83, -92, -17, 88, 52, -100, 25, 76, -84, -76, -13, 64}, new byte[]{77, -68, 107, 41, -33, -63, -97, 52}), e11);
                            return;
                        }
                        break;
                    default:
                        ArrayList arrayList4 = Notik.f1486l;
                        try {
                            C2271b3 c2271b3M1273c = AbstractC1031d.m1273c(str);
                            if (AbstractC1387m.m2421h(new byte[]{-76, 126, 46, 119, -19, 58, -27, 43}, new byte[]{-39, 27, 93, 4, -116, 93, ByteCompanionObject.MIN_VALUE, 88}).equals(c2271b3M1273c.f5946b) && c2271b3M1273c.f5945a) {
                                notik.m1508b(true);
                                break;
                            }
                        } catch (RuntimeException | JSONException e12) {
                            Log.w(AbstractC1387m.m2421h(new byte[]{28, 33, -113, 15, -125}, new byte[]{82, 78, -5, 102, -24, 30, 25, -39}), AbstractC1387m.m2421h(new byte[]{-122, 101, 97, -92, 30, 83, 76, 51, -91, 99, 96, -9, 83, 70, 77, 37, -73, 97, 107, -25, 22, 22, 79, 33, -89, 111, 96, -16}, new byte[]{-60, 4, 5, -124, 115, 54, 63, 64}), e12);
                        }
                        break;
                }
            }
        });
        final int i12 = 2;
        this.f1496i = AbstractC3629g.m5805e(AbstractC1387m.m2421h(new byte[]{-34, 34, -86, 43, -71, 40, -125, 121, -99, 53, -68, 40, -76, 54, -56, 120, -42, 52, -84, 52, -84}, new byte[]{-77, 71, -39, 88, -40, 79, -26, 10}), new InterfaceC3627e(this) { // from class: e0.c2

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ Notik f3194b;

            {
                this.f3194b = this;
            }

            @Override // p245y0.InterfaceC3627e
            /* JADX INFO: renamed from: a */
            public final void mo2385a(String str) {
                int i13 = i12;
                Notik notik = this.f3194b;
                switch (i13) {
                    case 0:
                        ArrayList arrayList = Notik.f1486l;
                        try {
                            MessageData messageDataM1255g = AbstractC1030c.m1255g(str);
                            notik.m1510d(messageDataM1255g);
                            C3630h c3630h = notik.f1493f;
                            if (c3630h != null) {
                                c3630h.m5808y(AbstractC1387m.m2421h(new byte[]{-58, -42, -40, 21, 85, -90, 63, -67, -123, -63, -50, 5, 81, -88, 44, -85, -49}, new byte[]{-85, -77, -85, 102, 52, -63, 90, -50}), new JSONObject().put(AbstractC1387m.m2421h(new byte[]{84, 77, -1}, new byte[]{63, 40, -122, 18, -43, -127, 67, -51}), messageDataM1255g.getKey()).toString());
                            }
                        } catch (RuntimeException | JSONException e) {
                            Log.w(AbstractC1387m.m2421h(new byte[]{46, 11, -121, -77, 14}, new byte[]{96, 100, -13, -38, 101, 54, 99, -81}), AbstractC1387m.m2421h(new byte[]{57, -100, -19, Base64.padSymbol, 73, 100, -60, 48, 8, -115, -26, 111, 73, 54, -56, 59, 8, -114, -24, 122, 88}, new byte[]{123, -3, -119, 29, Base64.padSymbol, 22, -91, 94}), e);
                            return;
                        }
                        break;
                    case 1:
                        ArrayList arrayList2 = Notik.f1486l;
                        try {
                            String string = new JSONObject(str).getString(AbstractC1387m.m2421h(new byte[]{-84, -81, -76}, new byte[]{-57, -54, -51, -35, 124, 70, 44, -64}));
                            MessageData messageDataM1509c = notik.m1509c(string);
                            if (messageDataM1509c != null) {
                                notik.m1511e(messageDataM1509c);
                            }
                            notik.f1492e.remove(string);
                        } catch (RuntimeException e6) {
                            e = e6;
                            Log.w(AbstractC1387m.m2421h(new byte[]{30, 79, -88, 93, -8}, new byte[]{80, 32, -36, 52, -109, -33, -70, 121}), AbstractC1387m.m2421h(new byte[]{79, 9, 126, 76, 44, -71, 6, -94, 126, 24, 117, 30, 44, -21, 21, -87, 96, 7, 108, 9}, new byte[]{13, 104, 26, 108, 88, -53, 103, -52}), e);
                            return;
                        } catch (JSONException e10) {
                            e = e10;
                            Log.w(AbstractC1387m.m2421h(new byte[]{30, 79, -88, 93, -8}, new byte[]{80, 32, -36, 52, -109, -33, -70, 121}), AbstractC1387m.m2421h(new byte[]{79, 9, 126, 76, 44, -71, 6, -94, 126, 24, 117, 30, 44, -21, 21, -87, 96, 7, 108, 9}, new byte[]{13, 104, 26, 108, 88, -53, 103, -52}), e);
                            return;
                        }
                        break;
                    case 2:
                        ArrayList arrayList3 = Notik.f1486l;
                        try {
                            C2271b3 c2271b3M1256h = AbstractC1030c.m1256h(str);
                            MessageData messageData = (MessageData) notik.f1492e.remove(c2271b3M1256h.f5946b);
                            if (!c2271b3M1256h.f5945a && messageData != null) {
                                notik.m1507a(messageData);
                                break;
                            }
                        } catch (RuntimeException | JSONException e11) {
                            Log.w(AbstractC1387m.m2421h(new byte[]{13, 48, -98, 25, -96}, new byte[]{67, 95, -22, 112, -53, -66, 72, -117}), AbstractC1387m.m2421h(new byte[]{15, -35, 15, 9, -83, -92, -17, 88, 52, -100, 25, 76, -84, -76, -13, 64}, new byte[]{77, -68, 107, 41, -33, -63, -97, 52}), e11);
                            return;
                        }
                        break;
                    default:
                        ArrayList arrayList4 = Notik.f1486l;
                        try {
                            C2271b3 c2271b3M1273c = AbstractC1031d.m1273c(str);
                            if (AbstractC1387m.m2421h(new byte[]{-76, 126, 46, 119, -19, 58, -27, 43}, new byte[]{-39, 27, 93, 4, -116, 93, ByteCompanionObject.MIN_VALUE, 88}).equals(c2271b3M1273c.f5946b) && c2271b3M1273c.f5945a) {
                                notik.m1508b(true);
                                break;
                            }
                        } catch (RuntimeException | JSONException e12) {
                            Log.w(AbstractC1387m.m2421h(new byte[]{28, 33, -113, 15, -125}, new byte[]{82, 78, -5, 102, -24, 30, 25, -39}), AbstractC1387m.m2421h(new byte[]{-122, 101, 97, -92, 30, 83, 76, 51, -91, 99, 96, -9, 83, 70, 77, 37, -73, 97, 107, -25, 22, 22, 79, 33, -89, 111, 96, -16}, new byte[]{-60, 4, 5, -124, 115, 54, 63, 64}), e12);
                        }
                        break;
                }
            }
        });
        final int i13 = 3;
        this.f1498k = AbstractC3629g.m5805e(AbstractC1387m.m2421h(new byte[]{35, -78, 126, -117, 68, 83, 6, 26, 35, -18, 111, -105, 82, 80, 12, 6, 52, -91, 49, -120, 82, 80, 26, 9, 48, -91, 108}, new byte[]{87, -64, 31, -27, 55, 35, 105, 104}), new InterfaceC3627e(this) { // from class: e0.c2

            /* JADX INFO: renamed from: b */
            public final /* synthetic */ Notik f3194b;

            {
                this.f3194b = this;
            }

            @Override // p245y0.InterfaceC3627e
            /* JADX INFO: renamed from: a */
            public final void mo2385a(String str) {
                int i14 = i13;
                Notik notik = this.f3194b;
                switch (i14) {
                    case 0:
                        ArrayList arrayList = Notik.f1486l;
                        try {
                            MessageData messageDataM1255g = AbstractC1030c.m1255g(str);
                            notik.m1510d(messageDataM1255g);
                            C3630h c3630h = notik.f1493f;
                            if (c3630h != null) {
                                c3630h.m5808y(AbstractC1387m.m2421h(new byte[]{-58, -42, -40, 21, 85, -90, 63, -67, -123, -63, -50, 5, 81, -88, 44, -85, -49}, new byte[]{-85, -77, -85, 102, 52, -63, 90, -50}), new JSONObject().put(AbstractC1387m.m2421h(new byte[]{84, 77, -1}, new byte[]{63, 40, -122, 18, -43, -127, 67, -51}), messageDataM1255g.getKey()).toString());
                            }
                        } catch (RuntimeException | JSONException e) {
                            Log.w(AbstractC1387m.m2421h(new byte[]{46, 11, -121, -77, 14}, new byte[]{96, 100, -13, -38, 101, 54, 99, -81}), AbstractC1387m.m2421h(new byte[]{57, -100, -19, Base64.padSymbol, 73, 100, -60, 48, 8, -115, -26, 111, 73, 54, -56, 59, 8, -114, -24, 122, 88}, new byte[]{123, -3, -119, 29, Base64.padSymbol, 22, -91, 94}), e);
                            return;
                        }
                        break;
                    case 1:
                        ArrayList arrayList2 = Notik.f1486l;
                        try {
                            String string = new JSONObject(str).getString(AbstractC1387m.m2421h(new byte[]{-84, -81, -76}, new byte[]{-57, -54, -51, -35, 124, 70, 44, -64}));
                            MessageData messageDataM1509c = notik.m1509c(string);
                            if (messageDataM1509c != null) {
                                notik.m1511e(messageDataM1509c);
                            }
                            notik.f1492e.remove(string);
                        } catch (RuntimeException e6) {
                            e = e6;
                            Log.w(AbstractC1387m.m2421h(new byte[]{30, 79, -88, 93, -8}, new byte[]{80, 32, -36, 52, -109, -33, -70, 121}), AbstractC1387m.m2421h(new byte[]{79, 9, 126, 76, 44, -71, 6, -94, 126, 24, 117, 30, 44, -21, 21, -87, 96, 7, 108, 9}, new byte[]{13, 104, 26, 108, 88, -53, 103, -52}), e);
                            return;
                        } catch (JSONException e10) {
                            e = e10;
                            Log.w(AbstractC1387m.m2421h(new byte[]{30, 79, -88, 93, -8}, new byte[]{80, 32, -36, 52, -109, -33, -70, 121}), AbstractC1387m.m2421h(new byte[]{79, 9, 126, 76, 44, -71, 6, -94, 126, 24, 117, 30, 44, -21, 21, -87, 96, 7, 108, 9}, new byte[]{13, 104, 26, 108, 88, -53, 103, -52}), e);
                            return;
                        }
                        break;
                    case 2:
                        ArrayList arrayList3 = Notik.f1486l;
                        try {
                            C2271b3 c2271b3M1256h = AbstractC1030c.m1256h(str);
                            MessageData messageData = (MessageData) notik.f1492e.remove(c2271b3M1256h.f5946b);
                            if (!c2271b3M1256h.f5945a && messageData != null) {
                                notik.m1507a(messageData);
                                break;
                            }
                        } catch (RuntimeException | JSONException e11) {
                            Log.w(AbstractC1387m.m2421h(new byte[]{13, 48, -98, 25, -96}, new byte[]{67, 95, -22, 112, -53, -66, 72, -117}), AbstractC1387m.m2421h(new byte[]{15, -35, 15, 9, -83, -92, -17, 88, 52, -100, 25, 76, -84, -76, -13, 64}, new byte[]{77, -68, 107, 41, -33, -63, -97, 52}), e11);
                            return;
                        }
                        break;
                    default:
                        ArrayList arrayList4 = Notik.f1486l;
                        try {
                            C2271b3 c2271b3M1273c = AbstractC1031d.m1273c(str);
                            if (AbstractC1387m.m2421h(new byte[]{-76, 126, 46, 119, -19, 58, -27, 43}, new byte[]{-39, 27, 93, 4, -116, 93, ByteCompanionObject.MIN_VALUE, 88}).equals(c2271b3M1273c.f5946b) && c2271b3M1273c.f5945a) {
                                notik.m1508b(true);
                                break;
                            }
                        } catch (RuntimeException | JSONException e12) {
                            Log.w(AbstractC1387m.m2421h(new byte[]{28, 33, -113, 15, -125}, new byte[]{82, 78, -5, 102, -24, 30, 25, -39}), AbstractC1387m.m2421h(new byte[]{-122, 101, 97, -92, 30, 83, 76, 51, -91, 99, 96, -9, 83, 70, 77, 37, -73, 97, 107, -25, 22, 22, 79, 33, -89, 111, 96, -16}, new byte[]{-60, 4, 5, -124, 115, 54, 63, 64}), e12);
                        }
                        break;
                }
            }
        });
        C1345d2 c1345d2 = new C1345d2(0, this);
        AbstractC3629g.f10775b.add(c1345d2);
        c1345d2.m2397a(TransportService.f1661x.get());
        this.f1497j = new C3626d(1, c1345d2);
    }

    @Override // android.app.Service
    public final void onDestroy() {
        m1508b(false);
        C3626d c3626d = this.f1494g;
        if (c3626d != null) {
            try {
                AbstractC0074a.m146A(c3626d);
            } catch (Exception unused) {
            }
        }
        this.f1494g = null;
        C3626d c3626d2 = this.f1495h;
        if (c3626d2 != null) {
            try {
                AbstractC0074a.m146A(c3626d2);
            } catch (Exception unused2) {
            }
        }
        this.f1495h = null;
        C3626d c3626d3 = this.f1496i;
        if (c3626d3 != null) {
            try {
                AbstractC0074a.m146A(c3626d3);
            } catch (Exception unused3) {
            }
        }
        this.f1496i = null;
        C3626d c3626d4 = this.f1497j;
        if (c3626d4 != null) {
            try {
                AbstractC0074a.m146A(c3626d4);
            } catch (Exception unused4) {
            }
        }
        this.f1497j = null;
        C3626d c3626d5 = this.f1498k;
        if (c3626d5 != null) {
            try {
                AbstractC0074a.m146A(c3626d5);
            } catch (Exception unused5) {
            }
        }
        this.f1498k = null;
        C3630h c3630h = this.f1493f;
        if (c3630h != null) {
            c3630h.close();
            this.f1493f = null;
        }
        this.f1492e.clear();
        C1599a c1599a = this.f1489b;
        if (c1599a != null) {
            c1599a.m2686a();
        }
        C0872m c0872m = this.f1490c;
        if (c0872m != null) {
            LinearLayout linearLayout = (LinearLayout) c0872m.f602d;
            c0872m.f603e = null;
            linearLayout.removeAllViews();
        }
        m1506g(this);
        C2329n1.f6247e = null;
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i10, int i11) {
        AbstractC3629g.m5804d(this);
        this.f1489b.m2686a();
        C2329n1.f6247e = this;
        return 1;
    }
}
