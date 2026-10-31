package p136m5;

import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import p155o4.C2591f;
import p155o4.C2593h;

/* JADX INFO: renamed from: m5.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2400c {

    /* JADX INFO: renamed from: c */
    public static final String[] f6498c = {"*", "FCM", "GCM", ""};

    /* JADX INFO: renamed from: a */
    public final SharedPreferences f6499a;

    /* JADX INFO: renamed from: b */
    public final String f6500b;

    /* JADX WARN: Code duplicated, block: B:12:0x003c  */
    public C2400c(C2591f c2591f) {
        c2591f.m4064a();
        this.f6499a = c2591f.f7208a.getSharedPreferences("com.google.android.gms.appid", 0);
        c2591f.m4064a();
        C2593h c2593h = c2591f.f7210c;
        String str = c2593h.f7226e;
        if (str == null) {
            c2591f.m4064a();
            str = c2593h.f7223b;
            if (str.startsWith("1:") || str.startsWith("2:")) {
                String[] strArrSplit = str.split(":");
                if (strArrSplit.length != 4) {
                    str = null;
                } else {
                    str = strArrSplit[1];
                    if (str.isEmpty()) {
                        str = null;
                    }
                }
            }
        }
        this.f6500b = str;
    }

    /* JADX INFO: renamed from: a */
    public final String m3764a() {
        PublicKey publicKeyGeneratePublic;
        synchronized (this.f6499a) {
            String strEncodeToString = null;
            String string = this.f6499a.getString("|S||P|", null);
            if (string == null) {
                return null;
            }
            try {
                publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(string, 8)));
            } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException e) {
                Log.w("ContentValues", "Invalid key stored " + e);
                publicKeyGeneratePublic = null;
            }
            if (publicKeyGeneratePublic == null) {
                return null;
            }
            try {
                byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(publicKeyGeneratePublic.getEncoded());
                bArrDigest[0] = (byte) (((bArrDigest[0] & 15) + 112) & 255);
                strEncodeToString = Base64.encodeToString(bArrDigest, 0, 8, 11);
            } catch (NoSuchAlgorithmException unused) {
                Log.w("ContentValues", "Unexpected error, device missing required algorithms");
            }
            return strEncodeToString;
        }
    }
}
