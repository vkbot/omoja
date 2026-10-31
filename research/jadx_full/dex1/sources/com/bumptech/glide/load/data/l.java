package com.bumptech.glide.load.data;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;
import java.util.Map$Entry;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l implements e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n.g f592b;
    public final int c;
    public HttpURLConnection d;
    public InputStream e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile boolean f593f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public l(n.g gVar, int i9) {
        this.f592b = gVar;
        this.c = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int d(HttpURLConnection httpURLConnection) {
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        return InputStream.class;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final void b() {
        InputStream inputStream = this.e;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.d;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.d = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final int c() {
        return 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        this.f593f = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final void e(com.bumptech.glide.h hVar, d dVar) {
        n.g gVar = this.f592b;
        int i9 = c0.j.f402b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            dVar.f(f(gVar.d(), 0, null, gVar.f3744b.a()));
        } catch (IOException e) {
            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                Log.d("HttpUrlFetcher", "Failed to load data for url", e);
            }
            dVar.d(e);
        } finally {
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                Log.v("HttpUrlFetcher", "Finished http url fetcher fetch in " + c0.j.a(jElapsedRealtimeNanos));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final InputStream f(URL url, int i9, URL url2, Map map) throws com.google.protobuf.l {
        if (i9 >= 5) {
            throw new com.google.protobuf.l("Too many (> 5) redirects!", -1, null);
        }
        if (url2 != null) {
            try {
                if (url.toURI().equals(url2.toURI())) {
                    throw new com.google.protobuf.l("In re-direct loop", -1, null);
                }
            } catch (URISyntaxException unused) {
            }
        }
        int i10 = this.c;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            for (Map$Entry map$Entry : map.entrySet()) {
                httpURLConnection.addRequestProperty((String) map$Entry.getKey(), (String) map$Entry.getValue());
            }
            httpURLConnection.setConnectTimeout(i10);
            httpURLConnection.setReadTimeout(i10);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setInstanceFollowRedirects(false);
            this.d = httpURLConnection;
            try {
                httpURLConnection.connect();
                this.e = this.d.getInputStream();
                if (this.f593f) {
                    return null;
                }
                int iD = d(this.d);
                int i11 = iD / 100;
                if (i11 == 2) {
                    HttpURLConnection httpURLConnection2 = this.d;
                    try {
                        if (TextUtils.isEmpty(httpURLConnection2.getContentEncoding())) {
                            this.e = new c0.d(httpURLConnection2.getInputStream(), httpURLConnection2.getContentLength());
                        } else {
                            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                                Log.d("HttpUrlFetcher", "Got non empty content encoding: " + httpURLConnection2.getContentEncoding());
                            }
                            this.e = httpURLConnection2.getInputStream();
                        }
                        return this.e;
                    } catch (IOException e) {
                        throw new com.google.protobuf.l("Failed to obtain InputStream", d(httpURLConnection2), e);
                    }
                }
                if (i11 != 3) {
                    if (iD == -1) {
                        throw new com.google.protobuf.l("Http request failed", iD, null);
                    }
                    try {
                        throw new com.google.protobuf.l(this.d.getResponseMessage(), iD, null);
                    } catch (IOException e6) {
                        throw new com.google.protobuf.l("Failed to get a response message", iD, e6);
                    }
                }
                String headerField = this.d.getHeaderField("Location");
                if (TextUtils.isEmpty(headerField)) {
                    throw new com.google.protobuf.l("Received empty or null redirect url", iD, null);
                }
                try {
                    URL url3 = new URL(url, headerField);
                    b();
                    return f(url3, i9 + 1, url, map);
                } catch (MalformedURLException e9) {
                    throw new com.google.protobuf.l(ai.onnxruntime.a.l("Bad redirect url: ", headerField), iD, e9);
                }
            } catch (IOException e10) {
                throw new com.google.protobuf.l("Failed to connect or obtain data", d(this.d), e10);
            }
        } catch (IOException e11) {
            throw new com.google.protobuf.l("URL.openConnection threw", 0, e11);
        }
    }
}
