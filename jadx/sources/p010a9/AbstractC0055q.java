package p010a9;

import android.os.Looper;
import java.util.Arrays;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import kotlin.sequences.SequencesKt;
import p099j1.C1929i;
import p233w8.AbstractC3542e;
import p233w8.C3538a;
import p233w8.C3540c;

/* JADX INFO: renamed from: a9.q */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC0055q {

    /* JADX INFO: renamed from: a */
    public static final C3540c f145a;

    static {
        String property;
        int i10 = AbstractC0062x.f153a;
        Object next = null;
        try {
            property = System.getProperty("kotlinx.coroutines.fast.service.loader");
        } catch (SecurityException unused) {
            property = null;
        }
        if (property != null) {
            Boolean.parseBoolean(property);
        }
        try {
            Iterator it = SequencesKt.toList(SequencesKt.asSequence(Arrays.asList(new C3538a()).iterator())).iterator();
            if (it.hasNext()) {
                next = it.next();
                if (it.hasNext()) {
                    ((C3538a) next).getClass();
                    do {
                        ((C3538a) it.next()).getClass();
                    } while (it.hasNext());
                }
            }
            if (((C3538a) next) == null) {
                C1929i.m3030l("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
                return;
            }
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper != null) {
                f145a = new C3540c(AbstractC3542e.m5653a(mainLooper), false);
            } else {
                C1929i.m3030l("The main looper is not available");
            }
        } catch (Throwable th) {
            throw new ServiceConfigurationError(th.getMessage(), th);
        }
    }
}
