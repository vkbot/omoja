package p173q0;

import ai.onnxruntime.AbstractC0074a;
import android.content.Context;
import android.util.Log;
import com.bumptech.glide.AbstractC1031d;
import com.example.navistart.MockGPS.MockGpsService;
import com.example.navistart.R;
import com.example.navistart.Transport.TransportService;
import com.google.protobuf.AbstractC1178q;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.json.JSONException;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.C1345d2;
import p047e0.C1440x1;
import p062f5.RunnableC1556j;
import p078h0.C1652b;
import p097j.C1897i;
import p132m0.C2271b3;
import p206u0.C3277a;
import p245y0.AbstractC3629g;
import p245y0.C3626d;
import p245y0.C3630h;
import p245y0.InterfaceC3627e;

/* JADX INFO: renamed from: q0.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3052p implements InterfaceC3044h {

    /* JADX INFO: renamed from: o */
    public static final String f8602o = AbstractC1387m.m2421h(new byte[]{55, 50, -75, -74, -127, 26, 70, 100, 55}, new byte[]{71, 90, -38, -40, -28, 69, 39, 20});

    /* JADX INFO: renamed from: p */
    public static final String f8603p = AbstractC1387m.m2421h(new byte[]{119, -17, -1, -94, 40, -120, 97, 107, 96, -9, -29, -97, 34, -68, 99, 120, 66}, new byte[]{39, -121, -112, -52, 77, -55, 17, 27});

    /* JADX INFO: renamed from: a */
    public final Context f8604a;

    /* JADX INFO: renamed from: b */
    public final MockGpsService f8605b;

    /* JADX INFO: renamed from: e */
    public volatile boolean f8608e;

    /* JADX INFO: renamed from: f */
    public volatile boolean f8609f;

    /* JADX INFO: renamed from: g */
    public volatile boolean f8610g;

    /* JADX INFO: renamed from: h */
    public volatile long f8611h;

    /* JADX INFO: renamed from: i */
    public volatile boolean f8612i;

    /* JADX INFO: renamed from: k */
    public C3626d f8614k;

    /* JADX INFO: renamed from: l */
    public C3626d f8615l;

    /* JADX INFO: renamed from: m */
    public C3626d f8616m;

    /* JADX INFO: renamed from: n */
    public C3630h f8617n;

    /* JADX INFO: renamed from: c */
    public final ExecutorService f8606c = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: d */
    public final AtomicBoolean f8607d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: j */
    public volatile boolean f8613j = true;

    public C3052p(MockGpsService mockGpsService, MockGpsService mockGpsService2) {
        this.f8604a = mockGpsService.getApplicationContext();
        this.f8605b = mockGpsService2;
    }

    /* JADX INFO: renamed from: c */
    public static Boolean m4884c() {
        StringBuilder sb = new StringBuilder();
        C3277a c3277aM2745o = C1652b.m2745o();
        byte[] bArr = AbstractC1387m.f3322j;
        String[] strArr = AbstractC1406p3.f3368a;
        AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
        AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
        C3277a c3277aM2745o2 = C1652b.m2745o();
        byte[] bArr2 = AbstractC1387m.f3318f;
        if (AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g)) {
            return Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{107}, new byte[]{91, 73, -28, 22, 64, 24, 37, -19}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    @Override // p173q0.InterfaceC3044h
    /* JADX INFO: renamed from: a */
    public final String mo4863a() {
        CopyOnWriteArrayList copyOnWriteArrayList = AbstractC3629g.f10774a;
        String str = TransportService.f1662y;
        return (str == null || str.trim().isEmpty()) ? this.f8604a.getString(R.string.transport_title) : str;
    }

    /* JADX INFO: renamed from: d */
    public final void m4885d(boolean z9) {
        C3630h c3630h = this.f8617n;
        if (c3630h == null || !this.f8609f) {
            return;
        }
        try {
            c3630h.m5807c(AbstractC1387m.m2421h(new byte[]{100, -29, -120, 52, -60, 117, -37, 33, 100, -65, -103, 40, -46, 118, -47, Base64.padSymbol, 115, -12, -57, Base64.padSymbol, -57, 118}, new byte[]{16, -111, -23, 90, -73, 5, -76, 83}), AbstractC1031d.m1275e(AbstractC1387m.m2421h(new byte[]{75, -33, 78}, new byte[]{44, -81, Base64.padSymbol, -61, -2, 103, 112, 119}), z9));
        } catch (RuntimeException | JSONException e) {
            Log.w(f8603p, AbstractC1387m.m2421h(new byte[]{-112, -119, -90, -54, -111, 29, -81, -81, -86, -57, -73, -35, -97, 20, -26, -88, -83, -57, ByteCompanionObject.MIN_VALUE, -8, -82, 88, -1, -87, -96, -108, -94, -58, -98, 29}, new byte[]{-59, -25, -57, -88, -3, 120, -113, -37}), e);
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m4886e() {
        C3630h c3630h = this.f8617n;
        if (c3630h == null || !this.f8609f) {
            return;
        }
        try {
            c3630h.m5807c(AbstractC1387m.m2421h(new byte[]{55, 6, -118, 50, 69, 11, -5, -6, 62, 18}, new byte[]{80, 118, -7, 28, 33, 110, -106, -101}), AbstractC1031d.m1275e(AbstractC1387m.m2421h(new byte[]{88, 124, -83}, new byte[]{63, 12, -34, -112, 67, 78, -13, 87}), this.f8613j));
        } catch (RuntimeException | JSONException e) {
            Log.w(f8603p, AbstractC1387m.m2421h(new byte[]{27, -102, -41, -18, 37, 54, 22, -47, 33, -44, -58, -7, 43, 63, 95, -42, 38, -44, -15, -36, 26, 115, 82, -64, 35, -107, -40, -24}, new byte[]{78, -12, -74, -116, 73, 83, 54, -91}), e);
        }
    }

    @Override // p173q0.InterfaceC3044h
    public final String getTitle() {
        return this.f8604a.getString(R.string.mock_gps_source_phone_app);
    }

    @Override // p173q0.InterfaceC3044h
    public final String getType() {
        return f8602o;
    }

    @Override // p173q0.InterfaceC3044h
    public final void start() {
        final int i10 = 0;
        final int i11 = 1;
        if (this.f8607d.compareAndSet(false, true)) {
            if (!this.f8608e) {
                try {
                    if (m4884c().booleanValue()) {
                        this.f8608e = true;
                    }
                } catch (Exception unused) {
                }
            }
            this.f8617n = AbstractC3629g.m5801a(this.f8604a, AbstractC1387m.m2421h(new byte[]{-29, 70, -11, -109, -30, 97, -31, 99, -25, 83}, new byte[]{-124, 54, -122, -66, -111, 14, -108, 17}));
            this.f8614k = AbstractC3629g.m5805e(AbstractC1387m.m2421h(new byte[]{-126, 80, 36, 97, 37, 46, 126, 44, -111, 73, 56, 33}, new byte[]{-27, 32, 87, 79, 73, 65, 29, 77}), new InterfaceC3627e(this) { // from class: q0.o

                /* JADX INFO: renamed from: b */
                public final /* synthetic */ C3052p f8601b;

                {
                    this.f8601b = this;
                }

                @Override // p245y0.InterfaceC3627e
                /* JADX INFO: renamed from: a */
                public final void mo2385a(String str) {
                    switch (i10) {
                        case 0:
                            C3052p c3052p = this.f8601b;
                            if (c3052p.f8607d.get()) {
                                try {
                                    C3053q c3053qM4888b = C3053q.m4888b(str);
                                    if (c3053qM4888b != null) {
                                        c3052p.f8611h = System.currentTimeMillis();
                                        c3052p.f8612i = false;
                                        MockGpsService mockGpsService = c3052p.f8605b;
                                        String string = c3052p.f8604a.getString(R.string.mock_gps_connected);
                                        String strMo4863a = c3052p.mo4863a();
                                        mockGpsService.getClass();
                                        MockGpsService.m1454j(string, strMo4863a, true);
                                        c3052p.f8605b.m1461i(c3053qM4888b);
                                    }
                                } catch (JSONException e) {
                                    Log.w(C3052p.f8603p, AbstractC1178q.m2078l(new byte[]{-62, -12, 48, 68, -123, 27, -101, 98, -13, -27, 59, 22, -123, 73, -67, 92, -45, -75, 36, 5, -110, 2, -97, 120, -70, -75}, new byte[]{ByteCompanionObject.MIN_VALUE, -107, 84, 100, -15, 105, -6, 12}, new StringBuilder(), str), e);
                                    return;
                                }
                                break;
                            }
                            break;
                        default:
                            C3052p c3052p2 = this.f8601b;
                            if (c3052p2.f8607d.get()) {
                                try {
                                    C2271b3 c2271b3M1273c = AbstractC1031d.m1273c(str);
                                    if (AbstractC1387m.m2421h(new byte[]{90, -55, -21}, new byte[]{Base64.padSymbol, -71, -104, ByteCompanionObject.MIN_VALUE, 23, -112, 112, -5}).equals(c2271b3M1273c.f5946b)) {
                                        c3052p2.f8610g = c2271b3M1273c.f5945a;
                                        if (c2271b3M1273c.f5945a) {
                                            c3052p2.m4885d(true);
                                            c3052p2.m4886e();
                                        }
                                        boolean z9 = c3052p2.f8609f && c3052p2.f8610g;
                                        MockGpsService mockGpsService2 = c3052p2.f8605b;
                                        Context context = c3052p2.f8604a;
                                        if (!z9) {
                                            String string2 = context.getString(R.string.mock_gps_connecting);
                                            String strMo4863a2 = c3052p2.mo4863a();
                                            mockGpsService2.getClass();
                                            MockGpsService.m1454j(string2, strMo4863a2, false);
                                            c3052p2.f8605b.m1460h();
                                        } else {
                                            String string3 = context.getString(R.string.mock_gps_connecting);
                                            String strMo4863a3 = c3052p2.mo4863a();
                                            mockGpsService2.getClass();
                                            MockGpsService.m1454j(string3, strMo4863a3, true);
                                        }
                                    }
                                } catch (RuntimeException e6) {
                                    e = e6;
                                    Log.w(C3052p.f8603p, AbstractC1387m.m2421h(new byte[]{33, 39, 63, -126, 93, -12, 43, 25, 19, 52, 62, -47, ByteCompanionObject.MAX_VALUE, -54, 27, 92, 67, 54, 58, -63, 113, -63, 12}, new byte[]{99, 70, 91, -94, 26, -92, 120, 57}), e);
                                } catch (JSONException e10) {
                                    e = e10;
                                    Log.w(C3052p.f8603p, AbstractC1387m.m2421h(new byte[]{33, 39, 63, -126, 93, -12, 43, 25, 19, 52, 62, -47, ByteCompanionObject.MAX_VALUE, -54, 27, 92, 67, 54, 58, -63, 113, -63, 12}, new byte[]{99, 70, 91, -94, 26, -92, 120, 57}), e);
                                }
                                break;
                            }
                            break;
                    }
                }
            });
            this.f8616m = AbstractC3629g.m5805e(AbstractC1387m.m2421h(new byte[]{-58, -34, -70, -106, 90, -68, -119, -91, -58, -126, -85, -118, 76, -65, -125, -71, -47, -55, -11, -97, 89, -65}, new byte[]{-78, -84, -37, -8, 41, -52, -26, -41}), new InterfaceC3627e(this) { // from class: q0.o

                /* JADX INFO: renamed from: b */
                public final /* synthetic */ C3052p f8601b;

                {
                    this.f8601b = this;
                }

                @Override // p245y0.InterfaceC3627e
                /* JADX INFO: renamed from: a */
                public final void mo2385a(String str) {
                    switch (i11) {
                        case 0:
                            C3052p c3052p = this.f8601b;
                            if (c3052p.f8607d.get()) {
                                try {
                                    C3053q c3053qM4888b = C3053q.m4888b(str);
                                    if (c3053qM4888b != null) {
                                        c3052p.f8611h = System.currentTimeMillis();
                                        c3052p.f8612i = false;
                                        MockGpsService mockGpsService = c3052p.f8605b;
                                        String string = c3052p.f8604a.getString(R.string.mock_gps_connected);
                                        String strMo4863a = c3052p.mo4863a();
                                        mockGpsService.getClass();
                                        MockGpsService.m1454j(string, strMo4863a, true);
                                        c3052p.f8605b.m1461i(c3053qM4888b);
                                    }
                                } catch (JSONException e) {
                                    Log.w(C3052p.f8603p, AbstractC1178q.m2078l(new byte[]{-62, -12, 48, 68, -123, 27, -101, 98, -13, -27, 59, 22, -123, 73, -67, 92, -45, -75, 36, 5, -110, 2, -97, 120, -70, -75}, new byte[]{ByteCompanionObject.MIN_VALUE, -107, 84, 100, -15, 105, -6, 12}, new StringBuilder(), str), e);
                                    return;
                                }
                                break;
                            }
                            break;
                        default:
                            C3052p c3052p2 = this.f8601b;
                            if (c3052p2.f8607d.get()) {
                                try {
                                    C2271b3 c2271b3M1273c = AbstractC1031d.m1273c(str);
                                    if (AbstractC1387m.m2421h(new byte[]{90, -55, -21}, new byte[]{Base64.padSymbol, -71, -104, ByteCompanionObject.MIN_VALUE, 23, -112, 112, -5}).equals(c2271b3M1273c.f5946b)) {
                                        c3052p2.f8610g = c2271b3M1273c.f5945a;
                                        if (c2271b3M1273c.f5945a) {
                                            c3052p2.m4885d(true);
                                            c3052p2.m4886e();
                                        }
                                        boolean z9 = c3052p2.f8609f && c3052p2.f8610g;
                                        MockGpsService mockGpsService2 = c3052p2.f8605b;
                                        Context context = c3052p2.f8604a;
                                        if (!z9) {
                                            String string2 = context.getString(R.string.mock_gps_connecting);
                                            String strMo4863a2 = c3052p2.mo4863a();
                                            mockGpsService2.getClass();
                                            MockGpsService.m1454j(string2, strMo4863a2, false);
                                            c3052p2.f8605b.m1460h();
                                        } else {
                                            String string3 = context.getString(R.string.mock_gps_connecting);
                                            String strMo4863a3 = c3052p2.mo4863a();
                                            mockGpsService2.getClass();
                                            MockGpsService.m1454j(string3, strMo4863a3, true);
                                        }
                                    }
                                } catch (RuntimeException e6) {
                                    e = e6;
                                    Log.w(C3052p.f8603p, AbstractC1387m.m2421h(new byte[]{33, 39, 63, -126, 93, -12, 43, 25, 19, 52, 62, -47, ByteCompanionObject.MAX_VALUE, -54, 27, 92, 67, 54, 58, -63, 113, -63, 12}, new byte[]{99, 70, 91, -94, 26, -92, 120, 57}), e);
                                } catch (JSONException e10) {
                                    e = e10;
                                    Log.w(C3052p.f8603p, AbstractC1387m.m2421h(new byte[]{33, 39, 63, -126, 93, -12, 43, 25, 19, 52, 62, -47, ByteCompanionObject.MAX_VALUE, -54, 27, 92, 67, 54, 58, -63, 113, -63, 12}, new byte[]{99, 70, 91, -94, 26, -92, 120, 57}), e);
                                }
                                break;
                            }
                            break;
                    }
                }
            });
            C1345d2 c1345d2 = new C1345d2(1, this);
            AbstractC3629g.f10775b.add(c1345d2);
            c1345d2.m2397a(TransportService.f1661x.get());
            this.f8615l = new C3626d(1, c1345d2);
            this.f8606c.execute(new RunnableC1556j(12, this));
        }
    }

    @Override // p173q0.InterfaceC3044h
    public final void stop() {
        this.f8607d.set(false);
        C3626d c3626d = this.f8614k;
        if (c3626d != null) {
            try {
                AbstractC0074a.m146A(c3626d);
            } catch (Exception unused) {
            }
        }
        this.f8614k = null;
        C3626d c3626d2 = this.f8615l;
        if (c3626d2 != null) {
            try {
                AbstractC0074a.m146A(c3626d2);
            } catch (Exception unused2) {
            }
        }
        this.f8615l = null;
        m4885d(false);
        C3626d c3626d3 = this.f8616m;
        if (c3626d3 != null) {
            try {
                AbstractC0074a.m146A(c3626d3);
            } catch (Exception unused3) {
            }
        }
        this.f8616m = null;
        C3630h c3630h = this.f8617n;
        if (c3630h != null) {
            c3630h.close();
            this.f8617n = null;
        }
        this.f8606c.shutdownNow();
    }

    @Override // p173q0.InterfaceC3044h
    /* JADX INFO: renamed from: b */
    public final void mo4864b(C1897i c1897i) {
    }
}
