package d9;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class b extends Lambda implements Function1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ e c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b(e eVar, c cVar, int i) {
        super(1);
        this.b = i;
        this.c = eVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                this.c.c(null);
                break;
            default:
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = e.g;
                e eVar = this.c;
                atomicReferenceFieldUpdater.set(eVar, null);
                eVar.c(null);
                break;
        }
        return Unit.INSTANCE;
    }
}
