package androidx.fragment.app;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.os.CancellationSignal;
import androidx.transition.C0802a;
import com.example.navistart.TestSpaceActivity;
import com.example.navistart.cores.LCRI;
import com.example.navistart.cores.PFInter;
import com.google.firebase.inappmessaging.FirebaseInAppMessagingRegistrar;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import kotlin.jvm.functions.Function2;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.internal.Util;
import org.apache.commons.net.nntp.NNTPReply;
import org.apache.commons.p161io.filefilter.MagicNumberFileFilter;
import org.apache.commons.p161io.function.IOFunction;
import org.apache.commons.p161io.function.IOSupplier;
import org.apache.commons.p161io.function.IOTriConsumer;
import org.apache.commons.p161io.input.SequenceReader;
import org.apache.commons.p161io.input.UncheckedBufferedReader;
import org.apache.commons.p161io.input.UncheckedFilterInputStream;
import org.apache.commons.p161io.input.UncheckedFilterReader;
import org.apache.commons.p161io.output.UncheckedFilterOutputStream;
import p006a5.C0023h;
import p016b1.C0872m;
import p017b2.C0882b;
import p017b2.C0883c;
import p023b8.InterfaceC0928b;
import p027c2.C0959i;
import p027c2.C0964n;
import p030c5.C0989d;
import p030c5.C0990e;
import p039d2.AbstractC1261q;
import p039d2.C1252h;
import p042d5.C1285f;
import p050e3.C1461d;
import p062f5.C1540b;
import p062f5.C1541b0;
import p062f5.C1561l0;
import p062f5.C1563m0;
import p069g2.C1605a;
import p069g2.EnumC1607c;
import p078h0.C1652b;
import p099j1.C1929i;
import p100j2.C1953i;
import p111k2.C2036h;
import p111k2.InterfaceC2031c;
import p111k2.InterfaceC2032d;
import p114k5.InterfaceC2049a;
import p114k5.InterfaceC2050b;
import p123l2.InterfaceC2198b;
import p132m0.C2314k1;
import p132m0.RunnableC2309j1;
import p141n.C2455p;
import p155o4.C2591f;
import p164p0.C2957j;
import p164p0.InterfaceC2951d;
import p164p0.RunnableC2953f;
import p184r5.C3104b;
import p200t4.C3255p;
import p200t4.InterfaceC3242c;
import p239x4.C3569b;
import p240x5.C3577c;
import p250y5.C3654i;
import p258z3.InterfaceC3723i;
import p259z4.C3743c;
import p259z4.C3744d;

