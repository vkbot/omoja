package kotlin.collections.builders;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import java.util.Map$Entry;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableIterator;
import n0.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0002\u0010'\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00050\u0004B\u001b\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0007¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u000bH\u0096\u0002J\r\u0010\f\u001a\u00020\rH\u0000¢\u0006\u0002\b\u000eJ\u0012\u0010\u000f\u001a\u00020\u00102\n\u0010\u0011\u001a\u00060\u0012j\u0002`\u0013¨\u0006\u0014"}, d2 = {"Lkotlin/collections/builders/MapBuilder$EntriesItr;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/collections/builders/MapBuilder$Itr;", "", "", "map", "Lkotlin/collections/builders/MapBuilder;", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "next", "Lkotlin/collections/builders/MapBuilder$EntryRef;", "nextHashCode", "", "nextHashCode$kotlin_stdlib", "nextAppendString", "", "sb", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class MapBuilder$EntriesItr<K, V> extends MapBuilder$Itr<K, V> implements Iterator<Map$Entry<K, V>>, KMutableIterator {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MapBuilder$EntriesItr(MapBuilder<K, V> mapBuilder) {
        super(mapBuilder);
        mapBuilder.getClass();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public MapBuilder$EntryRef<K, V> next() {
        checkForComodification$kotlin_stdlib();
        if (getIndex() >= MapBuilder.access$getLength$p(getMap$kotlin_stdlib())) {
            b.x();
            return null;
        }
        int index$kotlin_stdlib = getIndex();
        setIndex$kotlin_stdlib(index$kotlin_stdlib + 1);
        setLastIndex$kotlin_stdlib(index$kotlin_stdlib);
        MapBuilder$EntryRef<K, V> mapBuilder$EntryRef = new MapBuilder$EntryRef<>(getMap$kotlin_stdlib(), getLastIndex());
        initNext$kotlin_stdlib();
        return mapBuilder$EntryRef;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void nextAppendString(StringBuilder sb) {
        sb.getClass();
        if (getIndex() >= MapBuilder.access$getLength$p(getMap$kotlin_stdlib())) {
            b.x();
            return;
        }
        int index$kotlin_stdlib = getIndex();
        setIndex$kotlin_stdlib(index$kotlin_stdlib + 1);
        setLastIndex$kotlin_stdlib(index$kotlin_stdlib);
        Object obj = MapBuilder.access$getKeysArray$p(getMap$kotlin_stdlib())[getLastIndex()];
        if (obj == getMap$kotlin_stdlib()) {
            sb.append("(this Map)");
        } else {
            sb.append(obj);
        }
        sb.append('=');
        Object[] objArrAccess$getValuesArray$p = MapBuilder.access$getValuesArray$p(getMap$kotlin_stdlib());
        objArrAccess$getValuesArray$p.getClass();
        Object obj2 = objArrAccess$getValuesArray$p[getLastIndex()];
        if (obj2 == getMap$kotlin_stdlib()) {
            sb.append("(this Map)");
        } else {
            sb.append(obj2);
        }
        initNext$kotlin_stdlib();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int nextHashCode$kotlin_stdlib() {
        if (getIndex() >= MapBuilder.access$getLength$p(getMap$kotlin_stdlib())) {
            b.x();
            return 0;
        }
        int index$kotlin_stdlib = getIndex();
        setIndex$kotlin_stdlib(index$kotlin_stdlib + 1);
        setLastIndex$kotlin_stdlib(index$kotlin_stdlib);
        Object obj = MapBuilder.access$getKeysArray$p(getMap$kotlin_stdlib())[getLastIndex()];
        int iHashCode = obj != null ? obj.hashCode() : 0;
        Object[] objArrAccess$getValuesArray$p = MapBuilder.access$getValuesArray$p(getMap$kotlin_stdlib());
        objArrAccess$getValuesArray$p.getClass();
        Object obj2 = objArrAccess$getValuesArray$p[getLastIndex()];
        int iHashCode2 = iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
        initNext$kotlin_stdlib();
        return iHashCode2;
    }

    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ Object next() {
        return next();
    }
}
