package w1;

import java.util.Arrays;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c extends Lambda implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5840b;
    public final /* synthetic */ i c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c(i iVar, int i9) {
        super(1);
        this.f5840b = i9;
        this.c = iVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f5840b) {
            case 0:
                return String.format(this.c.getLocale(), "%.0f", Arrays.copyOf(new Object[]{Float.valueOf(((Number) obj).floatValue())}, 1));
            case 1:
                return String.format(this.c.getLocale(), "%.1f", Arrays.copyOf(new Object[]{Float.valueOf(((Number) obj).floatValue())}, 1));
            default:
                return String.format(this.c.getLocale(), "%.1f", Arrays.copyOf(new Object[]{Float.valueOf(((Number) obj).floatValue())}, 1));
        }
    }
}
