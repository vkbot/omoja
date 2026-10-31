package c5;

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

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f495b;
    public final /* synthetic */ d c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(d dVar, int i9) {
        this.f495b = i9;
        this.c = dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Callable
    public final Object call() {
        String string;
        Set setUnmodifiableSet;
        Set setUnmodifiableSet2;
        switch (this.f495b) {
            case 0:
                d dVar = this.c;
                synchronized (dVar) {
                    try {
                        i iVar = (i) dVar.f496a.get();
                        ArrayList arrayListC = iVar.c();
                        iVar.b();
                        JSONArray jSONArray = new JSONArray();
                        for (int i9 = 0; i9 < arrayListC.size(); i9++) {
                            a aVar = (a) arrayListC.get(i9);
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("agent", aVar.f491a);
                            jSONObject.put("dates", new JSONArray((Collection) aVar.f492b));
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
                d dVar2 = this.c;
                synchronized (dVar2) {
                    i iVar2 = (i) dVar2.f496a.get();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    r5.b bVar = (r5.b) dVar2.c.get();
                    r5.c cVar = bVar.f4986b;
                    synchronized (((HashSet) cVar.c)) {
                        setUnmodifiableSet = Collections.unmodifiableSet((HashSet) cVar.c);
                        break;
                    }
                    boolean zIsEmpty = setUnmodifiableSet.isEmpty();
                    String string2 = bVar.f4985a;
                    if (!zIsEmpty) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(string2);
                        sb.append(' ');
                        synchronized (((HashSet) cVar.c)) {
                            setUnmodifiableSet2 = Collections.unmodifiableSet((HashSet) cVar.c);
                            break;
                        }
                        sb.append(r5.b.a(setUnmodifiableSet2));
                        string2 = sb.toString();
                    }
                    iVar2.g(jCurrentTimeMillis, string2);
                }
                return null;
        }
    }
}
