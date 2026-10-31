package androidx.fragment.app;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.os.CancellationSignal$OnCancelListener;
import b1.m;
import c2.n;
import com.example.navistart.TestSpaceActivity;
import com.example.navistart.cores.LCRI;
import com.example.navistart.cores.PFInter;
import com.google.firebase.inappmessaging.FirebaseInAppMessagingRegistrar;
import d2.q;
import f5.b0;
import f5.l0;
import f5.m0;
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
import m0.j1;
import m0.k1;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.EventListener$Factory;
import okhttp3.internal.Util;
import org.apache.commons.io.filefilter.MagicNumberFileFilter;
import org.apache.commons.io.function.IOFunction;
import org.apache.commons.io.function.IOSupplier;
import org.apache.commons.io.function.IOTriConsumer;
import org.apache.commons.io.input.SequenceReader;
import org.apache.commons.io.input.UncheckedBufferedReader$Builder;
import org.apache.commons.io.input.UncheckedFilterInputStream$Builder;
import org.apache.commons.io.input.UncheckedFilterReader$Builder;
import org.apache.commons.io.output.UncheckedFilterOutputStream;
import t4.p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class h implements FragmentResultListener, CancellationSignal$OnCancelListener, t4.c, LCRI, b8.b, k5.a, z3.i, l2.b, EventListener$Factory, PFInter, IOFunction, IOSupplier, IOTriConsumer, p0.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f188b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ h(int i9, Object obj) {
        this.f188b = i9;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t4.c
    public Object a(d2.h hVar) {
        switch (this.f188b) {
            case 4:
                return new c5.d((Context) hVar.b(Context.class), ((o4.f) hVar.b(o4.f.class)).c(), hVar.e(p.a(c5.e.class)), hVar.c(r5.b.class), (Executor) hVar.h((p) this.c));
            default:
                return FirebaseInAppMessagingRegistrar.a((FirebaseInAppMessagingRegistrar) this.c, hVar);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b8.b
    public void accept(Object obj) {
        switch (this.f188b) {
            case 9:
                f5.b bVar = (f5.b) this.c;
                bVar.getClass();
                HashSet hashSet = new HashSet();
                Iterator it = ((y5.i) obj).q().iterator();
                while (it.hasNext()) {
                    for (d5.f fVar : ((x5.c) it.next()).t()) {
                        if (!TextUtils.isEmpty(fVar.n().o())) {
                            hashSet.add(fVar.n().o());
                        }
                    }
                }
                if (hashSet.size() > 50) {
                    e3.d.n("Too many contextual triggers defined - limiting to 50");
                }
                e3.d.m("Updating contextual triggers for the following analytics events: " + hashSet);
                bVar.c.a(hashSet);
                break;
            default:
                m0 m0Var = (m0) this.c;
                y5.i iVar = (y5.i) obj;
                l0 l0Var = m0Var.f2218a;
                if (!m0Var.f2219b) {
                    if (m0Var.c) {
                        int i9 = m0Var.d + 1;
                        m0Var.d = i9;
                        if (i9 >= 5) {
                            m0Var.c = false;
                            l0Var.a("fresh_install", false);
                        }
                    }
                    Iterator it2 = iVar.q().iterator();
                    while (it2.hasNext()) {
                        if (((x5.c) it2.next()).q()) {
                            m0Var.f2219b = true;
                            l0Var.a("test_device", true);
                            e3.d.n("Setting this device as a test device");
                            break;
                        }
                    }
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object apply(Object obj) {
        return MagicNumberFileFilter.a((MagicNumberFileFilter) this.c, (RandomAccessFile) obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // p0.d
    public void b(int i9, int i10) {
        p0.j jVar = (p0.j) this.c;
        jVar.d.post(new p0.f(jVar, i9, i10, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public EventListener create(Call call) {
        return Util.a((EventListener) this.c, call);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k5.a
    public void e(k5.b bVar) {
        ((b0) this.c).f2189a = bVar.get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l2.b
    public Object execute() {
        int i9 = this.f188b;
        Object obj = this.c;
        switch (i9) {
            case 13:
                k2.h hVar = (k2.h) ((k2.c) obj);
                hVar.getClass();
                int i10 = g2.a.e;
                m mVar = new m(4);
                mVar.c = null;
                mVar.e = new ArrayList();
                mVar.f270f = null;
                mVar.d = "";
                HashMap map = new HashMap();
                SQLiteDatabase sQLiteDatabaseB = hVar.b();
                sQLiteDatabaseB.beginTransaction();
                try {
                    g2.a aVar = (g2.a) k2.h.e0(sQLiteDatabaseB.rawQuery("SELECT log_source, reason, events_dropped_count FROM log_event_dropped", new String[0]), new androidx.transition.a(hVar, map, mVar, 3));
                    sQLiteDatabaseB.setTransactionSuccessful();
                    return aVar;
                } finally {
                    sQLiteDatabaseB.endTransaction();
                }
            case 14:
                k2.h hVar2 = (k2.h) ((k2.d) obj);
                long jD = hVar2.c.d() - hVar2.e.d;
                SQLiteDatabase sQLiteDatabaseB2 = hVar2.b();
                sQLiteDatabaseB2.beginTransaction();
                try {
                    String[] strArr = {String.valueOf(jD)};
                    Cursor cursorRawQuery = sQLiteDatabaseB2.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name", strArr);
                    while (cursorRawQuery.moveToNext()) {
                        try {
                            hVar2.V(cursorRawQuery.getInt(0), g2.c.MESSAGE_TOO_OLD, cursorRawQuery.getString(1));
                        } catch (Throwable th) {
                            cursorRawQuery.close();
                            throw th;
                        }
                    }
                    cursorRawQuery.close();
                    int iDelete = sQLiteDatabaseB2.delete("events", "timestamp_ms < ?", strArr);
                    sQLiteDatabaseB2.setTransactionSuccessful();
                    sQLiteDatabaseB2.endTransaction();
                    return Integer.valueOf(iDelete);
                } catch (Throwable th2) {
                    sQLiteDatabaseB2.endTransaction();
                    throw th2;
                }
            case 15:
                k2.h hVar3 = (k2.h) ((j2.i) obj).f3036i;
                SQLiteDatabase sQLiteDatabaseB3 = hVar3.b();
                sQLiteDatabaseB3.beginTransaction();
                try {
                    sQLiteDatabaseB3.compileStatement("DELETE FROM log_event_dropped").execute();
                    sQLiteDatabaseB3.compileStatement("UPDATE global_log_event_state SET last_metrics_upload_ms=" + hVar3.c.d()).execute();
                    sQLiteDatabaseB3.setTransactionSuccessful();
                    return null;
                } finally {
                    sQLiteDatabaseB3.endTransaction();
                }
            default:
                m mVar2 = (m) obj;
                SQLiteDatabase sQLiteDatabaseB4 = ((k2.h) ((k2.d) mVar2.d)).b();
                sQLiteDatabaseB4.beginTransaction();
                try {
                    List list = (List) k2.h.e0(sQLiteDatabaseB4.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), new j1.i(18));
                    sQLiteDatabaseB4.setTransactionSuccessful();
                    sQLiteDatabaseB4.endTransaction();
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((a5.h) mVar2.e).v((q) it.next(), 1, false);
                    }
                    return null;
                } catch (Throwable th3) {
                    sQLiteDatabaseB4.endTransaction();
                    throw th3;
                }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b2.b f(a5.h hVar) {
        b2.c cVar = (b2.c) this.c;
        URL url = (URL) hVar.c;
        String strJ = e3.d.j("CctTransportBackend");
        if (Log.isLoggable(strJ, 4)) {
            Log.i(strJ, String.format("Making request to: %s", url));
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(cVar.f304g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("User-Agent", "datatransport/3.1.9 android/");
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        String str = (String) hVar.e;
        if (str != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                try {
                    n.p pVar = cVar.f301a;
                    c2.i iVar = (c2.i) hVar.d;
                    BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(gZIPOutputStream));
                    z4.c cVar2 = (z4.c) pVar.c;
                    z4.d dVar = new z4.d(bufferedWriter, cVar2.f6294a, cVar2.f6295b, cVar2.c, cVar2.d);
                    dVar.e(iVar);
                    dVar.g();
                    dVar.f6297b.flush();
                    gZIPOutputStream.close();
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    int responseCode = httpURLConnection.getResponseCode();
                    Integer numValueOf = Integer.valueOf(responseCode);
                    String strJ2 = e3.d.j("CctTransportBackend");
                    if (Log.isLoggable(strJ2, 4)) {
                        Log.i(strJ2, String.format("Status Code: %d", numValueOf));
                    }
                    e3.d.d(httpURLConnection.getHeaderField("Content-Type"), "CctTransportBackend", "Content-Type: %s");
                    e3.d.d(httpURLConnection.getHeaderField("Content-Encoding"), "CctTransportBackend", "Content-Encoding: %s");
                    if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                        return new b2.b(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                    }
                    if (responseCode != 200) {
                        return new b2.b(responseCode, null, 0L);
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    try {
                        InputStream gZIPInputStream = "gzip".equals(httpURLConnection.getHeaderField("Content-Encoding")) ? new GZIPInputStream(inputStream) : inputStream;
                        try {
                            b2.b bVar = new b2.b(responseCode, null, n.a(new BufferedReader(new InputStreamReader(gZIPInputStream))).f466a);
                            if (gZIPInputStream != null) {
                                gZIPInputStream.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            return bVar;
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
            e3.d.f("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new b2.b(500, null, 0L);
        } catch (UnknownHostException e6) {
            e = e6;
            e3.d.f("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new b2.b(500, null, 0L);
        } catch (IOException e9) {
            e = e9;
            e3.d.f("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new b2.b(400, null, 0L);
        } catch (x4.b e10) {
            e = e10;
            e3.d.f("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new b2.b(400, null, 0L);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object get() {
        switch (this.f188b) {
            case 24:
                return SequenceReader.b((SequenceReader) this.c);
            case 25:
                return UncheckedBufferedReader$Builder.b((UncheckedBufferedReader$Builder) this.c);
            case 26:
                return UncheckedFilterInputStream$Builder.b((UncheckedFilterInputStream$Builder) this.c);
            default:
                return UncheckedFilterReader$Builder.b((UncheckedFilterReader$Builder) this.c);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.LCRI
    public void ls(String str) {
        String string = ((TestSpaceActivity) this.c).f849f.getText().toString();
        if (string.isEmpty() || str.toLowerCase().contains(string.toLowerCase())) {
            h0.b.v(str);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.os.CancellationSignal$OnCancelListener
    public void onCancel() {
        SpecialEffectsController$Operation.a((SpecialEffectsController$Operation) this.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.FragmentResultListener
    public void onFragmentResult(String str, Bundle bundle) {
        FragmentKt.a((Function2) this.c, str, bundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.PFInter
    public void s(String str) {
        k1 k1Var = (k1) this.c;
        k1Var.f3491a.requireActivity().runOnUiThread(new j1(k1Var, str, 3));
    }

    public void accept(Object obj, Object obj2, Object obj3) {
        UncheckedFilterOutputStream.y((UncheckedFilterOutputStream) this.c, (byte[]) obj, ((Integer) obj2).intValue(), ((Integer) obj3).intValue());
    }
}
