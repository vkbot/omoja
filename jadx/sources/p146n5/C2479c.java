package p146n5;

import ai.onnxruntime.AbstractC0074a;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.text.TextUtils;
import android.util.JsonReader;
import android.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import org.json.JSONException;
import org.json.JSONObject;
import p017b2.C0882b;
import p030c5.C0989d;
import p030c5.InterfaceC0991f;
import p032c7.C1008l;
import p099j1.C1929i;
import p114k5.InterfaceC2050b;
import p126l5.C2211f;
import p142n0.C2467b;
import p191s2.AbstractC3185a;
import p199t2.C3239a;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: n5.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2479c {

    /* JADX INFO: renamed from: d */
    public static final Pattern f6828d = Pattern.compile("[0-9]+s");

    /* JADX INFO: renamed from: e */
    public static final Charset f6829e = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: a */
    public final Context f6830a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC2050b f6831b;

    /* JADX INFO: renamed from: c */
    public final C0882b f6832c = new C0882b();

    public C2479c(Context context, InterfaceC2050b interfaceC2050b) {
        this.f6830a = context;
        this.f6831b = interfaceC2050b;
    }

    /* JADX INFO: renamed from: a */
    public static URL m3847a(String str) throws C2211f {
        try {
            return new URL("https://firebaseinstallations.googleapis.com/v1/".concat(str));
        } catch (MalformedURLException e) {
            throw new C2211f(e.getMessage());
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m3848b(HttpURLConnection httpURLConnection, String str, String str2, String str3) {
        InputStream errorStream = httpURLConnection.getErrorStream();
        String str4 = null;
        if (errorStream != null) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, f6829e));
            try {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    sb.append(line);
                    sb.append('\n');
                }
                str4 = String.format("Error when communicating with the Firebase Installations server API. HTTP response: [%d %s: %s]", Integer.valueOf(httpURLConnection.getResponseCode()), httpURLConnection.getResponseMessage(), sb);
            } catch (IOException unused) {
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (IOException unused2) {
                }
                throw th;
            }
            try {
                bufferedReader.close();
            } catch (IOException unused3) {
            }
        }
        if (TextUtils.isEmpty(str4)) {
            return;
        }
        Log.w("Firebase-Installations", str4);
        Log.w("Firebase-Installations", "Firebase options used while communicating with Firebase server APIs: " + str2 + ", " + str3 + (TextUtils.isEmpty(str) ? "" : AbstractC0074a.m161l(", ", str)));
    }

    /* JADX INFO: renamed from: d */
    public static long m3849d(String str) {
        if (!f6828d.matcher(str).matches()) {
            C1929i.m3029k("Invalid Expiration Timestamp.");
            return 0L;
        }
        if (str == null || str.length() == 0) {
            return 0L;
        }
        return Long.parseLong(str.substring(0, str.length() - 1));
    }

    /* JADX INFO: renamed from: e */
    public static C2477a m3850e(HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f6829e));
        C1008l c1008lM3846a = C2478b.m3846a();
        jsonReader.beginObject();
        String strNextString = null;
        String strNextString2 = null;
        String strNextString3 = null;
        C2478b c2478b = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if (strNextName.equals("name")) {
                strNextString = jsonReader.nextString();
            } else if (strNextName.equals("fid")) {
                strNextString2 = jsonReader.nextString();
            } else if (strNextName.equals("refreshToken")) {
                strNextString3 = jsonReader.nextString();
            } else if (strNextName.equals("authToken")) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String strNextName2 = jsonReader.nextName();
                    if (strNextName2.equals("token")) {
                        c1008lM3846a.f1009c = jsonReader.nextString();
                    } else if (strNextName2.equals("expiresIn")) {
                        c1008lM3846a.f1010d = Long.valueOf(m3849d(jsonReader.nextString()));
                    } else {
                        jsonReader.skipValue();
                    }
                }
                C2478b c2478bM1214a = c1008lM3846a.m1214a();
                jsonReader.endObject();
                c2478b = c2478bM1214a;
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        return new C2477a(strNextString, strNextString2, strNextString3, c2478b, 1);
    }

    /* JADX INFO: renamed from: f */
    public static C2478b m3851f(HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f6829e));
        C1008l c1008lM3846a = C2478b.m3846a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if (strNextName.equals("token")) {
                c1008lM3846a.f1009c = jsonReader.nextString();
            } else if (strNextName.equals("expiresIn")) {
                c1008lM3846a.f1010d = Long.valueOf(m3849d(jsonReader.nextString()));
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        c1008lM3846a.f1008b = 1;
        return c1008lM3846a.m1214a();
    }

    /* JADX INFO: renamed from: g */
    public static void m3852g(HttpURLConnection httpURLConnection, String str, String str2) throws IOException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("fid", str);
            jSONObject.put("appId", str2);
            jSONObject.put("authVersion", "FIS_v2");
            jSONObject.put("sdkVersion", "a:17.2.0");
            m3854i(httpURLConnection, jSONObject.toString().getBytes("UTF-8"));
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: renamed from: h */
    public static void m3853h(HttpURLConnection httpURLConnection) throws IOException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("sdkVersion", "a:17.2.0");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("installation", jSONObject);
            m3854i(httpURLConnection, jSONObject2.toString().getBytes("UTF-8"));
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: renamed from: i */
    public static void m3854i(HttpURLConnection httpURLConnection, byte[] bArr) throws IOException {
        OutputStream outputStream = httpURLConnection.getOutputStream();
        if (outputStream == null) {
            C2467b.m3820A("Cannot send request to FIS servers. No OutputStream available.");
            return;
        }
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
        try {
            gZIPOutputStream.write(bArr);
        } finally {
            try {
                gZIPOutputStream.close();
                outputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00a6  */
    /* JADX INFO: renamed from: c */
    public final HttpURLConnection m3855c(URL url, String str) throws C2211f {
        byte[] bArrDigest;
        MessageDigest messageDigest;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.addRequestProperty("Content-Type", "application/json");
            httpURLConnection.addRequestProperty("Accept", "application/json");
            httpURLConnection.addRequestProperty("Content-Encoding", "gzip");
            httpURLConnection.addRequestProperty("Cache-Control", "no-cache");
            Context context = this.f6830a;
            httpURLConnection.addRequestProperty("X-Android-Package", context.getPackageName());
            InterfaceC0991f interfaceC0991f = (InterfaceC0991f) this.f6831b.get();
            if (interfaceC0991f != null) {
                try {
                    httpURLConnection.addRequestProperty("x-firebase-client", (String) AbstractC3656k.m5857c(((C0989d) interfaceC0991f).m1131a()));
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    Log.w("ContentValues", "Failed to get heartbeats header", e);
                } catch (ExecutionException e6) {
                    Log.w("ContentValues", "Failed to get heartbeats header", e6);
                }
            }
            String string = null;
            try {
                PackageInfo packageInfo = C3239a.m5179a(context).f1169c.getPackageManager().getPackageInfo(context.getPackageName(), 64);
                Signature[] signatureArr = packageInfo.signatures;
                if (signatureArr == null || signatureArr.length != 1) {
                    bArrDigest = null;
                } else {
                    int i10 = 0;
                    while (true) {
                        if (i10 >= 2) {
                            messageDigest = null;
                            break;
                        }
                        try {
                            messageDigest = MessageDigest.getInstance("SHA1");
                            if (messageDigest != null) {
                                break;
                            }
                            i10++;
                        } catch (NoSuchAlgorithmException unused) {
                        }
                    }
                    if (messageDigest == null) {
                        bArrDigest = null;
                    } else {
                        bArrDigest = messageDigest.digest(packageInfo.signatures[0].toByteArray());
                    }
                }
                if (bArrDigest == null) {
                    Log.e("ContentValues", "Could not get fingerprint hash for package: " + context.getPackageName());
                } else {
                    int length = bArrDigest.length;
                    StringBuilder sb = new StringBuilder(length + length);
                    for (int i11 = 0; i11 < length; i11++) {
                        char[] cArr = AbstractC3185a.f9268a;
                        sb.append(cArr[(bArrDigest[i11] & 240) >>> 4]);
                        sb.append(cArr[bArrDigest[i11] & 15]);
                    }
                    string = sb.toString();
                }
            } catch (PackageManager.NameNotFoundException e10) {
                Log.e("ContentValues", "No such package: " + context.getPackageName(), e10);
            }
            httpURLConnection.addRequestProperty("X-Android-Cert", string);
            httpURLConnection.addRequestProperty("x-goog-api-key", str);
            return httpURLConnection;
        } catch (IOException unused2) {
            throw new C2211f("Firebase Installations Service is unavailable. Please try again later.");
        }
    }
}
