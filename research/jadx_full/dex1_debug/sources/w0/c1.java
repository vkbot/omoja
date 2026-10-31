package w0;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Pattern f5606a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f5607b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c1(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        com.google.protobuf.q.u(new byte[]{100, 72, 104, -101, 22, 120, -100, 17, 0, 10, 8, -54, 54, 106, -111, 55, 101, 95, 107, ByteCompanionObject.MIN_VALUE}, new byte[]{76, 119, 84, -70, 77, 36, -20, 106}, sb, str);
        sb.append(e0.m.h(new byte[]{16, 24, 114, -28, 116, 80, 49, 95, 117, 77, 17, -75, 84, 66, 60, 121, 16}, new byte[]{57, 48, 77, -59, 47, 12, 65, 36}));
        this.f5606a = Pattern.compile(sb.toString());
        this.f5607b = Matcher.quoteReplacement(str2);
    }
}
