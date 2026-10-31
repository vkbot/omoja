package s1;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import java.io.BufferedReader;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.UUID;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor$AbortPolicy;
import java.util.concurrent.TimeUnit;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class x {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static x f5225k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f5226a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f5227b;
    public final Handler c = new Handler(Looper.getMainLooper());
    public final ExecutorService d = Executors.newSingleThreadExecutor();
    public final ThreadPoolExecutor e = new ThreadPoolExecutor(1, 1, 0, TimeUnit.MILLISECONDS, new ArrayBlockingQueue(128), new ThreadPoolExecutor$AbortPolicy());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile boolean f5228f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f5229g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Socket f5230h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public BufferedReader f5231i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public PrintWriter f5232j;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public x(Context context) {
        this.f5226a = context;
        SharedPreferences sharedPreferences = context.getSharedPreferences(e0.m.h(new byte[]{-78, 35, -73, -9, -37, 51, 4, -31, -127, 53, -85, -9, -36, 52, 22, -52, -68, 48, -85, -3, -33, 62}, new byte[]{-34, 66, -62, -103, -72, 91, 97, -109}), 0);
        String string = sharedPreferences.getString(e0.m.h(new byte[]{-109, -31, -47, 119, 14}, new byte[]{-25, -114, -70, 18, 96, -46, 85, -79}), null);
        if (string == null) {
            string = UUID.randomUUID().toString();
            sharedPreferences.edit().putString(e0.m.h(new byte[]{-50, -126, Base64.padSymbol, 106, -59}, new byte[]{-70, -19, 86, 15, -85, -23, -124, -113}), string).apply();
        }
        this.f5227b = string;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static synchronized x a(Context context) {
        try {
            if (f5225k == null) {
                f5225k = new x(context.getApplicationContext());
            }
        } catch (Throwable th) {
            throw th;
        }
        return f5225k;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String b(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(e0.m.h(new byte[]{-10}, new byte[]{-47, -92, -98, -12, 66, 22, -8, 15}));
        sb.append(str.replace(e0.m.h(new byte[]{-56}, new byte[]{-17, 89, 125, 69, -100, 12, 17, -54}), e0.m.h(new byte[]{60, 18, 105, 47}, new byte[]{27, 78, 78, 8, -90, -85, 8, 108})));
        return com.google.protobuf.q.i(new byte[]{82}, new byte[]{117, -85, 11, -68, 68, 14, 30, 88}, sb);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized String c(String str) {
        String strD;
        try {
            strD = d(str);
            if (this.f5230h == null && !str.startsWith(e0.m.h(new byte[]{90, -121, -49, 38, 63, 1}, new byte[]{14, -56, -102, 101, 119, 33, 70, -116}))) {
                strD = d(str);
            }
            if (e0.m.h(new byte[]{-63, 10}, new byte[]{-114, 65, 98, -3, -33, 69, -82, -65}).equals(strD)) {
                this.f5228f = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return strD;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String d(String str) {
        try {
            Socket socket = this.f5230h;
            if (socket == null || socket.isClosed()) {
                Socket socket2 = new Socket();
                this.f5230h = socket2;
                socket2.connect(new InetSocketAddress(e0.m.h(new byte[]{-20, 27, -21, -116, 81, -28, 12, 84, -20}, new byte[]{-35, 41, -36, -94, 97, -54, 60, 122}), 38766), 350);
                this.f5230h.setSoTimeout(8000);
                this.f5231i = new BufferedReader(new InputStreamReader(this.f5230h.getInputStream(), e0.m.h(new byte[]{121, 65, 89, -72, -20}, new byte[]{44, 21, 31, -107, -44, -38, 84, -73})));
                PrintWriter printWriter = new PrintWriter((Writer) new OutputStreamWriter(this.f5230h.getOutputStream(), e0.m.h(new byte[]{47, -102, -65, -32, -101}, new byte[]{122, -50, -7, -51, -93, 24, 10, 57})), true);
                this.f5232j = printWriter;
                printWriter.println(this.f5227b);
                if (!e0.m.h(new byte[]{90, -72, 91, 23, -120}, new byte[]{8, -3, 26, 83, -47, -88, -115, 27}).equals(this.f5231i.readLine())) {
                    throw new IOException(e0.m.h(new byte[]{-38, 101, 100, 107, -3, 34, -111, 19, -25, 116, 96, 126, -10, 36, -40, 17, -13, 116, 97, 116, -10, 112, -41, 19, -5, 108, 109, ByteCompanionObject.MAX_VALUE}, new byte[]{-110, 0, 8, 27, -104, 80, -79, 114}));
                }
            }
            this.f5232j.println(str);
            String line = this.f5231i.readLine();
            if (line != null) {
                return line;
            }
            throw new EOFException(e0.m.h(new byte[]{-102, -23, 67, -120, -89, -10, -19, 87, -69, -1, 76, -105, -84, -22, -88, 80, -90, -23, 75}, new byte[]{-46, -116, 47, -8, -62, -124, -51, 51}));
        } catch (Exception e) {
            Socket socket3 = this.f5230h;
            if (socket3 != null) {
                try {
                    socket3.close();
                } catch (IOException unused) {
                }
            }
            this.f5230h = null;
            this.f5228f = false;
            return e0.m.h(new byte[]{42, 46, 8, -95, 91, -85}, new byte[]{111, 124, 90, -18, 9, -117, 9, 6}).concat(e.getClass().getSimpleName());
        }
    }
}
