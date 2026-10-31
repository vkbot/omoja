package p190s1;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import com.google.protobuf.AbstractC1178q;
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
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.apache.commons.net.ftp.FTPReply;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: s1.x */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3179x {

    /* JADX INFO: renamed from: k */
    public static C3179x f9248k;

    /* JADX INFO: renamed from: a */
    public final Context f9249a;

    /* JADX INFO: renamed from: b */
    public final String f9250b;

    /* JADX INFO: renamed from: c */
    public final Handler f9251c = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: d */
    public final ExecutorService f9252d = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: e */
    public final ThreadPoolExecutor f9253e = new ThreadPoolExecutor(1, 1, 0, TimeUnit.MILLISECONDS, new ArrayBlockingQueue(128), new ThreadPoolExecutor.AbortPolicy());

    /* JADX INFO: renamed from: f */
    public volatile boolean f9254f;

    /* JADX INFO: renamed from: g */
    public boolean f9255g;

    /* JADX INFO: renamed from: h */
    public Socket f9256h;

    /* JADX INFO: renamed from: i */
    public BufferedReader f9257i;

    /* JADX INFO: renamed from: j */
    public PrintWriter f9258j;

    public C3179x(Context context) {
        this.f9249a = context;
        SharedPreferences sharedPreferences = context.getSharedPreferences(AbstractC1387m.m2421h(new byte[]{-78, 35, -73, -9, -37, 51, 4, -31, -127, 53, -85, -9, -36, 52, 22, -52, -68, 48, -85, -3, -33, 62}, new byte[]{-34, 66, -62, -103, -72, 91, 97, -109}), 0);
        String string = sharedPreferences.getString(AbstractC1387m.m2421h(new byte[]{-109, -31, -47, 119, 14}, new byte[]{-25, -114, -70, 18, 96, -46, 85, -79}), null);
        if (string == null) {
            string = UUID.randomUUID().toString();
            sharedPreferences.edit().putString(AbstractC1387m.m2421h(new byte[]{-50, -126, Base64.padSymbol, 106, -59}, new byte[]{-70, -19, 86, 15, -85, -23, -124, -113}), string).apply();
        }
        this.f9250b = string;
    }

    /* JADX INFO: renamed from: a */
    public static synchronized C3179x m5107a(Context context) {
        try {
            if (f9248k == null) {
                f9248k = new C3179x(context.getApplicationContext());
            }
        } catch (Throwable th) {
            throw th;
        }
        return f9248k;
    }

    /* JADX INFO: renamed from: b */
    public static String m5108b(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(AbstractC1387m.m2421h(new byte[]{-10}, new byte[]{-47, -92, -98, -12, 66, 22, -8, 15}));
        sb.append(str.replace(AbstractC1387m.m2421h(new byte[]{-56}, new byte[]{-17, 89, 125, 69, -100, 12, 17, -54}), AbstractC1387m.m2421h(new byte[]{60, 18, 105, 47}, new byte[]{27, 78, 78, 8, -90, -85, 8, 108})));
        return AbstractC1178q.m2075i(new byte[]{82}, new byte[]{117, -85, 11, -68, 68, 14, 30, 88}, sb);
    }

    /* JADX INFO: renamed from: c */
    public final synchronized String m5109c(String str) {
        String strM5110d;
        try {
            strM5110d = m5110d(str);
            if (this.f9256h == null && !str.startsWith(AbstractC1387m.m2421h(new byte[]{90, -121, -49, 38, 63, 1}, new byte[]{14, -56, -102, 101, 119, 33, 70, -116}))) {
                strM5110d = m5110d(str);
            }
            if (AbstractC1387m.m2421h(new byte[]{-63, 10}, new byte[]{-114, 65, 98, -3, -33, 69, -82, -65}).equals(strM5110d)) {
                this.f9254f = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return strM5110d;
    }

    /* JADX INFO: renamed from: d */
    public final String m5110d(String str) {
        try {
            Socket socket = this.f9256h;
            if (socket == null || socket.isClosed()) {
                Socket socket2 = new Socket();
                this.f9256h = socket2;
                socket2.connect(new InetSocketAddress(AbstractC1387m.m2421h(new byte[]{-20, 27, -21, -116, 81, -28, 12, 84, -20}, new byte[]{-35, 41, -36, -94, 97, -54, 60, 122}), 38766), FTPReply.FILE_ACTION_PENDING);
                this.f9256h.setSoTimeout(8000);
                this.f9257i = new BufferedReader(new InputStreamReader(this.f9256h.getInputStream(), AbstractC1387m.m2421h(new byte[]{121, 65, 89, -72, -20}, new byte[]{44, 21, 31, -107, -44, -38, 84, -73})));
                PrintWriter printWriter = new PrintWriter((Writer) new OutputStreamWriter(this.f9256h.getOutputStream(), AbstractC1387m.m2421h(new byte[]{47, -102, -65, -32, -101}, new byte[]{122, -50, -7, -51, -93, 24, 10, 57})), true);
                this.f9258j = printWriter;
                printWriter.println(this.f9250b);
                if (!AbstractC1387m.m2421h(new byte[]{90, -72, 91, 23, -120}, new byte[]{8, -3, 26, 83, -47, -88, -115, 27}).equals(this.f9257i.readLine())) {
                    throw new IOException(AbstractC1387m.m2421h(new byte[]{-38, 101, 100, 107, -3, 34, -111, 19, -25, 116, 96, 126, -10, 36, -40, 17, -13, 116, 97, 116, -10, 112, -41, 19, -5, 108, 109, ByteCompanionObject.MAX_VALUE}, new byte[]{-110, 0, 8, 27, -104, 80, -79, 114}));
                }
            }
            this.f9258j.println(str);
            String line = this.f9257i.readLine();
            if (line != null) {
                return line;
            }
            throw new EOFException(AbstractC1387m.m2421h(new byte[]{-102, -23, 67, -120, -89, -10, -19, 87, -69, -1, 76, -105, -84, -22, -88, 80, -90, -23, 75}, new byte[]{-46, -116, 47, -8, -62, -124, -51, 51}));
        } catch (Exception e) {
            Socket socket3 = this.f9256h;
            if (socket3 != null) {
                try {
                    socket3.close();
                } catch (IOException unused) {
                }
            }
            this.f9256h = null;
            this.f9254f = false;
            return AbstractC1387m.m2421h(new byte[]{42, 46, 8, -95, 91, -85}, new byte[]{111, 124, 90, -18, 9, -117, 9, 6}).concat(e.getClass().getSimpleName());
        }
    }
}
