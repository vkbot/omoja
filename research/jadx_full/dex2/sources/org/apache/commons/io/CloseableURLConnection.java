package org.apache.commons.io;

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
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
final class CloseableURLConnection extends URLConnection implements AutoCloseable {
    private final URLConnection urlConnection;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloseableURLConnection(URLConnection uRLConnection) {
        super(uRLConnection.getURL());
        Objects.requireNonNull(uRLConnection, "urlConnection");
        this.urlConnection = uRLConnection;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static CloseableURLConnection open(URI uri) {
        Objects.requireNonNull(uri, "uri");
        return open(uri.toURL());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public void addRequestProperty(String str, String str2) {
        this.urlConnection.addRequestProperty(str, str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.AutoCloseable
    public void close() {
        IOUtils.close(this.urlConnection);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public void connect() throws IOException {
        this.urlConnection.connect();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        return this.urlConnection.equals(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public boolean getAllowUserInteraction() {
        return this.urlConnection.getAllowUserInteraction();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public int getConnectTimeout() {
        return this.urlConnection.getConnectTimeout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public Object getContent() {
        return this.urlConnection.getContent();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public String getContentEncoding() {
        return this.urlConnection.getContentEncoding();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public int getContentLength() {
        return this.urlConnection.getContentLength();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public long getContentLengthLong() {
        return this.urlConnection.getContentLengthLong();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public String getContentType() {
        return this.urlConnection.getContentType();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public long getDate() {
        return this.urlConnection.getDate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public boolean getDefaultUseCaches() {
        return this.urlConnection.getDefaultUseCaches();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public boolean getDoInput() {
        return this.urlConnection.getDoInput();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public boolean getDoOutput() {
        return this.urlConnection.getDoOutput();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public long getExpiration() {
        return this.urlConnection.getExpiration();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public String getHeaderField(int i) {
        return this.urlConnection.getHeaderField(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public long getHeaderFieldDate(String str, long j) {
        return this.urlConnection.getHeaderFieldDate(str, j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public int getHeaderFieldInt(String str, int i) {
        return this.urlConnection.getHeaderFieldInt(str, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public String getHeaderFieldKey(int i) {
        return this.urlConnection.getHeaderFieldKey(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public long getHeaderFieldLong(String str, long j) {
        return this.urlConnection.getHeaderFieldLong(str, j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public Map<String, List<String>> getHeaderFields() {
        return this.urlConnection.getHeaderFields();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public long getIfModifiedSince() {
        return this.urlConnection.getIfModifiedSince();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public InputStream getInputStream() {
        return this.urlConnection.getInputStream();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public long getLastModified() {
        return this.urlConnection.getLastModified();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public OutputStream getOutputStream() {
        return this.urlConnection.getOutputStream();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public Permission getPermission() {
        return this.urlConnection.getPermission();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public int getReadTimeout() {
        return this.urlConnection.getReadTimeout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public Map<String, List<String>> getRequestProperties() {
        return this.urlConnection.getRequestProperties();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public String getRequestProperty(String str) {
        return this.urlConnection.getRequestProperty(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public URL getURL() {
        return this.urlConnection.getURL();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public boolean getUseCaches() {
        return this.urlConnection.getUseCaches();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return this.urlConnection.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public void setAllowUserInteraction(boolean z) {
        this.urlConnection.setAllowUserInteraction(z);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public void setConnectTimeout(int i) {
        this.urlConnection.setConnectTimeout(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public void setDefaultUseCaches(boolean z) {
        this.urlConnection.setDefaultUseCaches(z);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public void setDoInput(boolean z) {
        this.urlConnection.setDoInput(z);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public void setDoOutput(boolean z) {
        this.urlConnection.setDoOutput(z);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public void setIfModifiedSince(long j) {
        this.urlConnection.setIfModifiedSince(j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public void setReadTimeout(int i) {
        this.urlConnection.setReadTimeout(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public void setRequestProperty(String str, String str2) {
        this.urlConnection.setRequestProperty(str, str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.net.URLConnection
    public void setUseCaches(boolean z) {
        this.urlConnection.setUseCaches(z);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