/* JADX INFO: renamed from: androidx.fragment.app.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0566h implements FragmentResultListener, CancellationSignal.OnCancelListener, InterfaceC3242c, LCRI, InterfaceC0928b, InterfaceC2049a, InterfaceC3723i, InterfaceC2198b, EventListener.Factory, PFInter, IOFunction, IOSupplier, IOTriConsumer, InterfaceC2951d {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f452b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f453c;

    public /* synthetic */ C0566h(int i10, Object obj) {
        this.f452b = i10;
        this.f453c = obj;
    }

    @Override // p200t4.InterfaceC3242c
    /* JADX INFO: renamed from: a */
    public Object mo817a(C1252h c1252h) {
        switch (this.f452b) {
            case 4:
                return new C0989d((Context) c1252h.mo2240b(Context.class), ((C2591f) c1252h.mo2240b(C2591f.class)).m4065c(), c1252h.mo2243e(C3255p.m5189a(C0990e.class)), c1252h.mo2241c(C3104b.class), (Executor) c1252h.mo2246h((C3255p) this.f453c));
            default:
                return ((FirebaseInAppMessagingRegistrar) this.f453c).providesFirebaseInAppMessaging(c1252h);
        }
    }

    @Override // p023b8.InterfaceC0928b
    public void accept(Object obj) {
        switch (this.f452b) {
            case 9:
                C1540b c1540b = (C1540b) this.f453c;
                c1540b.getClass();
                HashSet hashSet = new HashSet();
                Iterator it = ((C3654i) obj).m5854q().iterator();
                while (it.hasNext()) {
                    for (C1285f c1285f : ((C3577c) it.next()).m5698t()) {
                        if (!TextUtils.isEmpty(c1285f.m2290n().m2287o())) {
                            hashSet.add(c1285f.m2290n().m2287o());
                        }
                    }
                }
                if (hashSet.size() > 50) {
                    C1461d.m2514n("Too many contextual triggers defined - limiting to 50");
                }
                C1461d.m2513m("Updating contextual triggers for the following analytics events: " + hashSet);
                c1540b.f3793c.m2633a(hashSet);
                break;
            default:
                C1563m0 c1563m0 = (C1563m0) this.f453c;
                C3654i c3654i = (C3654i) obj;
                C1561l0 c1561l0 = c1563m0.f3843a;
                if (!c1563m0.f3844b) {
                    if (c1563m0.f3845c) {
                        int i10 = c1563m0.f3846d + 1;
                        c1563m0.f3846d = i10;
                        if (i10 >= 5) {
                            c1563m0.f3845c = false;
                            c1561l0.m2644a("fresh_install", false);
                        }
                    }
                    Iterator it2 = c3654i.m5854q().iterator();
                    while (it2.hasNext()) {
                        if (((C3577c) it2.next()).m5695q()) {
                            c1563m0.f3844b = true;
                            c1561l0.m2644a("test_device", true);
                            C1461d.m2514n("Setting this device as a test device");
                            break;
                        }
                    }
                }
                break;
        }
    }

    @Override // org.apache.commons.p161io.function.IOFunction
    public Object apply(Object obj) {
        return ((MagicNumberFileFilter) this.f453c).lambda$accept$0((RandomAccessFile) obj);
    }

    @Override // p164p0.InterfaceC2951d
    /* JADX INFO: renamed from: b */
    public void mo818b(int i10, int i11) {
        C2957j c2957j = (C2957j) this.f453c;
        c2957j.f8230d.post(new RunnableC2953f(c2957j, i10, i11, 0));
    }

    @Override // okhttp3.EventListener.Factory
    public EventListener create(Call call) {
        return Util.asFactory$lambda$8((EventListener) this.f453c, call);
    }

    @Override // p114k5.InterfaceC2049a
    /* JADX INFO: renamed from: e */
    public void mo819e(InterfaceC2050b interfaceC2050b) {
        ((C1541b0) this.f453c).f3794a = interfaceC2050b.get();
    }

    @Override // p123l2.InterfaceC2198b
    public Object execute() {
        int i10 = this.f452b;
        Object obj = this.f453c;
        switch (i10) {
            case 13:
                C2036h c2036h = (C2036h) ((InterfaceC2031c) obj);
                c2036h.getClass();
                int i11 = C1605a.f4031e;
                C0872m c0872m = new C0872m(4);
                c0872m.f601c = null;
                c0872m.f603e = new ArrayList();
                c0872m.f604f = null;
                c0872m.f602d = "";
                HashMap map = new HashMap();
                SQLiteDatabase sQLiteDatabaseM3135b = c2036h.m3135b();
                sQLiteDatabaseM3135b.beginTransaction();
                try {
                    C1605a c1605a = (C1605a) C2036h.m3132e0(sQLiteDatabaseM3135b.rawQuery("SELECT log_source, reason, events_dropped_count FROM log_event_dropped", new String[0]), new C0802a(c2036h, map, c0872m, 3));
                    sQLiteDatabaseM3135b.setTransactionSuccessful();
                    return c1605a;
                } finally {
                    sQLiteDatabaseM3135b.endTransaction();
                }
            case 14:
                C2036h c2036h2 = (C2036h) ((InterfaceC2032d) obj);
                long jMo1142d = c2036h2.f5554c.mo1142d() - c2036h2.f5556e.f5544d;
                SQLiteDatabase sQLiteDatabaseM3135b2 = c2036h2.m3135b();
                sQLiteDatabaseM3135b2.beginTransaction();
                try {
                    String[] strArr = {String.valueOf(jMo1142d)};
                    Cursor cursorRawQuery = sQLiteDatabaseM3135b2.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name", strArr);
                    while (cursorRawQuery.moveToNext()) {
                        try {
                            c2036h2.m3134V(cursorRawQuery.getInt(0), EnumC1607c.MESSAGE_TOO_OLD, cursorRawQuery.getString(1));
                        } catch (Throwable th) {
                            cursorRawQuery.close();
                            throw th;
                        }
                    }
                    cursorRawQuery.close();
                    int iDelete = sQLiteDatabaseM3135b2.delete("events", "timestamp_ms < ?", strArr);
                    sQLiteDatabaseM3135b2.setTransactionSuccessful();
                    sQLiteDatabaseM3135b2.endTransaction();
                    return Integer.valueOf(iDelete);
                } catch (Throwable th2) {
                    sQLiteDatabaseM3135b2.endTransaction();
                    throw th2;
                }
            case 15:
                C2036h c2036h3 = (C2036h) ((C1953i) obj).f5335i;
                SQLiteDatabase sQLiteDatabaseM3135b3 = c2036h3.m3135b();
                sQLiteDatabaseM3135b3.beginTransaction();
                try {
                    sQLiteDatabaseM3135b3.compileStatement("DELETE FROM log_event_dropped").execute();
                    sQLiteDatabaseM3135b3.compileStatement("UPDATE global_log_event_state SET last_metrics_upload_ms=" + c2036h3.f5554c.mo1142d()).execute();
                    sQLiteDatabaseM3135b3.setTransactionSuccessful();
                    return null;
                } finally {
                    sQLiteDatabaseM3135b3.endTransaction();
                }
            default:
                C0872m c0872m2 = (C0872m) obj;
                SQLiteDatabase sQLiteDatabaseM3135b4 = ((C2036h) ((InterfaceC2032d) c0872m2.f602d)).m3135b();
                sQLiteDatabaseM3135b4.beginTransaction();
                try {
                    List list = (List) C2036h.m3132e0(sQLiteDatabaseM3135b4.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), new C1929i(18));
                    sQLiteDatabaseM3135b4.setTransactionSuccessful();
                    sQLiteDatabaseM3135b4.endTransaction();
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((C0023h) c0872m2.f603e).m86v((AbstractC1261q) it.next(), 1, false);
                    }
                    return null;
                } catch (Throwable th3) {
                    sQLiteDatabaseM3135b4.endTransaction();
                    throw th3;
                }
        }
    }

    /* JADX INFO: renamed from: f */
    public C0882b m820f(C0023h c0023h) {
        C0883c c0883c = (C0883c) this.f453c;
        URL url = (URL) c0023h.f81c;
        String strM2511j = C1461d.m2511j("CctTransportBackend");
        if (Log.isLoggable(strM2511j, 4)) {
            Log.i(strM2511j, String.format("Making request to: %s", url));
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(c0883c.f660g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("User-Agent", "datatransport/3.1.9 android/");
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        String str = (String) c0023h.f83e;
        if (str != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                try {
                    C2455p c2455p = c0883c.f654a;
                    C0959i c0959i = (C0959i) c0023h.f82d;
                    BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(gZIPOutputStream));
                    C3743c c3743c = (C3743c) c2455p.f6648c;
                    C3744d c3744d = new C3744d(bufferedWriter, c3743c.f11142a, c3743c.f11143b, c3743c.f11144c, c3743c.f11145d);
                    c3744d.m5974e(c0959i);
                    c3744d.m5976g();
                    c3744d.f11147b.flush();
                    gZIPOutputStream.close();
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    int responseCode = httpURLConnection.getResponseCode();
                    Integer numValueOf = Integer.valueOf(responseCode);
                    String strM2511j2 = C1461d.m2511j("CctTransportBackend");
                    if (Log.isLoggable(strM2511j2, 4)) {
                        Log.i(strM2511j2, String.format("Status Code: %d", numValueOf));
                    }
                    C1461d.m2505d(httpURLConnection.getHeaderField("Content-Type"), "CctTransportBackend", "Content-Type: %s");
                    C1461d.m2505d(httpURLConnection.getHeaderField("Content-Encoding"), "CctTransportBackend", "Content-Encoding: %s");
                    if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                        return new C0882b(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                    }
                    if (responseCode != 200) {
                        return new C0882b(responseCode, null, 0L);
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    try {
                        InputStream gZIPInputStream = "gzip".equals(httpURLConnection.getHeaderField("Content-Encoding")) ? new GZIPInputStream(inputStream) : inputStream;
                        try {
                            C0882b c0882b = new C0882b(responseCode, null, C0964n.m1096a(new BufferedReader(new InputStreamReader(gZIPInputStream))).f892a);
                            if (gZIPInputStream != null) {
                                gZIPInputStream.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            return c0882b;
                        } catch (Throwable th) {
                            if (gZIPInputStream == null) {
                                throw th;
                            }
                            try {
                                gZIPInputStream.close();
                                throw th;
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                                throw th;
                            }
                        }
                    } catch (Throwable th3) {
                        if (inputStream == null) {
                            throw th3;
                        }
                        try {
                            inputStream.close();
                            throw th3;
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                            throw th3;
                        }
                    }
                } catch (Throwable th5) {
                    try {
                        gZIPOutputStream.close();
                        throw th5;
                    } catch (Throwable th6) {
                        th5.addSuppressed(th6);
                        throw th5;
                    }
                }
            } catch (Throwable th7) {
                if (outputStream == null) {
                    throw th7;
                }
                try {
                    outputStream.close();
                    throw th7;
                } catch (Throwable th8) {
                    th7.addSuppressed(th8);
                    throw th7;
                }
            }
        } catch (ConnectException e) {
            e = e;
            C1461d.m2507f("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new C0882b(500, null, 0L);
        } catch (UnknownHostException e6) {
            e = e6;
            C1461d.m2507f("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new C0882b(500, null, 0L);
        } catch (IOException e10) {
            e = e10;
            C1461d.m2507f("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new C0882b(NNTPReply.SERVICE_DISCONTINUED, null, 0L);
        } catch (C3569b e11) {
            e = e11;
            C1461d.m2507f("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new C0882b(NNTPReply.SERVICE_DISCONTINUED, null, 0L);
        }
    }

    @Override // org.apache.commons.p161io.function.IOSupplier
    public Object get() {
        switch (this.f452b) {
            case 24:
                return ((SequenceReader) this.f453c).nextReader();
            case 25:
                return ((UncheckedBufferedReader.Builder) this.f453c).lambda$get$0();
            case 26:
                return ((UncheckedFilterInputStream.Builder) this.f453c).lambda$get$0();
            default:
                return ((UncheckedFilterReader.Builder) this.f453c).lambda$get$0();
        }
    }

    @Override // com.example.navistart.cores.LCRI
    /* JADX INFO: renamed from: ls */
    public void mo821ls(String str) {
        String string = ((TestSpaceActivity) this.f453c).f1650f.getText().toString();
        if (string.isEmpty() || str.toLowerCase().contains(string.toLowerCase())) {
            C1652b.m2750v(str);
        }
    }

    @Override // androidx.core.os.CancellationSignal.OnCancelListener
    public void onCancel() {
        SpecialEffectsController.Operation._init_$lambda$0((SpecialEffectsController.Operation) this.f453c);
    }

    @Override // androidx.fragment.app.FragmentResultListener
    public void onFragmentResult(String str, Bundle bundle) {
        FragmentKt.setFragmentResultListener$lambda$0((Function2) this.f453c, str, bundle);
    }

    @Override // com.example.navistart.cores.PFInter
    /* JADX INFO: renamed from: s */
    public void mo822s(String str) {
        C2314k1 c2314k1 = (C2314k1) this.f453c;
        c2314k1.f6186a.requireActivity().runOnUiThread(new RunnableC2309j1(c2314k1, str, 3));
    }

    @Override // org.apache.commons.p161io.function.IOTriConsumer
    public void accept(Object obj, Object obj2, Object obj3) throws IOException {
        ((UncheckedFilterOutputStream) this.f453c).lambda$write$3((byte[]) obj, ((Integer) obj2).intValue(), ((Integer) obj3).intValue());
    }
}
