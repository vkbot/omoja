package kotlin.text;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.Grouping;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.HttpUrl;

/* JADX INFO: Add missing generic type declarations: [K] */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0000\n\u0002\u0010(\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00028\u00000\u0001J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004H\u0016J\u0015\u0010\u0005\u001a\u00028\u00002\u0006\u0010\u0006\u001a\u00020\u0002H\u0016¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"kotlin/text/StringsKt___StringsKt$groupingBy$1", "Lkotlin/collections/Grouping;", HttpUrl.FRAGMENT_ENCODE_SET, "sourceIterator", HttpUrl.FRAGMENT_ENCODE_SET, "keyOf", "element", "(C)Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 176)
@SourceDebugExtension({"SMAP\n_Strings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Strings.kt\nkotlin/text/StringsKt___StringsKt$groupingBy$1\n*L\n1#1,2565:1\n*E\n"})
public final class StringsKt___StringsKt$groupingBy$1<K> implements Grouping<Character, K> {
    final /* synthetic */ Function1<Character, K> $keySelector;
    final /* synthetic */ CharSequence $this_groupingBy;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: kotlin.jvm.functions.Function1<? super java.lang.Character, ? extends K> */
    /* JADX WARN: Multi-variable type inference failed */
    public StringsKt___StringsKt$groupingBy$1(CharSequence charSequence, Function1<? super Character, ? extends K> function1) {
        this.$this_groupingBy = charSequence;
        this.$keySelector = function1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* bridge */ /* synthetic */ Object keyOf(Object obj) {
        return keyOf(((Character) obj).charValue());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Iterator<Character> sourceIterator() {
        return StringsKt__StringsKt.iterator(this.$this_groupingBy);
    }

    public K keyOf(char element) {
        return (K) this.$keySelector.invoke(Character.valueOf(element));
    }
}
