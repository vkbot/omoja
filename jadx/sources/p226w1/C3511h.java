package p226w1;

import com.github.anastr.speedviewlib.ImageSpeedometer;
import java.util.Arrays;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: w1.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3511h extends Lambda implements Function2 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f10404b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ ImageSpeedometer f10405c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3511h(ImageSpeedometer imageSpeedometer, int i10) {
        super(2);
        this.f10404b = i10;
        this.f10405c = imageSpeedometer;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f10404b) {
            case 0:
                ((Number) obj).intValue();
                return String.format(this.f10405c.getLocale(), "%.0f", Arrays.copyOf(new Object[]{Float.valueOf(((Number) obj2).floatValue())}, 1));
            default:
                ((Number) obj).intValue();
                return String.format(this.f10405c.getLocale(), "%.1f", Arrays.copyOf(new Object[]{Float.valueOf(((Number) obj2).floatValue())}, 1));
        }
    }
}
