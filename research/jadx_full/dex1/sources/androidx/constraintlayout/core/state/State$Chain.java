package androidx.constraintlayout.core.state;

import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 androidx.constraintlayout.core.state.State$Chain, still in use, count: 1, list:
  (r0v0 androidx.constraintlayout.core.state.State$Chain) from 0x0044: INVOKE 
  (wrap java.util.Map<java.lang.String, androidx.constraintlayout.core.state.State$Chain>:0x0040: SGET  A[WRAPPED] (LINE:65) androidx.constraintlayout.core.state.State$Chain.chainMap java.util.Map)
  ("spread")
  (r0v0 androidx.constraintlayout.core.state.State$Chain)
 INTERFACE call: java.util.Map.put(java.lang.Object, java.lang.Object):java.lang.Object A[MD:(K, V):V (c)] (LINE:69)
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class State$Chain {
    SPREAD,
    SPREAD_INSIDE,
    PACKED;

    public static Map<String, State$Chain> chainMap = new HashMap();
    public static Map<String, Integer> valueMap = new HashMap();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        chainMap.put("packed", new State$Chain());
        chainMap.put("spread_inside", new State$Chain());
        chainMap.put("spread", new State$Chain());
        valueMap.put("packed", 2);
        valueMap.put("spread_inside", 1);
        valueMap.put("spread", 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private State$Chain() {
        super(str, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static State$Chain getChainByString(String str) {
        if (chainMap.containsKey(str)) {
            return chainMap.get(str);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int getValueByString(String str) {
        if (valueMap.containsKey(str)) {
            return valueMap.get(str).intValue();
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static State$Chain valueOf(String str) {
        return (State$Chain) Enum.valueOf(State$Chain.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static State$Chain[] values() {
        return (State$Chain[]) $VALUES.clone();
    }
}
