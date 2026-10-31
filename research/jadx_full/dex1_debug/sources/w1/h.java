package w1;

import com.github.anastr.speedviewlib.ImageSpeedometer;
import java.util.Arrays;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h extends Lambda implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5872b;
    public final /* synthetic */ ImageSpeedometer c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ h(ImageSpeedometer imageSpeedometer, int i9) {
        super(2);
        this.f5872b = i9;
        this.c = imageSpeedometer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f5872b) {
            case 0:
                ((Number) obj).intValue();
                return String.format(this.c.getLocale(), "%.0f", Arrays.copyOf(new Object[]{Float.valueOf(((Number) obj2).floatValue())}, 1));
            default:
                ((Number) obj).intValue();
                return String.format(this.c.getLocale(), "%.1f", Arrays.copyOf(new Object[]{Float.valueOf(((Number) obj2).floatValue())}, 1));
        }
    }
}
