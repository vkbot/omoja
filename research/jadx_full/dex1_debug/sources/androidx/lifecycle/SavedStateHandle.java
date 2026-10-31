package androidx.lifecycle;

import android.os.Binder;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.annotation.MainThread;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.os.BundleKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.e;
import androidx.savedstate.SavedStateRegistry$SavedStateProvider;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map$Entry;
import java.util.Set;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.SourceDebugExtension;
import y8.m;
import y8.n;
import y8.r;
import y8.t;
import y8.v;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 32\u00020\u0001:\u000234B\u001f\b\u0016\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006B\t\b\u0016¢\u0006\u0004\b\u0005\u0010\u0007J3\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\r\"\u0004\b\u0000\u0010\b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0018\u0010\u0013\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0003H\u0087\u0002¢\u0006\u0004\b\u0013\u0010\u0014J#\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\r\"\u0004\b\u0000\u0010\b2\u0006\u0010\t\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\u0015\u0010\u0016J+\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\r\"\u0004\b\u0000\u0010\b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\f\u001a\u00028\u0000H\u0007¢\u0006\u0004\b\u0015\u0010\u0017J+\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u0018\"\u0004\b\u0000\u0010\b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\f\u001a\u00028\u0000H\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00030\u001bH\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ \u0010\u001e\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\b2\u0006\u0010\t\u001a\u00020\u0003H\u0087\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ(\u0010\"\u001a\u00020!\"\u0004\b\u0000\u0010\b2\u0006\u0010\t\u001a\u00020\u00032\b\u0010 \u001a\u0004\u0018\u00018\u0000H\u0087\u0002¢\u0006\u0004\b\"\u0010#J\u001f\u0010$\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\b2\u0006\u0010\t\u001a\u00020\u0003H\u0007¢\u0006\u0004\b$\u0010\u001fJ\u001f\u0010&\u001a\u00020!2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010%\u001a\u00020\u0010H\u0007¢\u0006\u0004\b&\u0010'J\u0017\u0010(\u001a\u00020!2\u0006\u0010\t\u001a\u00020\u0003H\u0007¢\u0006\u0004\b(\u0010)R\"\u0010+\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R \u0010-\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00100*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010,R$\u0010/\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030.0*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u0010,R(\u00101\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001000*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u0010,R\u0014\u0010\u0011\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u00102¨\u00065"}, d2 = {"Landroidx/lifecycle/SavedStateHandle;", "", "", "", "initialState", "<init>", "(Ljava/util/Map;)V", "()V", ExifInterface.GPS_DIRECTION_TRUE, "key", "", "hasInitialValue", "initialValue", "Landroidx/lifecycle/MutableLiveData;", "getLiveDataInternal", "(Ljava/lang/String;ZLjava/lang/Object;)Landroidx/lifecycle/MutableLiveData;", "Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;", "savedStateProvider", "()Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;", "contains", "(Ljava/lang/String;)Z", "getLiveData", "(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;", "(Ljava/lang/String;Ljava/lang/Object;)Landroidx/lifecycle/MutableLiveData;", "Ly8/t;", "getStateFlow", "(Ljava/lang/String;Ljava/lang/Object;)Ly8/t;", "", SavedStateHandle.KEYS, "()Ljava/util/Set;", "get", "(Ljava/lang/String;)Ljava/lang/Object;", "value", "", "set", "(Ljava/lang/String;Ljava/lang/Object;)V", "remove", "provider", "setSavedStateProvider", "(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V", "clearSavedStateProvider", "(Ljava/lang/String;)V", "", "regular", "Ljava/util/Map;", "savedStateProviders", "Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;", "liveDatas", "Ly8/m;", "flows", "Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;", "Companion", "SavingStateLiveData", "lifecycle-viewmodel-savedstate_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nSavedStateHandle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateHandle.kt\nandroidx/lifecycle/SavedStateHandle\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,450:1\n361#2,3:451\n364#2,4:455\n1#3:454\n*S KotlinDebug\n*F\n+ 1 SavedStateHandle.kt\nandroidx/lifecycle/SavedStateHandle\n*L\n198#1:451,3\n198#1:455,4\n*E\n"})
public final class SavedStateHandle {
    private static final String KEYS = "keys";
    private static final String VALUES = "values";
    private final Map<String, m> flows;
    private final Map<String, SavedStateHandle$SavingStateLiveData<?>> liveDatas;
    private final Map<String, Object> regular;
    private final SavedStateRegistry$SavedStateProvider savedStateProvider;
    private final Map<String, SavedStateRegistry$SavedStateProvider> savedStateProviders;
    public static final SavedStateHandle$Companion Companion = new SavedStateHandle$Companion(null);
    private static final Class<? extends Object>[] ACCEPTABLE_CLASSES = {Boolean.TYPE, boolean[].class, Double.TYPE, double[].class, Integer.TYPE, int[].class, Long.TYPE, long[].class, String.class, String[].class, Binder.class, Bundle.class, Byte.TYPE, byte[].class, Character.TYPE, char[].class, CharSequence.class, CharSequence[].class, ArrayList.class, Float.TYPE, float[].class, Parcelable.class, Parcelable[].class, Serializable.class, Short.TYPE, short[].class, SparseArray.class, Size.class, SizeF.class};

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SavedStateHandle(Map<String, ? extends Object> map) {
        map.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.regular = linkedHashMap;
        this.savedStateProviders = new LinkedHashMap();
        this.liveDatas = new LinkedHashMap();
        this.flows = new LinkedHashMap();
        this.savedStateProvider = new e(2, this);
        linkedHashMap.putAll(map);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Bundle a(SavedStateHandle savedStateHandle) {
        return savedStateProvider$lambda$0(savedStateHandle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ Class[] access$getACCEPTABLE_CLASSES$cp() {
        return ACCEPTABLE_CLASSES;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ Map access$getFlows$p(SavedStateHandle savedStateHandle) {
        return savedStateHandle.flows;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ Map access$getRegular$p(SavedStateHandle savedStateHandle) {
        return savedStateHandle.regular;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static final SavedStateHandle createHandle(Bundle bundle, Bundle bundle2) {
        return Companion.createHandle(bundle, bundle2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final <T> MutableLiveData<T> getLiveDataInternal(String key, boolean hasInitialValue, T initialValue) {
        SavedStateHandle$SavingStateLiveData<?> savedStateHandle$SavingStateLiveData;
        SavedStateHandle$SavingStateLiveData<?> savedStateHandle$SavingStateLiveData2 = this.liveDatas.get(key);
        SavedStateHandle$SavingStateLiveData<?> savedStateHandle$SavingStateLiveData3 = savedStateHandle$SavingStateLiveData2 instanceof MutableLiveData ? savedStateHandle$SavingStateLiveData2 : null;
        if (savedStateHandle$SavingStateLiveData3 != null) {
            return savedStateHandle$SavingStateLiveData3;
        }
        if (this.regular.containsKey(key)) {
            savedStateHandle$SavingStateLiveData = new SavedStateHandle$SavingStateLiveData<>(this, key, this.regular.get(key));
        } else if (hasInitialValue) {
            this.regular.put(key, initialValue);
            savedStateHandle$SavingStateLiveData = new SavedStateHandle$SavingStateLiveData<>(this, key, initialValue);
        } else {
            savedStateHandle$SavingStateLiveData = new SavedStateHandle$SavingStateLiveData<>(this, key);
        }
        this.liveDatas.put(key, savedStateHandle$SavingStateLiveData);
        return savedStateHandle$SavingStateLiveData;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final Bundle savedStateProvider$lambda$0(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        for (Map$Entry map$Entry : MapsKt.toMap(savedStateHandle.savedStateProviders).entrySet()) {
            savedStateHandle.set((String) map$Entry.getKey(), ((SavedStateRegistry$SavedStateProvider) map$Entry.getValue()).saveState());
        }
        Set<String> setKeySet = savedStateHandle.regular.keySet();
        ArrayList arrayList = new ArrayList(setKeySet.size());
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (String str : setKeySet) {
            arrayList.add(str);
            arrayList2.add(savedStateHandle.regular.get(str));
        }
        return BundleKt.bundleOf(TuplesKt.to(KEYS, arrayList), TuplesKt.to(VALUES, arrayList2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public final void clearSavedStateProvider(String key) {
        key.getClass();
        this.savedStateProviders.remove(key);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public final boolean contains(String key) {
        key.getClass();
        return this.regular.containsKey(key);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public final <T> T get(String key) {
        key.getClass();
        try {
            return (T) this.regular.get(key);
        } catch (ClassCastException unused) {
            remove(key);
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public final <T> MutableLiveData<T> getLiveData(String key) {
        key.getClass();
        MutableLiveData<T> liveDataInternal = getLiveDataInternal(key, false, null);
        liveDataInternal.getClass();
        return liveDataInternal;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public final <T> t getStateFlow(String key, T initialValue) {
        key.getClass();
        Map<String, m> map = this.flows;
        m mVarA = map.get(key);
        if (mVarA == null) {
            if (!this.regular.containsKey(key)) {
                this.regular.put(key, initialValue);
            }
            mVarA = r.a(this.regular.get(key));
            this.flows.put(key, mVarA);
            map.put(key, mVarA);
        }
        return new n(mVarA);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public final Set<String> keys() {
        return SetsKt.c(SetsKt.c(this.regular.keySet(), this.savedStateProviders.keySet()), this.liveDatas.keySet());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public final <T> T remove(String key) {
        key.getClass();
        T t = (T) this.regular.remove(key);
        SavedStateHandle$SavingStateLiveData<?> savedStateHandle$SavingStateLiveDataRemove = this.liveDatas.remove(key);
        if (savedStateHandle$SavingStateLiveDataRemove != null) {
            savedStateHandle$SavingStateLiveDataRemove.detach();
        }
        this.flows.remove(key);
        return t;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    /* JADX INFO: renamed from: savedStateProvider, reason: from getter */
    public final SavedStateRegistry$SavedStateProvider getSavedStateProvider() {
        return this.savedStateProvider;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public final <T> void set(String key, T value) {
        key.getClass();
        if (!Companion.validateValue(value)) {
            value.getClass();
            androidx.navigation.b.x(value.getClass(), "Can't put value with type ", " into saved state");
            return;
        }
        SavedStateHandle$SavingStateLiveData<?> savedStateHandle$SavingStateLiveData = this.liveDatas.get(key);
        SavedStateHandle$SavingStateLiveData<?> savedStateHandle$SavingStateLiveData2 = savedStateHandle$SavingStateLiveData instanceof MutableLiveData ? savedStateHandle$SavingStateLiveData : null;
        if (savedStateHandle$SavingStateLiveData2 != null) {
            savedStateHandle$SavingStateLiveData2.setValue(value);
        } else {
            this.regular.put(key, value);
        }
        v vVar = (m) this.flows.get(key);
        if (vVar == null) {
            return;
        }
        vVar.f(value);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public final void setSavedStateProvider(String key, SavedStateRegistry$SavedStateProvider provider) {
        key.getClass();
        provider.getClass();
        this.savedStateProviders.put(key, provider);
    }

    @MainThread
    public final <T> MutableLiveData<T> getLiveData(String key, T initialValue) {
        key.getClass();
        return getLiveDataInternal(key, true, initialValue);
    }

    public SavedStateHandle() {
        this.regular = new LinkedHashMap();
        this.savedStateProviders = new LinkedHashMap();
        this.liveDatas = new LinkedHashMap();
        this.flows = new LinkedHashMap();
        this.savedStateProvider = new e(2, this);
    }
}
