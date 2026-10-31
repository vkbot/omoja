package f;

import android.os.Build$VERSION;
import android.os.StrictMode;
import android.os.StrictMode$ThreadPolicy;
import android.os.StrictMode$ThreadPolicy$Builder;
import c5.h;
import com.bumptech.glide.manager.s;
import j1.i;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map$Entry;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final File f2138b;
    public final File c;
    public final File d;
    public final File e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f2140g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public BufferedWriter f2143j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2145l;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f2142i = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final LinkedHashMap f2144k = new LinkedHashMap(0, 0.75f, true);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f2146m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ThreadPoolExecutor f2147n = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new a());

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final d8.a f2148o = new d8.a(1, this);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f2139f = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f2141h = 1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(File file, long j9) {
        this.f2138b = file;
        this.c = new File(file, "journal");
        this.d = new File(file, "journal.tmp");
        this.e = new File(file, "journal.bkp");
        this.f2140g = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void V(BufferedWriter bufferedWriter) throws IOException {
        if (Build$VERSION.SDK_INT < 26) {
            bufferedWriter.flush();
            return;
        }
        StrictMode$ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(h.f(new StrictMode$ThreadPolicy$Builder(threadPolicy)).build());
        try {
            bufferedWriter.flush();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(c cVar, s sVar, boolean z8) {
        synchronized (cVar) {
            b bVar = (b) sVar.c;
            if (bVar.f2136f != sVar) {
                throw new IllegalStateException();
            }
            if (z8 && !bVar.e) {
                for (int i9 = 0; i9 < cVar.f2141h; i9++) {
                    if (!((boolean[]) sVar.d)[i9]) {
                        sVar.a();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i9);
                    }
                    if (!bVar.d[i9].exists()) {
                        sVar.a();
                        return;
                    }
                }
            }
            for (int i10 = 0; i10 < cVar.f2141h; i10++) {
                File file = bVar.d[i10];
                if (!z8) {
                    y(file);
                } else if (file.exists()) {
                    File file2 = bVar.c[i10];
                    file.renameTo(file2);
                    long j9 = bVar.f2135b[i10];
                    long length = file2.length();
                    bVar.f2135b[i10] = length;
                    cVar.f2142i = (cVar.f2142i - j9) + length;
                }
            }
            cVar.f2145l++;
            bVar.f2136f = null;
            if (bVar.e || z8) {
                bVar.e = true;
                cVar.f2143j.append((CharSequence) "CLEAN");
                cVar.f2143j.append(' ');
                cVar.f2143j.append((CharSequence) bVar.f2134a);
                cVar.f2143j.append((CharSequence) bVar.a());
                cVar.f2143j.append('\n');
                if (z8) {
                    cVar.f2146m++;
                }
            } else {
                cVar.f2144k.remove(bVar.f2134a);
                cVar.f2143j.append((CharSequence) "REMOVE");
                cVar.f2143j.append(' ');
                cVar.f2143j.append((CharSequence) bVar.f2134a);
                cVar.f2143j.append('\n');
            }
            V(cVar.f2143j);
            if (cVar.f2142i > cVar.f2140g || cVar.d0()) {
                cVar.f2147n.submit(cVar.f2148o);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(BufferedWriter bufferedWriter) throws IOException {
        if (Build$VERSION.SDK_INT < 26) {
            bufferedWriter.close();
            return;
        }
        StrictMode$ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(h.f(new StrictMode$ThreadPolicy$Builder(threadPolicy)).build());
        try {
            bufferedWriter.close();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static c e0(File file, long j9) throws IOException {
        if (j9 <= 0) {
            i.k("maxSize <= 0");
            return null;
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                j0(file2, file3, false);
            }
        }
        c cVar = new c(file, j9);
        if (cVar.c.exists()) {
            try {
                cVar.g0();
                cVar.f0();
                return cVar;
            } catch (IOException e) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                cVar.close();
                f.a(cVar.f2138b);
            }
        }
        file.mkdirs();
        c cVar2 = new c(file, j9);
        cVar2.i0();
        return cVar2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void j0(File file, File file2, boolean z8) throws IOException {
        if (z8) {
            y(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void y(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final s S(String str) {
        synchronized (this) {
            try {
                if (this.f2143j == null) {
                    throw new IllegalStateException("cache is closed");
                }
                b bVar = (b) this.f2144k.get(str);
                if (bVar == null) {
                    bVar = new b(this, str);
                    this.f2144k.put(str, bVar);
                } else if (bVar.f2136f != null) {
                    return null;
                }
                s sVar = new s(this, bVar);
                bVar.f2136f = sVar;
                this.f2143j.append((CharSequence) "DIRTY");
                this.f2143j.append(' ');
                this.f2143j.append((CharSequence) str);
                this.f2143j.append('\n');
                V(this.f2143j);
                return sVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized r5.c c0(String str) {
        if (this.f2143j == null) {
            throw new IllegalStateException("cache is closed");
        }
        b bVar = (b) this.f2144k.get(str);
        if (bVar == null) {
            return null;
        }
        if (!bVar.e) {
            return null;
        }
        for (File file : bVar.c) {
            if (!file.exists()) {
                return null;
            }
        }
        this.f2145l++;
        this.f2143j.append((CharSequence) "READ");
        this.f2143j.append(' ');
        this.f2143j.append((CharSequence) str);
        this.f2143j.append('\n');
        if (d0()) {
            this.f2147n.submit(this.f2148o);
        }
        return new r5.c(11, bVar.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        try {
            if (this.f2143j == null) {
                return;
            }
            ArrayList arrayList = new ArrayList(this.f2144k.values());
            int size = arrayList.size();
            int i9 = 0;
            while (i9 < size) {
                Object obj = arrayList.get(i9);
                i9++;
                s sVar = ((b) obj).f2136f;
                if (sVar != null) {
                    sVar.a();
                }
            }
            k0();
            c(this.f2143j);
            this.f2143j = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean d0() {
        int i9 = this.f2145l;
        return i9 >= 2000 && i9 >= this.f2144k.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f0() throws IOException {
        y(this.d);
        Iterator it = this.f2144k.values().iterator();
        while (it.hasNext()) {
            b bVar = (b) it.next();
            s sVar = bVar.f2136f;
            int i9 = this.f2141h;
            int i10 = 0;
            if (sVar == null) {
                while (i10 < i9) {
                    this.f2142i += bVar.f2135b[i10];
                    i10++;
                }
            } else {
                bVar.f2136f = null;
                while (i10 < i9) {
                    y(bVar.c[i10]);
                    y(bVar.d[i10]);
                    i10++;
                }
                it.remove();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g0() {
        File file = this.c;
        e eVar = new e(new FileInputStream(file), f.f2152a);
        try {
            String strB = eVar.b();
            String strB2 = eVar.b();
            String strB3 = eVar.b();
            String strB4 = eVar.b();
            String strB5 = eVar.b();
            if (!"libcore.io.DiskLruCache".equals(strB) || !"1".equals(strB2) || !Integer.toString(this.f2139f).equals(strB3) || !Integer.toString(this.f2141h).equals(strB4) || !"".equals(strB5)) {
                throw new IOException("unexpected journal header: [" + strB + ", " + strB2 + ", " + strB4 + ", " + strB5 + "]");
            }
            int i9 = 0;
            while (true) {
                try {
                    h0(eVar.b());
                    i9++;
                } catch (EOFException unused) {
                    this.f2145l = i9 - this.f2144k.size();
                    if (eVar.f2151f == -1) {
                        i0();
                    } else {
                        this.f2143j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true), f.f2152a));
                    }
                    try {
                        eVar.close();
                        return;
                    } catch (RuntimeException e) {
                        throw e;
                    } catch (Exception unused2) {
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            try {
                eVar.close();
            } catch (RuntimeException e6) {
                throw e6;
            } catch (Exception unused3) {
            }
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h0(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            n0.b.A("unexpected journal line: ".concat(str));
            return;
        }
        int i9 = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i9);
        LinkedHashMap linkedHashMap = this.f2144k;
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i9);
            if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                linkedHashMap.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i9, iIndexOf2);
        }
        b bVar = (b) linkedHashMap.get(strSubstring);
        if (bVar == null) {
            bVar = new b(this, strSubstring);
            linkedHashMap.put(strSubstring, bVar);
        }
        if (iIndexOf2 == -1 || iIndexOf != 5 || !str.startsWith("CLEAN")) {
            if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
                bVar.f2136f = new s(this, bVar);
                return;
            } else {
                if (iIndexOf2 == -1 && iIndexOf == 4 && str.startsWith("READ")) {
                    return;
                }
                n0.b.A("unexpected journal line: ".concat(str));
                return;
            }
        }
        String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
        bVar.e = true;
        bVar.f2136f = null;
        if (strArrSplit.length != bVar.f2137g.f2141h) {
            ai.onnxruntime.b.w(Arrays.toString(strArrSplit), "unexpected journal line: ");
            return;
        }
        for (int i10 = 0; i10 < strArrSplit.length; i10++) {
            try {
                bVar.f2135b[i10] = Long.parseLong(strArrSplit[i10]);
            } catch (NumberFormatException unused) {
                ai.onnxruntime.b.w(Arrays.toString(strArrSplit), "unexpected journal line: ");
                return;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void i0() {
        try {
            BufferedWriter bufferedWriter = this.f2143j;
            if (bufferedWriter != null) {
                c(bufferedWriter);
            }
            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.d), f.f2152a));
            try {
                bufferedWriter2.write("libcore.io.DiskLruCache");
                bufferedWriter2.write("\n");
                bufferedWriter2.write("1");
                bufferedWriter2.write("\n");
                bufferedWriter2.write(Integer.toString(this.f2139f));
                bufferedWriter2.write("\n");
                bufferedWriter2.write(Integer.toString(this.f2141h));
                bufferedWriter2.write("\n");
                bufferedWriter2.write("\n");
                for (b bVar : this.f2144k.values()) {
                    if (bVar.f2136f != null) {
                        bufferedWriter2.write("DIRTY " + bVar.f2134a + '\n');
                    } else {
                        bufferedWriter2.write("CLEAN " + bVar.f2134a + bVar.a() + '\n');
                    }
                }
                c(bufferedWriter2);
                if (this.c.exists()) {
                    j0(this.c, this.e, true);
                }
                j0(this.d, this.c, false);
                this.e.delete();
                this.f2143j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.c, true), f.f2152a));
            } catch (Throwable th) {
                c(bufferedWriter2);
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void k0() {
        while (this.f2142i > this.f2140g) {
            String str = (String) ((Map$Entry) this.f2144k.entrySet().iterator().next()).getKey();
            synchronized (this) {
                try {
                    if (this.f2143j == null) {
                        throw new IllegalStateException("cache is closed");
                    }
                    b bVar = (b) this.f2144k.get(str);
                    if (bVar != null && bVar.f2136f == null) {
                        for (int i9 = 0; i9 < this.f2141h; i9++) {
                            File file = bVar.c[i9];
                            if (file.exists() && !file.delete()) {
                                throw new IOException("failed to delete " + file);
                            }
                            long j9 = this.f2142i;
                            long[] jArr = bVar.f2135b;
                            this.f2142i = j9 - jArr[i9];
                            jArr[i9] = 0;
                        }
                        this.f2145l++;
                        this.f2143j.append((CharSequence) "REMOVE");
                        this.f2143j.append(' ');
                        this.f2143j.append((CharSequence) str);
                        this.f2143j.append('\n');
                        this.f2144k.remove(str);
                        if (d0()) {
                            this.f2147n.submit(this.f2148o);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
