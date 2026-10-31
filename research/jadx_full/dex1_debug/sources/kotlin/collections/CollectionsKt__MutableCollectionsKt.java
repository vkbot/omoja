package kotlin.collections;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.exifinterface.media.ExifInterface;
import j1.i;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000P\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u001f\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u001c\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u001a-\u0010\u0000\u001a\u00020\u0001\"\t\b\u0000\u0010\u0002¢\u0006\u0002\b\u0003*\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u0087\b¢\u0006\u0002\u0010\u0006\u001a.\u0010\u0007\u001a\u00020\u0001\"\t\b\u0000\u0010\u0002¢\u0006\u0002\b\u0003*\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\tH\u0087\b\u001a.\u0010\n\u001a\u00020\u0001\"\t\b\u0000\u0010\u0002¢\u0006\u0002\b\u0003*\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\tH\u0087\b\u001a(\u0010\u000b\u001a\u00020\f\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u0087\n¢\u0006\u0002\u0010\r\u001a)\u0010\u000b\u001a\u00020\f\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000eH\u0087\n\u001a.\u0010\u000b\u001a\u00020\f\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000fH\u0087\n¢\u0006\u0002\u0010\u0010\u001a)\u0010\u000b\u001a\u00020\f\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0011H\u0087\n\u001a(\u0010\u0012\u001a\u00020\f\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u0087\n¢\u0006\u0002\u0010\r\u001a)\u0010\u0012\u001a\u00020\f\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000eH\u0087\n\u001a.\u0010\u0012\u001a\u00020\f\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000fH\u0087\n¢\u0006\u0002\u0010\u0010\u001a)\u0010\u0012\u001a\u00020\f\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0011H\u0087\n\u001a&\u0010\u0013\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000e\u001a&\u0010\u0013\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0011\u001a-\u0010\u0013\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\u000e\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u000f¢\u0006\u0002\u0010\u0014\u001a\u001e\u0010\u0015\u001a\b\u0012\u0004\u0012\u0002H\u00020\t\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u000eH\u0000\u001a&\u0010\u0007\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000e\u001a&\u0010\u0007\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0011\u001a-\u0010\u0007\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\u000e\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u000f¢\u0006\u0002\u0010\u0014\u001a&\u0010\n\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000e\u001a-\u0010\n\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\u000e\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u000f¢\u0006\u0002\u0010\u0014\u001a&\u0010\n\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0011\u001a\u0015\u0010\u0016\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u0004H\u0002¢\u0006\u0002\b\u0017\u001a*\u0010\u0007\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00182\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u001a\u001a*\u0010\n\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00182\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u001a\u001a9\u0010\u001b\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00182\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u001a2\u0006\u0010\u001c\u001a\u00020\u0001H\u0002¢\u0006\u0002\b\u001d\u001a&\u0010\u0000\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0087\b¢\u0006\u0002\u0010!\u001a\u001d\u0010\"\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u001eH\u0007¢\u0006\u0002\u0010#\u001a\u001f\u0010$\u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u001eH\u0007¢\u0006\u0002\u0010#\u001a\u001d\u0010%\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u001eH\u0007¢\u0006\u0002\u0010#\u001a\u001f\u0010&\u001a\u0004\u0018\u0001H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u001eH\u0007¢\u0006\u0002\u0010#\u001a*\u0010\u0007\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u001e2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u001a\u001a*\u0010\n\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u001e2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u001a\u001a9\u0010\u001b\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u001e2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u001a2\u0006\u0010\u001c\u001a\u00020\u0001H\u0002¢\u0006\u0002\b\u001d¨\u0006'"}, d2 = {"remove", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/internal/OnlyInputTypes;", "", "element", "(Ljava/util/Collection;Ljava/lang/Object;)Z", "removeAll", "elements", "", "retainAll", "plusAssign", "", "(Ljava/util/Collection;Ljava/lang/Object;)V", "", "", "(Ljava/util/Collection;[Ljava/lang/Object;)V", "Lkotlin/sequences/Sequence;", "minusAssign", "addAll", "(Ljava/util/Collection;[Ljava/lang/Object;)Z", "convertToListIfNotCollection", "retainNothing", "retainNothing$CollectionsKt__MutableCollectionsKt", "", "predicate", "Lkotlin/Function1;", "filterInPlace", "predicateResultToRemove", "filterInPlace$CollectionsKt__MutableCollectionsKt", "", "index", "", "(Ljava/util/List;I)Ljava/lang/Object;", "removeFirst", "(Ljava/util/List;)Ljava/lang/Object;", "removeFirstOrNull", "removeLast", "removeLastOrNull", "kotlin-stdlib"}, k = 5, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_EDITOR_ABSOLUTEX, xs = "kotlin/collections/CollectionsKt")
public class CollectionsKt__MutableCollectionsKt extends CollectionsKt__MutableCollectionsJVMKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <T> boolean addAll(Collection<? super T> collection, Iterable<? extends T> iterable) {
        collection.getClass();
        iterable.getClass();
        if (iterable instanceof Collection) {
            return collection.addAll((Collection) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        boolean z8 = false;
        while (it.hasNext()) {
            if (collection.add(it.next())) {
                z8 = true;
            }
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <T> Collection<T> convertToListIfNotCollection(Iterable<? extends T> iterable) {
        iterable.getClass();
        return iterable instanceof Collection ? (Collection) iterable : CollectionsKt___CollectionsKt.toList(iterable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final <T> boolean filterInPlace$CollectionsKt__MutableCollectionsKt(List<T> list, Function1<? super T, Boolean> function1, boolean z8) {
        int i9;
        if (!(list instanceof RandomAccess)) {
            list.getClass();
            return filterInPlace$CollectionsKt__MutableCollectionsKt(TypeIntrinsics.asMutableIterable(list), function1, z8);
        }
        int lastIndex = CollectionsKt__CollectionsKt.getLastIndex(list);
        if (lastIndex >= 0) {
            int i10 = 0;
            i9 = 0;
            while (true) {
                T t = list.get(i10);
                if (function1.invoke(t).booleanValue() != z8) {
                    if (i9 != i10) {
                        list.set(i9, t);
                    }
                    i9++;
                }
                if (i10 == lastIndex) {
                    break;
                }
                i10++;
            }
        } else {
            i9 = 0;
        }
        if (i9 >= list.size()) {
            return false;
        }
        int lastIndex2 = CollectionsKt__CollectionsKt.getLastIndex(list);
        if (i9 > lastIndex2) {
            return true;
        }
        while (true) {
            list.remove(lastIndex2);
            if (lastIndex2 == i9) {
                return true;
            }
            lastIndex2--;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @InlineOnly
    private static final <T> void minusAssign(Collection<? super T> collection, Iterable<? extends T> iterable) {
        collection.getClass();
        iterable.getClass();
        removeAll(collection, iterable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @InlineOnly
    private static final <T> void plusAssign(Collection<? super T> collection, Iterable<? extends T> iterable) {
        collection.getClass();
        iterable.getClass();
        addAll(collection, iterable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @InlineOnly
    private static final <T> boolean remove(Collection<? extends T> collection, T t) {
        collection.getClass();
        return TypeIntrinsics.asMutableCollection(collection).remove(t);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <T> boolean removeAll(Collection<? super T> collection, T[] tArr) {
        collection.getClass();
        tArr.getClass();
        return !(tArr.length == 0) && collection.removeAll(ArraysKt___ArraysJvmKt.asList(tArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.4")
    public static <T> T removeFirst(List<T> list) {
        list.getClass();
        if (!list.isEmpty()) {
            return list.remove(0);
        }
        i.g("List is empty.");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.4")
    public static final <T> T removeFirstOrNull(List<T> list) {
        list.getClass();
        if (list.isEmpty()) {
            return null;
        }
        return list.remove(0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.4")
    public static <T> T removeLast(List<T> list) {
        list.getClass();
        if (!list.isEmpty()) {
            return list.remove(CollectionsKt__CollectionsKt.getLastIndex(list));
        }
        i.g("List is empty.");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.4")
    public static final <T> T removeLastOrNull(List<T> list) {
        list.getClass();
        if (list.isEmpty()) {
            return null;
        }
        return list.remove(CollectionsKt__CollectionsKt.getLastIndex(list));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <T> boolean retainAll(Collection<? super T> collection, T[] tArr) {
        collection.getClass();
        tArr.getClass();
        return !(tArr.length == 0) ? collection.retainAll(ArraysKt___ArraysJvmKt.asList(tArr)) : retainNothing$CollectionsKt__MutableCollectionsKt(collection);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final boolean retainNothing$CollectionsKt__MutableCollectionsKt(Collection<?> collection) {
        boolean z8 = !collection.isEmpty();
        collection.clear();
        return z8;
    }

    @InlineOnly
    private static final <T> void minusAssign(Collection<? super T> collection, T t) {
        collection.getClass();
        collection.remove(t);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: T */
    /* JADX WARN: Multi-variable type inference failed */
    @InlineOnly
    private static final <T> void plusAssign(Collection<? super T> collection, T t) {
        collection.getClass();
        collection.add(t);
    }

    @InlineOnly
    private static final <T> void minusAssign(Collection<? super T> collection, T[] tArr) {
        collection.getClass();
        tArr.getClass();
        removeAll(collection, tArr);
    }

    @InlineOnly
    private static final <T> void plusAssign(Collection<? super T> collection, T[] tArr) {
        collection.getClass();
        tArr.getClass();
        addAll(collection, tArr);
    }

    @InlineOnly
    private static final <T> void minusAssign(Collection<? super T> collection, Sequence<? extends T> sequence) {
        collection.getClass();
        sequence.getClass();
        removeAll(collection, sequence);
    }

    @InlineOnly
    private static final <T> void plusAssign(Collection<? super T> collection, Sequence<? extends T> sequence) {
        collection.getClass();
        sequence.getClass();
        addAll(collection, sequence);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use removeAt(index) instead.", replaceWith = @ReplaceWith(expression = "removeAt(index)", imports = {}))
    @InlineOnly
    private static final <T> T remove(List<T> list, int i9) {
        list.getClass();
        return list.remove(i9);
    }

    public static final <T> boolean removeAll(Collection<? super T> collection, Iterable<? extends T> iterable) {
        collection.getClass();
        iterable.getClass();
        return collection.removeAll(convertToListIfNotCollection(iterable));
    }

    public static final <T> boolean retainAll(Collection<? super T> collection, Iterable<? extends T> iterable) {
        collection.getClass();
        iterable.getClass();
        return collection.retainAll(convertToListIfNotCollection(iterable));
    }

    public static final <T> boolean removeAll(Collection<? super T> collection, Sequence<? extends T> sequence) {
        collection.getClass();
        sequence.getClass();
        List list = SequencesKt.toList(sequence);
        return !list.isEmpty() && collection.removeAll(list);
    }

    @InlineOnly
    private static final <T> boolean retainAll(Collection<? extends T> collection, Collection<? extends T> collection2) {
        collection.getClass();
        collection2.getClass();
        return TypeIntrinsics.asMutableCollection(collection).retainAll(collection2);
    }

    public static final <T> boolean retainAll(Collection<? super T> collection, Sequence<? extends T> sequence) {
        collection.getClass();
        sequence.getClass();
        List list = SequencesKt.toList(sequence);
        if (!list.isEmpty()) {
            return collection.retainAll(list);
        }
        return retainNothing$CollectionsKt__MutableCollectionsKt(collection);
    }

    @InlineOnly
    private static final <T> boolean removeAll(Collection<? extends T> collection, Collection<? extends T> collection2) {
        collection.getClass();
        collection2.getClass();
        return TypeIntrinsics.asMutableCollection(collection).removeAll(collection2);
    }

    public static <T> boolean removeAll(Iterable<? extends T> iterable, Function1<? super T, Boolean> function1) {
        iterable.getClass();
        function1.getClass();
        return filterInPlace$CollectionsKt__MutableCollectionsKt((Iterable) iterable, (Function1) function1, true);
    }

    public static <T> boolean removeAll(List<T> list, Function1<? super T, Boolean> function1) {
        list.getClass();
        function1.getClass();
        return filterInPlace$CollectionsKt__MutableCollectionsKt((List) list, (Function1) function1, true);
    }

    public static <T> boolean retainAll(Iterable<? extends T> iterable, Function1<? super T, Boolean> function1) {
        iterable.getClass();
        function1.getClass();
        return filterInPlace$CollectionsKt__MutableCollectionsKt((Iterable) iterable, (Function1) function1, false);
    }

    public static final <T> boolean retainAll(List<T> list, Function1<? super T, Boolean> function1) {
        list.getClass();
        function1.getClass();
        return filterInPlace$CollectionsKt__MutableCollectionsKt((List) list, (Function1) function1, false);
    }

    public static <T> boolean addAll(Collection<? super T> collection, Sequence<? extends T> sequence) {
        collection.getClass();
        sequence.getClass();
        Iterator<? extends T> it = sequence.iterator();
        boolean z8 = false;
        while (it.hasNext()) {
            if (collection.add(it.next())) {
                z8 = true;
            }
        }
        return z8;
    }

    public static <T> boolean addAll(Collection<? super T> collection, T[] tArr) {
        collection.getClass();
        tArr.getClass();
        return collection.addAll(ArraysKt___ArraysJvmKt.asList(tArr));
    }

    private static final <T> boolean filterInPlace$CollectionsKt__MutableCollectionsKt(Iterable<? extends T> iterable, Function1<? super T, Boolean> function1, boolean z8) {
        Iterator<? extends T> it = iterable.iterator();
        boolean z9 = false;
        while (it.hasNext()) {
            if (function1.invoke(it.next()).booleanValue() == z8) {
                it.remove();
                z9 = true;
            }
        }
        return z9;
    }
}
