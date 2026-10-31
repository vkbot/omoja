package s1;

import android.content.Context;
import java.io.File;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f5198a = e0.m.h(new byte[]{117, -1, 75, -44, -73, 22, -114, -62, 82, -29, ByteCompanionObject.MAX_VALUE, -59, -103, 39, -119, -61, 91, -18, 121, -61}, new byte[]{56, -122, 28, -79, -43, 70, -4, -83});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f5199b = e0.m.h(new byte[]{-67, 50, -66, -123, 3, 51, -86, -110, -102, 46, -118, -108, 45, 2, -83, -109, -109, 35, -116, -110, 62, 48, -67, -119, -124, 34, -121, -121, 18, 60, -109, -104, -119}, new byte[]{-16, 75, -23, -32, 97, 99, -40, -3});
    public static final String c = e0.m.h(new byte[]{-73, -47, -76, 1, -72, -52, ByteCompanionObject.MAX_VALUE, -83, -92, -47, -80, 63, -95, -63, 126, -100, -80, -36, -73, 18}, new byte[]{-45, -76, -46, 96, -51, -96, 11, -14});

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String a() {
        u0.a aVarO = h0.b.o();
        String str = f5199b;
        String str2 = c;
        String strLoadString = aVarO.loadString(str, str2);
        return (strLoadString == null || strLoadString.trim().isEmpty()) ? str2 : strLoadString;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static File b(Context context, String str) {
        if (str == null || str.trim().isEmpty() || str.contains(e0.m.h(new byte[]{49}, new byte[]{30, 47, 9, -68, -15, 32, 30, 31})) || str.contains(e0.m.h(new byte[]{110}, new byte[]{50, 7, 117, 96, 43, -103, 70, 65}))) {
            return null;
        }
        File canonicalFile = new File(context.getFilesDir(), f5198a).getCanonicalFile();
        File canonicalFile2 = new File(new File(canonicalFile, str), e0.m.h(new byte[]{47, -24, -28, -120, -72, 79, -119, 105, 43, -22}, new byte[]{70, -122, ByteCompanionObject.MIN_VALUE, -19, -64, 97, -31, 29})).getCanonicalFile();
        if (canonicalFile2.getPath().startsWith(canonicalFile.getPath() + File.separator)) {
            return canonicalFile2;
        }
        return null;
    }
}
