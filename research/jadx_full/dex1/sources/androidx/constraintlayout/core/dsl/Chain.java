package androidx.constraintlayout.core.dsl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class Chain extends Helper {
    protected static final Map<Chain$Style, String> styleMap;
    private Chain$Style mStyle;
    protected ArrayList<Ref> references;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        HashMap map = new HashMap();
        styleMap = map;
        map.put(Chain$Style.SPREAD, "'spread'");
        map.put(Chain$Style.SPREAD_INSIDE, "'spread_inside'");
        map.put(Chain$Style.PACKED, "'packed'");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Chain(String str) {
        super(str, new Helper$HelperType(""));
        this.mStyle = null;
        this.references = new ArrayList<>();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Chain addReference(Ref ref) {
        this.references.add(ref);
        this.configMap.put("contains", referencesToString());
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Chain$Style getStyle() {
        return this.mStyle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String referencesToString() {
        if (this.references.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder("[");
        ArrayList<Ref> arrayList = this.references;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Ref ref = arrayList.get(i9);
            i9++;
            sb.append(ref.toString());
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStyle(Chain$Style chain$Style) {
        this.mStyle = chain$Style;
        this.configMap.put("style", styleMap.get(chain$Style));
    }

    public Chain addReference(String str) {
        return addReference(Ref.parseStringToRef(str));
    }
}
