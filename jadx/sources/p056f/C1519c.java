package p056f;

import ai.onnxruntime.C0075b;
import android.os.Build;
import android.os.StrictMode;
import com.bumptech.glide.manager.C1073s;
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
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p045d8.CallableC1313a;
import p099j1.C1929i;
import p142n0.C2467b;
import p184r5.C3105c;

/* JADX INFO: renamed from: f.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1519c implements Closeable {

    /* JADX INFO: renamed from: b */
    public final File f3718b;

    /* JADX INFO: renamed from: c */
    public final File f3719c;

    /* JADX INFO: renamed from: d */
    public final File f3720d;

    /* JADX INFO: renamed from: e */
    public final File f3721e;

    /* JADX INFO: renamed from: g */
    public final long f3723g;

    /* JADX INFO: renamed from: j */
    public BufferedWriter f3726j;

    /* JADX INFO: renamed from: l */
    public int f3728l;

    /* JADX INFO: renamed from: i */
    public long f3725i = 0;

    /* JADX INFO: renamed from: k */
    public final LinkedHashMap f3727k = new LinkedHashMap(0, 0.75f, true);

    /* JADX INFO: renamed from: m */
    public long f3729m = 0;

    /* JADX INFO: renamed from: n */
    public final ThreadPoolExecutor f3730n = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC1517a());

    /* JADX INFO: renamed from: o */
    public final CallableC1313a f3731o = new CallableC1313a(1, this);

    /* JADX INFO: renamed from: f */
    public final int f3722f = 1;

    /* JADX INFO: renamed from: h */
    public final int f3724h = 1;

    public C1519c(File file, long j10) {
        this.f3718b = file;
        this.f3719c = new File(file, "journal");
        this.f3720d = new File(file, "journal.tmp");
        this.f3721e = new File(file, "journal.bkp");
        this.f3723g = j10;
    }

    /* JADX INFO: renamed from: V */
    public static void m2585V(BufferedWriter bufferedWriter) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            bufferedWriter.flush();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            bufferedWriter.flush();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m2586b(C1519c c1519c, C1073s c1073s, boolean z9) {
        synchronized (c1519c) {
            C1518b c1518b = (C1518b) c1073s.f1178c;
            if (c1518b.f3716f != c1073s) {
                throw new IllegalStateException();
            }
            if (z9 && !c1518b.f3715e) {
                for (int i10 = 0; i10 < c1519c.f3724h; i10++) {
                    if (!((boolean[]) c1073s.f1179d)[i10]) {
                        c1073s.m1345a();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i10);
                    }
                    if (!c1518b.f3714d[i10].exists()) {
                        c1073s.m1345a();
                        return;
                    }
                }
            }
            for (int i11 = 0; i11 < c1519c.f3724h; i11++) {
                File file = c1518b.f3714d[i11];
                if (!z9) {
                    m2590y(file);
                } else if (file.exists()) {
                    File file2 = c1518b.f3713c[i11];
                    file.renameTo(file2);
                    long j10 = c1518b.f3712b[i11];
                    long length = file2.length();
                    c1518b.f3712b[i11] = length;
                    c1519c.f3725i = (c1519c.f3725i - j10) + length;
                }
            }
            c1519c.f3728l++;
            c1518b.f3716f = null;
            if (c1518b.f3715e || z9) {
                c1518b.f3715e = true;
                c1519c.f3726j.append((CharSequence) "CLEAN");
                c1519c.f3726j.append(' ');
                c1519c.f3726j.append((CharSequence) c1518b.f3711a);
                c1519c.f3726j.append((CharSequence) c1518b.m2584a());
                c1519c.f3726j.append('\n');
                if (z9) {
                    c1519c.f3729m++;
                }
            } else {
                c1519c.f3727k.remove(c1518b.f3711a);
                c1519c.f3726j.append((CharSequence) "REMOVE");
                c1519c.f3726j.append(' ');
                c1519c.f3726j.append((CharSequence) c1518b.f3711a);
                c1519c.f3726j.append('\n');
            }
            m2585V(c1519c.f3726j);
            if (c1519c.f3725i > c1519c.f3723g || c1519c.m2593d0()) {
                c1519c.f3730n.submit(c1519c.f3731o);
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public static void m2587c(BufferedWriter bufferedWriter) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            bufferedWriter.close();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            bufferedWriter.close();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    /* JADX INFO: renamed from: e0 */
    public static C1519c m2588e0(File file, long j10) throws IOException {
        if (j10 <= 0) {
            C1929i.m3029k("maxSize <= 0");
            return null;
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                m2589j0(file2, file3, false);
            }
        }
        C1519c c1519c = new C1519c(file, j10);
        if (c1519c.f3719c.exists()) {
            try {
                c1519c.m2595g0();
                c1519c.m2594f0();
                return c1519c;
            } catch (IOException e) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                c1519c.close();
                AbstractC1522f.m2600a(c1519c.f3718b);
            }
        }
        file.mkdirs();
        C1519c c1519c2 = new C1519c(file, j10);
        c1519c2.m2597i0();
        return c1519c2;
    }

    /* JADX INFO: renamed from: j0 */
    public static void m2589j0(File file, File file2, boolean z9) throws IOException {
        if (z9) {
            m2590y(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* JADX INFO: renamed from: y */
    public static void m2590y(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    /* JADX INFO: renamed from: S */
    public final C1073s m2591S(String str) {
        synchronized (this) {
            try {
                if (this.f3726j == null) {
                    throw new IllegalStateException("cache is closed");
                }
                C1518b c1518b = (C1518b) this.f3727k.get(str);
                if (c1518b == null) {
                    c1518b = new C1518b(this, str);
                    this.f3727k.put(str, c1518b);
                } else if (c1518b.f3716f != null) {
                    return null;
                }
                C1073s c1073s = new C1073s(this, c1518b);
                c1518b.f3716f = c1073s;
                this.f3726j.append((CharSequence) "DIRTY");
                this.f3726j.append(' ');
                this.f3726j.append((CharSequence) str);
                this.f3726j.append('\n');
                m2585V(this.f3726j);
                return c1073s;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: c0 */
    public final synchronized C3105c m2592c0(String str) {
        if (this.f3726j == null) {
            throw new IllegalStateException("cache is closed");
        }
        C1518b c1518b = (C1518b) this.f3727k.get(str);
        if (c1518b == null) {
            return null;
        }
        if (!c1518b.f3715e) {
            return null;
        }
        for (File file : c1518b.f3713c) {
            if (!file.exists()) {
                return null;
            }
        }
        this.f3728l++;
        this.f3726j.append((CharSequence) "READ");
        this.f3726j.append(' ');
        this.f3726j.append((CharSequence) str);
        this.f3726j.append('\n');
        if (m2593d0()) {
            this.f3730n.submit(this.f3731o);
        }
        return new C3105c(11, c1518b.f3713c);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        try {
            if (this.f3726j == null) {
                return;
            }
            ArrayList arrayList = new ArrayList(this.f3727k.values());
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                C1073s c1073s = ((C1518b) obj).f3716f;
                if (c1073s != null) {
                    c1073s.m1345a();
                }
            }
            m2598k0();
            m2587c(this.f3726j);
            this.f3726j = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: d0 */
    public final boolean m2593d0() {
        int i10 = this.f3728l;
        return i10 >= 2000 && i10 >= this.f3727k.size();
    }

    /* JADX INFO: renamed from: f0 */
    public final void m2594f0() throws IOException {
        m2590y(this.f3720d);
        Iterator it = this.f3727k.values().iterator();
        while (it.hasNext()) {
            C1518b c1518b = (C1518b) it.next();
            C1073s c1073s = c1518b.f3716f;
            int i10 = this.f3724h;
            int i11 = 0;
            if (c1073s == null) {
                while (i11 < i10) {
                    this.f3725i += c1518b.f3712b[i11];
                    i11++;
                }
            } else {
                c1518b.f3716f = null;
                while (i11 < i10) {
                    m2590y(c1518b.f3713c[i11]);
                    m2590y(c1518b.f3714d[i11]);
                    i11++;
                }
                it.remove();
            }
        }
    }

    /* JADX INFO: renamed from: g0 */
    public final void m2595g0() {
        File file = this.f3719c;
        C1521e c1521e = new C1521e(new FileInputStream(file), AbstractC1522f.f3738a);
        try {
            String strM2599b = c1521e.m2599b();
            String strM2599b2 = c1521e.m2599b();
            String strM2599b3 = c1521e.m2599b();
            String strM2599b4 = c1521e.m2599b();
            String strM2599b5 = c1521e.m2599b();
            if (!"libcore.io.DiskLruCache".equals(strM2599b) || !"1".equals(strM2599b2) || !Integer.toString(this.f3722f).equals(strM2599b3) || !Integer.toString(this.f3724h).equals(strM2599b4) || !"".equals(strM2599b5)) {
                throw new IOException("unexpected journal header: [" + strM2599b + ", " + strM2599b2 + ", " + strM2599b4 + ", " + strM2599b5 + "]");
            }
            int i10 = 0;
            while (true) {
                try {
                    m2596h0(c1521e.m2599b());
                    i10++;
                } catch (EOFException unused) {
                    this.f3728l = i10 - this.f3727k.size();
                    if (c1521e.f3737f == -1) {
                        m2597i0();
                    } else {
                        this.f3726j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true), AbstractC1522f.f3738a));
                    }
                    try {
                        c1521e.close();
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
                c1521e.close();
            } catch (RuntimeException e6) {
                throw e6;
            } catch (Exception unused3) {
            }
            throw th;
        }
    }

    /* JADX INFO: renamed from: h0 */
    public final void m2596h0(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            C2467b.m3820A("unexpected journal line: ".concat(str));
            return;
        }
        int i10 = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i10);
        LinkedHashMap linkedHashMap = this.f3727k;
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i10);
            if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                linkedHashMap.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i10, iIndexOf2);
        }
        C1518b c1518b = (C1518b) linkedHashMap.get(strSubstring);
        if (c1518b == null) {
            c1518b = new C1518b(this, strSubstring);
            linkedHashMap.put(strSubstring, c1518b);
        }
        if (iIndexOf2 == -1 || iIndexOf != 5 || !str.startsWith("CLEAN")) {
            if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
                c1518b.f3716f = new C1073s(this, c1518b);
                return;
            } else {
                if (iIndexOf2 == -1 && iIndexOf == 4 && str.startsWith("READ")) {
                    return;
                }
                C2467b.m3820A("unexpected journal line: ".concat(str));
                return;
            }
        }
        String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
        c1518b.f3715e = true;
        c1518b.f3716f = null;
        if (strArrSplit.length != c1518b.f3717g.f3724h) {
            C0075b.m198w(Arrays.toString(strArrSplit), "unexpected journal line: ");
            return;
        }
        for (int i11 = 0; i11 < strArrSplit.length; i11++) {
            try {
                c1518b.f3712b[i11] = Long.parseLong(strArrSplit[i11]);
            } catch (NumberFormatException unused) {
                C0075b.m198w(Arrays.toString(strArrSplit), "unexpected journal line: ");
                return;
            }
        }
    }

    /* JADX INFO: renamed from: i0 */
    public final synchronized void m2597i0() {
        try {
            BufferedWriter bufferedWriter = this.f3726j;
            if (bufferedWriter != null) {
                m2587c(bufferedWriter);
            }
            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f3720d), AbstractC1522f.f3738a));
            try {
                bufferedWriter2.write("libcore.io.DiskLruCache");
                bufferedWriter2.write("\n");
                bufferedWriter2.write("1");
                bufferedWriter2.write("\n");
                bufferedWriter2.write(Integer.toString(this.f3722f));
                bufferedWriter2.write("\n");
                bufferedWriter2.write(Integer.toString(this.f3724h));
                bufferedWriter2.write("\n");
                bufferedWriter2.write("\n");
                for (C1518b c1518b : this.f3727k.values()) {
                    if (c1518b.f3716f != null) {
                        bufferedWriter2.write("DIRTY " + c1518b.f3711a + '\n');
                    } else {
                        bufferedWriter2.write("CLEAN " + c1518b.f3711a + c1518b.m2584a() + '\n');
                    }
                }
                m2587c(bufferedWriter2);
                if (this.f3719c.exists()) {
                    m2589j0(this.f3719c, this.f3721e, true);
                }
                m2589j0(this.f3720d, this.f3719c, false);
                this.f3721e.delete();
                this.f3726j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f3719c, true), AbstractC1522f.f3738a));
            } catch (Throwable th) {
                m2587c(bufferedWriter2);
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: renamed from: k0 */
    public final void m2598k0() {
        while (this.f3725i > this.f3723g) {
            String str = (String) ((Map.Entry) this.f3727k.entrySet().iterator().next()).getKey();
            synchronized (this) {
                try {
                    if (this.f3726j == null) {
                        throw new IllegalStateException("cache is closed");
                    }
                    C1518b c1518b = (C1518b) this.f3727k.get(str);
                    if (c1518b != null && c1518b.f3716f == null) {
                        for (int i10 = 0; i10 < this.f3724h; i10++) {
                            File file = c1518b.f3713c[i10];
                            if (file.exists() && !file.delete()) {
                                throw new IOException("failed to delete " + file);
                            }
                            long j10 = this.f3725i;
                            long[] jArr = c1518b.f3712b;
                            this.f3725i = j10 - jArr[i10];
                            jArr[i10] = 0;
                        }
                        this.f3728l++;
                        this.f3726j.append((CharSequence) "REMOVE");
                        this.f3726j.append(' ');
                        this.f3726j.append((CharSequence) str);
                        this.f3726j.append('\n');
                        this.f3727k.remove(str);
                        if (m2593d0()) {
                            this.f3730n.submit(this.f3731o);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
