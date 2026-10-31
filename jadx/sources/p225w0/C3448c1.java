package p225w0;

import com.google.protobuf.AbstractC1178q;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: w0.c1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3448c1 {

    /* JADX INFO: renamed from: a */
    public final Pattern f9943a;

    /* JADX INFO: renamed from: b */
    public final String f9944b;

    public C3448c1(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        AbstractC1178q.m2087u(new byte[]{100, 72, 104, -101, 22, 120, -100, 17, 0, 10, 8, -54, 54, 106, -111, 55, 101, 95, 107, ByteCompanionObject.MIN_VALUE}, new byte[]{76, 119, 84, -70, 77, 36, -20, 106}, sb, str);
        sb.append(AbstractC1387m.m2421h(new byte[]{16, 24, 114, -28, 116, 80, 49, 95, 117, 77, 17, -75, 84, 66, 60, 121, 16}, new byte[]{57, 48, 77, -59, 47, 12, 65, 36}));
        this.f9943a = Pattern.compile(sb.toString());
        this.f9944b = Matcher.quoteReplacement(str2);
    }
}
