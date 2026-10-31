package org.apache.commons.p161io;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.security.Permission;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
final class CloseableURLConnection extends URLConnection implements AutoCloseable {
    private final URLConnection urlConnection;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloseableURLConnection(URLConnection uRLConnection) {
        super(uRLConnection.getURL());
        Objects.requireNonNull(uRLConnection, "urlConnection");
        this.urlConnection = uRLConnection;
    }

    public static CloseableURLConnection open(URI uri) {
        Objects.requireNonNull(uri, "uri");
        return open(uri.toURL());
    }

    @Override // java.net.URLConnection
    public void addRequestProperty(String str, String str2) {
        this.urlConnection.addRequestProperty(str, str2);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        IOUtils.close(this.urlConnection);
    }

    @Override // java.net.URLConnection
    public void connect() throws IOException {
        this.urlConnection.connect();
    }

    public boolean equals(Object obj) {
        return this.urlConnection.equals(obj);
    }

    @Override // java.net.URLConnection
    public boolean getAllowUserInteraction() {
        return this.urlConnection.getAllowUserInteraction();
    }

    @Override // java.net.URLConnection
    public int getConnectTimeout() {
        return this.urlConnection.getConnectTimeout();
    }

    @Override // java.net.URLConnection
    public Object getContent() {
        return this.urlConnection.getContent();
    }

    @Override // java.net.URLConnection
    public String getContentEncoding() {
        return this.urlConnection.getContentEncoding();
    }

    @Override // java.net.URLConnection
    public int getContentLength() {
        return this.urlConnection.getContentLength();
    }

    @Override // java.net.URLConnection
    public long getContentLengthLong() {
        return this.urlConnection.getContentLengthLong();
    }

    @Override // java.net.URLConnection
    public String getContentType() {
        return this.urlConnection.getContentType();
    }

    @Override // java.net.URLConnection
    public long getDate() {
        return this.urlConnection.getDate();
    }

    @Override // java.net.URLConnection
    public boolean getDefaultUseCaches() {
        return this.urlConnection.getDefaultUseCaches();
    }

    @Override // java.net.URLConnection
    public boolean getDoInput() {
        return this.urlConnection.getDoInput();
    }

    @Override // java.net.URLConnection
    public boolean getDoOutput() {
        return this.urlConnection.getDoOutput();
    }

    @Override // java.net.URLConnection
    public long getExpiration() {
        return this.urlConnection.getExpiration();
    }

    @Override // java.net.URLConnection
    public String getHeaderField(int i10) {
        return this.urlConnection.getHeaderField(i10);
    }

    @Override // java.net.URLConnection
    public long getHeaderFieldDate(String str, long j10) {
        return this.urlConnection.getHeaderFieldDate(str, j10);
    }

    @Override // java.net.URLConnection
    public int getHeaderFieldInt(String str, int i10) {
        return this.urlConnection.getHeaderFieldInt(str, i10);
    }

    @Override // java.net.URLConnection
    public String getHeaderFieldKey(int i10) {
        return this.urlConnection.getHeaderFieldKey(i10);
    }

    @Override // java.net.URLConnection
    public long getHeaderFieldLong(String str, long j10) {
        return this.urlConnection.getHeaderFieldLong(str, j10);
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getHeaderFields() {
        return this.urlConnection.getHeaderFields();
    }

    @Override // java.net.URLConnection
    public long getIfModifiedSince() {
        return this.urlConnection.getIfModifiedSince();
    }

    @Override // java.net.URLConnection
    public InputStream getInputStream() {
        return this.urlConnection.getInputStream();
    }

    @Override // java.net.URLConnection
    public long getLastModified() {
        return this.urlConnection.getLastModified();
    }

    @Override // java.net.URLConnection
    public OutputStream getOutputStream() {
        return this.urlConnection.getOutputStream();
    }

    @Override // java.net.URLConnection
    public Permission getPermission() {
        return this.urlConnection.getPermission();
    }

    @Override // java.net.URLConnection
    public int getReadTimeout() {
        return this.urlConnection.getReadTimeout();
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getRequestProperties() {
        return this.urlConnection.getRequestProperties();
    }

    @Override // java.net.URLConnection
    public String getRequestProperty(String str) {
        return this.urlConnection.getRequestProperty(str);
    }

    @Override // java.net.URLConnection
    public URL getURL() {
        return this.urlConnection.getURL();
    }

    @Override // java.net.URLConnection
    public boolean getUseCaches() {
        return this.urlConnection.getUseCaches();
    }

    public int hashCode() {
        return this.urlConnection.hashCode();
    }

    @Override // java.net.URLConnection
    public void setAllowUserInteraction(boolean z9) {
        this.urlConnection.setAllowUserInteraction(z9);
    }

    @Override // java.net.URLConnection
    public void setConnectTimeout(int i10) {
        this.urlConnection.setConnectTimeout(i10);
    }

    @Override // java.net.URLConnection
    public void setDefaultUseCaches(boolean z9) {
        this.urlConnection.setDefaultUseCaches(z9);
    }

    @Override // java.net.URLConnection
    public void setDoInput(boolean z9) {
        this.urlConnection.setDoInput(z9);
    }

    @Override // java.net.URLConnection
    public void setDoOutput(boolean z9) {
        this.urlConnection.setDoOutput(z9);
    }

    @Override // java.net.URLConnection
    public void setIfModifiedSince(long j10) {
        this.urlConnection.setIfModifiedSince(j10);
    }

    @Override // java.net.URLConnection
    public void setReadTimeout(int i10) {
        this.urlConnection.setReadTimeout(i10);
    }

    @Override // java.net.URLConnection
    public void setRequestProperty(String str, String str2) {
        this.urlConnection.setRequestProperty(str, str2);
    }

    @Override // java.net.URLConnection
    public void setUseCaches(boolean z9) {
        this.urlConnection.setUseCaches(z9);
    }

    @Override // java.net.URLConnection
    public String toString() {
        return this.urlConnection.toString();
    }

    @Override // java.net.URLConnection
    public Object getContent(Class[] clsArr) {
        return this.urlConnection.getContent(clsArr);
    }

    @Override // java.net.URLConnection
    public String getHeaderField(String str) {
        return this.urlConnection.getHeaderField(str);
    }

    public static CloseableURLConnection open(URL url) {
        return new CloseableURLConnection(url.openConnection());
    }
}
