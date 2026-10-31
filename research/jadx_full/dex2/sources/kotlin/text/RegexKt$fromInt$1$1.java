package kotlin.text;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRegex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Regex.kt\nkotlin/text/RegexKt$fromInt$1$1\n*L\n1#1,404:1\n*E\n"})
public final class RegexKt$fromInt$1$1<T> implements Function1<T, Boolean> {
    final /* synthetic */ int $value;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RegexKt$fromInt$1$1(int i) {
        this.$value = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: java.lang.Enum */
    /* JADX WARN: Incorrect types in method signature: (TT;)Ljava/lang/Boolean; */
    /* JADX WARN: Multi-variable type inference failed */
    public final Boolean invoke(Enum r3) {
        FlagEnum flagEnum = (FlagEnum) r3;
        return Boolean.valueOf((this.$value & flagEnum.getMask()) == flagEnum.getValue());
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return invoke((Enum) obj);
    }
}
