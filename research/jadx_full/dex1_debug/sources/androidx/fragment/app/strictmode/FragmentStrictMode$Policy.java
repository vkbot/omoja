package androidx.fragment.app.strictmode;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map$Entry;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.JvmField;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 \u00162\u00020\u0001:\u0002\u0015\u0016BA\b\u0000\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012 \u0010\u0007\u001a\u001c\u0012\u0004\u0012\u00020\t\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\f0\u000b0\n0\b¢\u0006\u0002\u0010\rR\u001a\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R.\u0010\u0012\u001a\u001c\u0012\u0004\u0012\u00020\t\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\f0\u000b0\u00030\bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;", "", "flags", "", "Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;", "listener", "Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;", "allowedViolations", "", "", "", "Ljava/lang/Class;", "Landroidx/fragment/app/strictmode/Violation;", "(Ljava/util/Set;Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;Ljava/util/Map;)V", "getFlags$fragment_release", "()Ljava/util/Set;", "getListener$fragment_release", "()Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;", "mAllowedViolations", "getMAllowedViolations$fragment_release", "()Ljava/util/Map;", "Builder", "Companion", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class FragmentStrictMode$Policy {
    public static final FragmentStrictMode$Policy$Companion Companion = new FragmentStrictMode$Policy$Companion(null);

    @JvmField
    public static final FragmentStrictMode$Policy LAX = new FragmentStrictMode$Policy(SetsKt.emptySet(), null, MapsKt.emptyMap());
    private final Set<FragmentStrictMode$Flag> flags;
    private final FragmentStrictMode$OnViolationListener listener;
    private final Map<String, Set<Class<? extends Violation>>> mAllowedViolations;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: java.util.Set<? extends androidx.fragment.app.strictmode.FragmentStrictMode$Flag> */
    /* JADX WARN: Multi-variable type inference failed */
    public FragmentStrictMode$Policy(Set<? extends FragmentStrictMode$Flag> set, FragmentStrictMode$OnViolationListener fragmentStrictMode$OnViolationListener, Map<String, ? extends Set<Class<? extends Violation>>> map) {
        set.getClass();
        map.getClass();
        this.flags = set;
        this.listener = fragmentStrictMode$OnViolationListener;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map$Entry<String, ? extends Set<Class<? extends Violation>>> map$Entry : map.entrySet()) {
            linkedHashMap.put(map$Entry.getKey(), map$Entry.getValue());
        }
        this.mAllowedViolations = linkedHashMap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Set<FragmentStrictMode$Flag> getFlags$fragment_release() {
        return this.flags;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getListener$fragment_release, reason: from getter */
    public final FragmentStrictMode$OnViolationListener getListener() {
        return this.listener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Map<String, Set<Class<? extends Violation>>> getMAllowedViolations$fragment_release() {
        return this.mAllowedViolations;
    }
}
