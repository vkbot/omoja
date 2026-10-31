package com.bumptech.glide.load.data;

import ai.onnxruntime.AbstractC0074a;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.EnumC1035h;
import com.google.protobuf.C1163l;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;
import p025c0.AbstractC0941j;
import p025c0.C0935d;
import p141n.C2445g;

/* JADX INFO: renamed from: com.bumptech.glide.load.data.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1051l implements InterfaceC1044e {

    /* JADX INFO: renamed from: b */
    public final C2445g f1140b;

    /* JADX INFO: renamed from: c */
    public final int f1141c;

    /* JADX INFO: renamed from: d */
    public HttpURLConnection f1142d;

    /* JADX INFO: renamed from: e */
    public InputStream f1143e;

    /* JADX INFO: renamed from: f */
    public volatile boolean f1144f;

    public C1051l(C2445g c2445g, int i10) {
        this.f1140b = c2445g;
        this.f1141c = i10;
    }

    /* JADX INFO: renamed from: d */
    public static int m1332d(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode();
        } catch (IOException e) {
            if (!Log.isLoggable("HttpUrlFetcher", 3)) {
                return -1;
            }
            Log.d("HttpUrlFetcher", "Failed to get a response code", e);
            return -1;
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: a */
    public final Class mo1316a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: b */
    public final void mo1321b() {
        InputStream inputStream = this.f1143e;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.f1142d;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.f1142d = null;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: c */
    public final int mo1322c() {
        return 2;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    public final void cancel() {
        this.f1144f = true;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: e */
    public final void mo1323e(EnumC1035h enumC1035h, InterfaceC1043d interfaceC1043d) {
        C2445g c2445g = this.f1140b;
        int i10 = AbstractC0941j.f799b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            interfaceC1043d.mo242f(m1333f(c2445g.m3799d(), 0, null, c2445g.f6625b.mo3800a()));
        } catch (IOException e) {
            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                Log.d("HttpUrlFetcher", "Failed to load data for url", e);
            }
            interfaceC1043d.mo240d(e);
        } finally {
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                Log.v("HttpUrlFetcher", "Finished http url fetcher fetch in " + AbstractC0941j.m1076a(jElapsedRealtimeNanos));
            }
        }
    }

    /* JADX INFO: renamed from: f */
    public final InputStream m1333f(URL url, int i10, URL url2, Map map) throws C1163l {
        if (i10 >= 5) {
            throw new C1163l("Too many (> 5) redirects!", -1, null);
        }
        if (url2 != null) {
            try {
                if (url.toURI().equals(url2.toURI())) {
                    throw new C1163l("In re-direct loop", -1, null);
                }
            } catch (URISyntaxException unused) {
            }
        }
        int i11 = this.f1141c;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            for (Map.Entry entry : map.entrySet()) {
                httpURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
            httpURLConnection.setConnectTimeout(i11);
            httpURLConnection.setReadTimeout(i11);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setInstanceFollowRedirects(false);
            this.f1142d = httpURLConnection;
            try {
                httpURLConnection.connect();
                this.f1143e = this.f1142d.getInputStream();
                if (this.f1144f) {
                    return null;
                }
                int iM1332d = m1332d(this.f1142d);
                int i12 = iM1332d / 100;
                if (i12 == 2) {
                    HttpURLConnection httpURLConnection2 = this.f1142d;
                    try {
                        if (TextUtils.isEmpty(httpURLConnection2.getContentEncoding())) {
                            this.f1143e = new C0935d(httpURLConnection2.getInputStream(), httpURLConnection2.getContentLength());
                        } else {
                            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                                Log.d("HttpUrlFetcher", "Got non empty content encoding: " + httpURLConnection2.getContentEncoding());
                            }
                            this.f1143e = httpURLConnection2.getInputStream();
                        }
                        return this.f1143e;
                    } catch (IOException e) {
                        throw new C1163l("Failed to obtain InputStream", m1332d(httpURLConnection2), e);
                    }
                }
                if (i12 != 3) {
                    if (iM1332d == -1) {
                        throw new C1163l("Http request failed", iM1332d, null);
                    }
                    try {
                        throw new C1163l(this.f1142d.getResponseMessage(), iM1332d, null);
                    } catch (IOException e6) {
                        throw new C1163l("Failed to get a response message", iM1332d, e6);
                    }
                }
                String headerField = this.f1142d.getHeaderField("Location");
                if (TextUtils.isEmpty(headerField)) {
                    throw new C1163l("Received empty or null redirect url", iM1332d, null);
                }
                try {
                    URL url3 = new URL(url, headerField);
                    mo1321b();
                    return m1333f(url3, i10 + 1, url, map);
                } catch (MalformedURLException e10) {
                    throw new C1163l(AbstractC0074a.m161l("Bad redirect url: ", headerField), iM1332d, e10);
                }
            } catch (IOException e11) {
                throw new C1163l("Failed to connect or obtain data", m1332d(this.f1142d), e11);
            }
        } catch (IOException e12) {
            throw new C1163l("URL.openConnection threw", 0, e12);
        }
    }
}
