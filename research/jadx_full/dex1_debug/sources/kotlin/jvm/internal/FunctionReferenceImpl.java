package kotlin.jvm.internal;

import kotlin.SinceKotlin;
import kotlin.reflect.KClass;
import kotlin.reflect.KDeclarationContainer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FunctionReferenceImpl extends FunctionReference {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FunctionReferenceImpl(int i9, KDeclarationContainer kDeclarationContainer, String str, String str2) {
        super(i9, CallableReference.NO_RECEIVER, ((ClassBasedDeclarationContainer) kDeclarationContainer).getJClass(), str, str2, !(kDeclarationContainer instanceof KClass) ? 1 : 0);
    }

    @SinceKotlin(version = "1.4")
    public FunctionReferenceImpl(int i9, Class cls, String str, String str2, int i10) {
        super(i9, CallableReference.NO_RECEIVER, cls, str, str2, i10);
    }

    @SinceKotlin(version = "1.4")
    public FunctionReferenceImpl(int i9, Object obj, Class cls, String str, String str2, int i10) {
        super(i9, obj, cls, str, str2, i10);
    }
}
