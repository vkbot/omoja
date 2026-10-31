package kotlin.jvm.internal;

import kotlin.jvm.functions.Function1;
import kotlin.reflect.KTypeProjection;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TypeReference f3228b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(TypeReference typeReference) {
        this.f3228b = typeReference;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return TypeReference.a(this.f3228b, (KTypeProjection) obj);
    }
}
