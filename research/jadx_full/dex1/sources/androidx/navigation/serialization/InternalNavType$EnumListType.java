package androidx.navigation.serialization;

import ai.onnxruntime.a;
import android.os.Bundle;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.navigation.CollectionNavType;
import androidx.navigation.NavType$EnumType;
import java.lang.Enum;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000*\f\b\u0000\u0010\u0001*\u0006\u0012\u0002\b\u00030\u00022\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u0002H\u0001\u0018\u00010\u00040\u0003B\u0013\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0002\u0010\u0007J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0016J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J!\u0010\u0013\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00042\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000bH\u0096\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\u0016\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u00042\u0006\u0010\u001a\u001a\u00020\u000bH\u0016J(\u0010\u0019\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00042\u0006\u0010\u001a\u001a\u00020\u000b2\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0004H\u0016J(\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000b2\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0004H\u0016J\u001e\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0004H\u0016J(\u0010\u001f\u001a\u00020\u00102\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00042\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0004H\u0016R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006 "}, d2 = {"Landroidx/navigation/serialization/InternalNavType$EnumListType;", "D", "", "Landroidx/navigation/CollectionNavType;", "", "type", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "enumNavType", "Landroidx/navigation/NavType$EnumType;", "name", "", "getName", "()Ljava/lang/String;", "emptyCollection", "equals", "", "other", "", "get", "bundle", "Landroid/os/Bundle;", "key", "hashCode", "", "parseValue", "value", "previousValue", "put", "", "serializeAsValues", "valueEquals", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nNavTypeConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavTypeConverter.kt\nandroidx/navigation/serialization/InternalNavType$EnumListType\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,577:1\n1#2:578\n1549#3:579\n1620#3,3:580\n*S KotlinDebug\n*F\n+ 1 NavTypeConverter.kt\nandroidx/navigation/serialization/InternalNavType$EnumListType\n*L\n496#1:579\n496#1:580,3\n*E\n"})
public final class InternalNavType$EnumListType<D extends Enum<?>> extends CollectionNavType<List<? extends D>> {
    private final NavType$EnumType<D> enumNavType;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InternalNavType$EnumListType(Class<D> cls) {
        super(true);
        cls.getClass();
        this.enumNavType = new NavType$EnumType<>(cls);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.navigation.CollectionNavType
    public /* bridge */ /* synthetic */ Object emptyCollection() {
        return emptyCollection();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other instanceof InternalNavType$EnumListType) {
            return Intrinsics.areEqual(this.enumNavType, ((InternalNavType$EnumListType) other).enumNavType);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.navigation.NavType
    public List<D> get(Bundle bundle, String key) {
        Object objD = a.d(bundle, key, key);
        if (objD instanceof List) {
            return (List) objD;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.navigation.NavType
    public String getName() {
        return "List<" + this.enumNavType.getName() + "}>";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return this.enumNavType.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public List<D> parseValue(String value, List<? extends D> previousValue) {
        List<D> listPlus;
        value.getClass();
        return (previousValue == null || (listPlus = CollectionsKt.plus((Collection) previousValue, (Iterable) parseValue(value))) == null) ? parseValue(value) : listPlus;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void put(Bundle bundle, String key, List<? extends D> value) {
        bundle.getClass();
        key.getClass();
        bundle.putSerializable(key, value != null ? new ArrayList(value) : null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public List<String> serializeAsValues(List<? extends D> value) {
        if (value == null) {
            return CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(value, 10));
        Iterator<T> it = value.iterator();
        while (it.hasNext()) {
            arrayList.add(((Enum) it.next()).toString());
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean valueEquals(List<? extends D> value, List<? extends D> other) {
        return Intrinsics.areEqual(value != null ? new ArrayList(value) : null, other != null ? new ArrayList(other) : null);
    }

    @Override // androidx.navigation.CollectionNavType
    public List<D> emptyCollection() {
        return CollectionsKt.emptyList();
    }

    @Override // androidx.navigation.NavType
    public /* bridge */ /* synthetic */ Object get(Bundle bundle, String str) {
        return get(bundle, str);
    }

    @Override // androidx.navigation.NavType
    public /* bridge */ /* synthetic */ void put(Bundle bundle, String str, Object obj) {
        put(bundle, str, (List) obj);
    }

    @Override // androidx.navigation.NavType
    public /* bridge */ /* synthetic */ Object parseValue(String str, Object obj) {
        return parseValue(str, (List) obj);
    }

    @Override // androidx.navigation.NavType
    public /* bridge */ /* synthetic */ boolean valueEquals(Object obj, Object obj2) {
        return valueEquals((List) obj, (List) obj2);
    }

    @Override // androidx.navigation.NavType
    public List<D> parseValue(String value) {
        value.getClass();
        return CollectionsKt.listOf(this.enumNavType.parseValue(value));
    }

    @Override // androidx.navigation.NavType
    public /* bridge */ /* synthetic */ Object parseValue(String str) {
        return parseValue(str);
    }

    @Override // androidx.navigation.CollectionNavType
    public /* bridge */ /* synthetic */ List serializeAsValues(Object obj) {
        return serializeAsValues((List) obj);
    }
}
