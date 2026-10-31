package androidx.core.content.pm;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build$VERSION;
import androidx.activity.j;
import androidx.annotation.NonNull;
import androidx.annotation.Size;
import androidx.media.utils.MediaConstants;
import j1.i;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class PackageInfoCompat {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private PackageInfoCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean byteArrayContains(@NonNull byte[][] bArr, @NonNull byte[] bArr2) {
        for (byte[] bArr3 : bArr) {
            if (Arrays.equals(bArr2, bArr3)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static byte[] computeSHA256Digest(byte[] bArr) {
        try {
            return MessageDigest.getInstance("SHA256").digest(bArr);
        } catch (NoSuchAlgorithmException e) {
            ai.onnxruntime.b.o("Device doesn't support SHA256 cert checking", e);
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long getLongVersionCode(@NonNull PackageInfo packageInfo) {
        return Build$VERSION.SDK_INT >= 28 ? PackageInfoCompat$Api28Impl.getLongVersionCode(packageInfo) : packageInfo.versionCode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static List<Signature> getSignatures(@NonNull PackageManager packageManager, @NonNull String str) {
        Signature[] apkContentsSigners;
        if (Build$VERSION.SDK_INT >= 28) {
            SigningInfo signingInfoH = j.h(packageManager.getPackageInfo(str, 134217728));
            apkContentsSigners = PackageInfoCompat$Api28Impl.hasMultipleSigners(signingInfoH) ? PackageInfoCompat$Api28Impl.getApkContentsSigners(signingInfoH) : PackageInfoCompat$Api28Impl.getSigningCertificateHistory(signingInfoH);
        } else {
            apkContentsSigners = packageManager.getPackageInfo(str, 64).signatures;
        }
        return apkContentsSigners == null ? Collections.EMPTY_LIST : Arrays.asList(apkContentsSigners);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean hasSignatures(@NonNull PackageManager packageManager, @NonNull String str, @NonNull @Size(min = MediaConstants.METADATA_VALUE_ATTRIBUTE_PRESENT) Map<byte[], Integer> map, boolean z8) {
        byte[][] bArr;
        if (map.isEmpty()) {
            return false;
        }
        Set<byte[]> setKeySet = map.keySet();
        for (byte[] bArr2 : setKeySet) {
            if (bArr2 == null) {
                i.k(ai.onnxruntime.a.l("Cert byte array cannot be null when verifying ", str));
                return false;
            }
            Integer num = map.get(bArr2);
            if (num == null) {
                i.k(ai.onnxruntime.a.l("Type must be specified for cert when verifying ", str));
                return false;
            }
            int iIntValue = num.intValue();
            if (iIntValue != 0 && iIntValue != 1) {
                androidx.navigation.b.v("Unsupported certificate type ", num, " when verifying ", str);
                return false;
            }
        }
        List<Signature> signatures = getSignatures(packageManager, str);
        if (!z8 && Build$VERSION.SDK_INT >= 28) {
            for (byte[] bArr3 : setKeySet) {
                if (!PackageInfoCompat$Api28Impl.hasSigningCertificate(packageManager, str, bArr3, map.get(bArr3).intValue())) {
                    return false;
                }
            }
            return true;
        }
        if (signatures.size() != 0 && map.size() <= signatures.size() && (!z8 || map.size() == signatures.size())) {
            if (map.containsValue(1)) {
                bArr = new byte[signatures.size()][];
                for (int i9 = 0; i9 < signatures.size(); i9++) {
                    bArr[i9] = computeSHA256Digest(signatures.get(i9).toByteArray());
                }
            } else {
                bArr = null;
            }
            Iterator<byte[]> it = setKeySet.iterator();
            if (it.hasNext()) {
                byte[] next = it.next();
                Integer num2 = map.get(next);
                int iIntValue2 = num2.intValue();
                if (iIntValue2 != 0) {
                    if (iIntValue2 != 1) {
                        androidx.navigation.b.t(num2, "Unsupported certificate type ");
                        return false;
                    }
                    if (!byteArrayContains(bArr, next)) {
                        return false;
                    }
                } else if (!signatures.contains(new Signature(next))) {
                    return false;
                }
                return true;
            }
        }
        return false;
    }
}
