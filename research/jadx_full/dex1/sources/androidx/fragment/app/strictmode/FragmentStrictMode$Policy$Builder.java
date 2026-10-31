package androidx.fragment.app.strictmode;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.fragment.app.Fragment;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J(\u0010\r\u001a\u00020\u00002\u000e\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000f0\u000b2\u000e\u0010\u0010\u001a\n\u0012\u0006\b\u0001\u0012\u00020\f0\u000bH\u0007J \u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\n2\u000e\u0010\u0010\u001a\n\u0012\u0006\b\u0001\u0012\u00020\f0\u000bH\u0007J\u0006\u0010\u0011\u001a\u00020\u0012J\b\u0010\u0013\u001a\u00020\u0000H\u0007J\b\u0010\u0014\u001a\u00020\u0000H\u0007J\b\u0010\u0015\u001a\u00020\u0000H\u0007J\b\u0010\u0016\u001a\u00020\u0000H\u0007J\b\u0010\u0017\u001a\u00020\u0000H\u0007J\b\u0010\u0018\u001a\u00020\u0000H\u0007J\b\u0010\u0019\u001a\u00020\u0000H\u0007J\b\u0010\u001a\u001a\u00020\u0000H\u0007J\u0010\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\b\u0010\u001c\u001a\u00020\u0000H\u0007R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R(\u0010\b\u001a\u001c\u0012\u0004\u0012\u00020\n\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\f0\u000b0\u00040\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;", "", "()V", "flags", "", "Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;", "listener", "Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;", "mAllowedViolations", "", "", "Ljava/lang/Class;", "Landroidx/fragment/app/strictmode/Violation;", "allowViolation", "fragmentClass", "Landroidx/fragment/app/Fragment;", "violationClass", "build", "Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;", "detectFragmentReuse", "detectFragmentTagUsage", "detectRetainInstanceUsage", "detectSetUserVisibleHint", "detectTargetFragmentUsage", "detectWrongFragmentContainer", "detectWrongNestedHierarchy", "penaltyDeath", "penaltyListener", "penaltyLog", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class FragmentStrictMode$Policy$Builder {
    private FragmentStrictMode$OnViolationListener listener;
    private final Set<FragmentStrictMode$Flag> flags = new LinkedHashSet();
    private final Map<String, Set<Class<? extends Violation>>> mAllowedViolations = new LinkedHashMap();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final FragmentStrictMode$Policy$Builder allowViolation(String fragmentClass, Class<? extends Violation> violationClass) {
        fragmentClass.getClass();
        violationClass.getClass();
        Set<Class<? extends Violation>> linkedHashSet = this.mAllowedViolations.get(fragmentClass);
        if (linkedHashSet == null) {
            linkedHashSet = new LinkedHashSet<>();
        }
        linkedHashSet.add(violationClass);
        this.mAllowedViolations.put(fragmentClass, linkedHashSet);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final FragmentStrictMode$Policy build() {
        if (this.listener == null && !this.flags.contains(FragmentStrictMode$Flag.PENALTY_DEATH)) {
            penaltyLog();
        }
        return new FragmentStrictMode$Policy(this.flags, this.listener, this.mAllowedViolations);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final FragmentStrictMode$Policy$Builder detectFragmentReuse() {
        this.flags.add(FragmentStrictMode$Flag.DETECT_FRAGMENT_REUSE);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final FragmentStrictMode$Policy$Builder detectFragmentTagUsage() {
        this.flags.add(FragmentStrictMode$Flag.DETECT_FRAGMENT_TAG_USAGE);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final FragmentStrictMode$Policy$Builder detectRetainInstanceUsage() {
        this.flags.add(FragmentStrictMode$Flag.DETECT_RETAIN_INSTANCE_USAGE);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final FragmentStrictMode$Policy$Builder detectSetUserVisibleHint() {
        this.flags.add(FragmentStrictMode$Flag.DETECT_SET_USER_VISIBLE_HINT);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final FragmentStrictMode$Policy$Builder detectTargetFragmentUsage() {
        this.flags.add(FragmentStrictMode$Flag.DETECT_TARGET_FRAGMENT_USAGE);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final FragmentStrictMode$Policy$Builder detectWrongFragmentContainer() {
        this.flags.add(FragmentStrictMode$Flag.DETECT_WRONG_FRAGMENT_CONTAINER);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final FragmentStrictMode$Policy$Builder detectWrongNestedHierarchy() {
        this.flags.add(FragmentStrictMode$Flag.DETECT_WRONG_NESTED_HIERARCHY);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final FragmentStrictMode$Policy$Builder penaltyDeath() {
        this.flags.add(FragmentStrictMode$Flag.PENALTY_DEATH);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final FragmentStrictMode$Policy$Builder penaltyListener(FragmentStrictMode$OnViolationListener listener) {
        listener.getClass();
        this.listener = listener;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final FragmentStrictMode$Policy$Builder penaltyLog() {
        this.flags.add(FragmentStrictMode$Flag.PENALTY_LOG);
        return this;
    }

    public final FragmentStrictMode$Policy$Builder allowViolation(Class<? extends Fragment> fragmentClass, Class<? extends Violation> violationClass) {
        fragmentClass.getClass();
        violationClass.getClass();
        return allowViolation(fragmentClass.getName(), violationClass);
    }
}
