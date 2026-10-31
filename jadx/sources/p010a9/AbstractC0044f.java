package p010a9;

import java.util.Arrays;
import java.util.List;
import java.util.ServiceConfigurationError;
import kotlin.sequences.SequencesKt;
import p233w8.C3539b;

/* JADX INFO: renamed from: a9.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC0044f {

    /* JADX INFO: renamed from: a */
    public static final List f118a;

    static {
        try {
            f118a = SequencesKt.toList(SequencesKt.asSequence(Arrays.asList(new C3539b()).iterator()));
        } catch (Throwable th) {
            throw new ServiceConfigurationError(th.getMessage(), th);
        }
    }
}
