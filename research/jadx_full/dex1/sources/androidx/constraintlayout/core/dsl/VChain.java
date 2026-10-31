package androidx.constraintlayout.core.dsl;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class VChain extends Chain {
    private VChain$VAnchor mBaseline;
    private VChain$VAnchor mBottom;
    private VChain$VAnchor mTop;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public VChain(String str, String str2) {
        super(str);
        this.mTop = new VChain$VAnchor(this, Constraint$VSide.TOP);
        this.mBottom = new VChain$VAnchor(this, Constraint$VSide.BOTTOM);
        this.mBaseline = new VChain$VAnchor(this, Constraint$VSide.BASELINE);
        this.config = str2;
        this.type = new Helper$HelperType(Helper.typeMap.get(Helper$Type.VERTICAL_CHAIN));
        Map<String, String> mapConvertConfigToMap = convertConfigToMap();
        this.configMap = mapConvertConfigToMap;
        if (mapConvertConfigToMap.containsKey("contains")) {
            Ref.addStringToReferences(this.configMap.get("contains"), this.references);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public VChain$VAnchor getBaseline() {
        return this.mBaseline;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public VChain$VAnchor getBottom() {
        return this.mBottom;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public VChain$VAnchor getTop() {
        return this.mTop;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void linkToBaseline(Constraint$VAnchor constraint$VAnchor, int i9, int i10) {
        VChain$VAnchor vChain$VAnchor = this.mBaseline;
        vChain$VAnchor.mConnection = constraint$VAnchor;
        vChain$VAnchor.mMargin = i9;
        vChain$VAnchor.mGoneMargin = i10;
        this.configMap.put("baseline", vChain$VAnchor.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void linkToBottom(Constraint$VAnchor constraint$VAnchor, int i9, int i10) {
        VChain$VAnchor vChain$VAnchor = this.mBottom;
        vChain$VAnchor.mConnection = constraint$VAnchor;
        vChain$VAnchor.mMargin = i9;
        vChain$VAnchor.mGoneMargin = i10;
        this.configMap.put("bottom", vChain$VAnchor.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void linkToTop(Constraint$VAnchor constraint$VAnchor, int i9, int i10) {
        VChain$VAnchor vChain$VAnchor = this.mTop;
        vChain$VAnchor.mConnection = constraint$VAnchor;
        vChain$VAnchor.mMargin = i9;
        vChain$VAnchor.mGoneMargin = i10;
        this.configMap.put("top", vChain$VAnchor.toString());
    }

    public void linkToBaseline(Constraint$VAnchor constraint$VAnchor, int i9) {
        linkToBaseline(constraint$VAnchor, i9, Integer.MIN_VALUE);
    }

    public void linkToBottom(Constraint$VAnchor constraint$VAnchor, int i9) {
        linkToBottom(constraint$VAnchor, i9, Integer.MIN_VALUE);
    }

    public void linkToTop(Constraint$VAnchor constraint$VAnchor, int i9) {
        linkToTop(constraint$VAnchor, i9, Integer.MIN_VALUE);
    }

    public void linkToBaseline(Constraint$VAnchor constraint$VAnchor) {
        linkToBaseline(constraint$VAnchor, 0);
    }

    public void linkToBottom(Constraint$VAnchor constraint$VAnchor) {
        linkToBottom(constraint$VAnchor, 0);
    }

    public void linkToTop(Constraint$VAnchor constraint$VAnchor) {
        linkToTop(constraint$VAnchor, 0);
    }

    public VChain(String str) {
        super(str);
        this.mTop = new VChain$VAnchor(this, Constraint$VSide.TOP);
        this.mBottom = new VChain$VAnchor(this, Constraint$VSide.BOTTOM);
        this.mBaseline = new VChain$VAnchor(this, Constraint$VSide.BASELINE);
        this.type = new Helper$HelperType(Helper.typeMap.get(Helper$Type.VERTICAL_CHAIN));
    }
}
