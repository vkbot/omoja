package p245y0;

import android.util.Base64;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.SecureRandom;
import javax.crypto.Mac;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: y0.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3625c {

    /* JADX INFO: renamed from: a */
    public static final SecureRandom f10768a = new SecureRandom();

    /* JADX INFO: renamed from: b */
    public static final byte[] f10769b = AbstractC1387m.m2421h(new byte[]{91, 108, -76, 123, -90, 27, 43, -62, 88, 106, -92, 123, -89, 7, 35, -54, 66, ByteCompanionObject.MAX_VALUE, -81, 118, -89, 10, 52, -74}, new byte[]{17, 47, -32, 36, -13, 85, 98, -124}).getBytes(StandardCharsets.UTF_8);

    /* JADX INFO: renamed from: a */
    public static boolean m5798a(String str, String str2) {
        Charset charset = StandardCharsets.UTF_8;
        return MessageDigest.isEqual(str.getBytes(charset), str2.getBytes(charset));
    }

    /* JADX INFO: renamed from: b */
    public static String m5799b() {
        byte[] bArr = new byte[24];
        f10768a.nextBytes(bArr);
        return Base64.encodeToString(bArr, 2);
    }

    /* JADX INFO: renamed from: c */
    public static String m5800c(String str, String str2, String str3, String str4) {
        try {
            PBEKeySpec pBEKeySpec = new PBEKeySpec(str.toCharArray(), f10769b, AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH, 256);
            byte[] encoded = SecretKeyFactory.getInstance(AbstractC1387m.m2421h(new byte[]{13, -57, 81, -91, -69, 116, -63, 109, 41, -19, 82, -116, -100, 37, -59, 76, 28, -73, 47, -41}, new byte[]{93, -123, 26, -31, -3, 70, -106, 4})).generateSecret(pBEKeySpec).getEncoded();
            pBEKeySpec.clearPassword();
            Mac mac = Mac.getInstance(AbstractC1387m.m2421h(new byte[]{92, -117, 13, -21, 118, 75, 35, -127, 33, -48}, new byte[]{20, -26, 108, -120, 37, 3, 98, -77}));
            mac.init(new SecretKeySpec(encoded, AbstractC1387m.m2421h(new byte[]{111, -123, -78, 43, -127, 27, -124, -48, 18, -34}, new byte[]{39, -24, -45, 72, -46, 83, -59, -30})));
            return Base64.encodeToString(mac.doFinal((AbstractC1387m.m2421h(new byte[]{-21, 40, -64, 102, -91}, new byte[]{-95, 107, -108, 84, -39, -29, 3, 7}) + str2 + AbstractC1387m.m2421h(new byte[]{88}, new byte[]{36, 14, 96, 74, 39, -42, -9, 117}) + str3 + AbstractC1387m.m2421h(new byte[]{57}, new byte[]{69, -72, 9, 99, 21, 14, -48, 25}) + str4).getBytes(StandardCharsets.UTF_8)), 2);
        } catch (Exception e) {
            throw new IllegalStateException(AbstractC1387m.m2421h(new byte[]{113, 77, -89, -12, -29, -8, -4, -11, 83, 64, -86, -17, -32, -19, -88, -13, 18, 88, -69, -5, -30, -1, -84, -7, 64, 88, -23, -5, -7, -8, -76, -13, 92, 88, -96, -7, -19, -8, -75, -7, 92}, new byte[]{50, 44, -55, -102, -116, -116, -36, -106}), e);
        }
    }
}
