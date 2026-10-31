package p030c5;

import android.util.Base64OutputStream;
import androidx.exifinterface.media.ExifInterface;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONObject;
import p184r5.C3104b;
import p184r5.C3105c;

/* JADX INFO: renamed from: c5.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class CallableC0988c implements Callable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f940b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C0989d f941c;

    public /* synthetic */ CallableC0988c(C0989d c0989d, int i10) {
        this.f940b = i10;
        this.f941c = c0989d;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String string;
        Set setUnmodifiableSet;
        Set setUnmodifiableSet2;
        switch (this.f940b) {
            case 0:
                C0989d c0989d = this.f941c;
                synchronized (c0989d) {
                    try {
                        C0994i c0994i = (C0994i) c0989d.f942a.get();
                        ArrayList arrayListM1186c = c0994i.m1186c();
                        c0994i.m1185b();
                        JSONArray jSONArray = new JSONArray();
                        for (int i10 = 0; i10 < arrayListM1186c.size(); i10++) {
                            C0986a c0986a = (C0986a) arrayListM1186c.get(i10);
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("agent", c0986a.f935a);
                            jSONObject.put("dates", new JSONArray((Collection) c0986a.f936b));
                            jSONArray.put(jSONObject);
                        }
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("heartbeats", jSONArray);
                        jSONObject2.put("version", ExifInterface.GPS_MEASUREMENT_2D);
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        Base64OutputStream base64OutputStream = new Base64OutputStream(byteArrayOutputStream, 11);
                        try {
                            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(base64OutputStream);
                            try {
                                gZIPOutputStream.write(jSONObject2.toString().getBytes("UTF-8"));
                                gZIPOutputStream.close();
                                base64OutputStream.close();
                                string = byteArrayOutputStream.toString("UTF-8");
                            } catch (Throwable th) {
                                try {
                                    gZIPOutputStream.close();
                                    break;
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                                throw th;
                            }
                        } catch (Throwable th3) {
                            try {
                                base64OutputStream.close();
                                break;
                            } catch (Throwable th4) {
                                th3.addSuppressed(th4);
                            }
                            throw th3;
                        }
                    } catch (Throwable th5) {
                        throw th5;
                    }
                }
                return string;
            default:
                C0989d c0989d2 = this.f941c;
                synchronized (c0989d2) {
                    C0994i c0994i2 = (C0994i) c0989d2.f942a.get();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    C3104b c3104b = (C3104b) c0989d2.f944c.get();
                    C3105c c3105c = c3104b.f8864b;
                    synchronized (((HashSet) c3105c.f8867c)) {
                        setUnmodifiableSet = Collections.unmodifiableSet((HashSet) c3105c.f8867c);
                        break;
                    }
                    boolean zIsEmpty = setUnmodifiableSet.isEmpty();
                    String string2 = c3104b.f8863a;
                    if (!zIsEmpty) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(string2);
                        sb.append(' ');
                        synchronized (((HashSet) c3105c.f8867c)) {
                            setUnmodifiableSet2 = Collections.unmodifiableSet((HashSet) c3105c.f8867c);
                            break;
                        }
                        sb.append(C3104b.m4937a(setUnmodifiableSet2));
                        string2 = sb.toString();
                    }
                    c0994i2.m1190g(jCurrentTimeMillis, string2);
                }
                return null;
        }
    }
}
