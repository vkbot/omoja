package androidx.constraintlayout.core.dsl;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class HChain extends Chain {
    private HChain$HAnchor mEnd;
    private HChain$HAnchor mLeft;
    private HChain$HAnchor mRight;
    private HChain$HAnchor mStart;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public HChain(String str, String str2) {
        super(str);
        this.mLeft = new HChain$HAnchor(this, Constraint$HSide.LEFT);
        this.mRight = new HChain$HAnchor(this, Constraint$HSide.RIGHT);
        this.mStart = new HChain$HAnchor(this, Constraint$HSide.START);
        this.mEnd = new HChain$HAnchor(this, Constraint$HSide.END);
        this.config = str2;
        this.type = new Helper$HelperType(Helper.typeMap.get(Helper$Type.HORIZONTAL_CHAIN));
        Map<String, String> mapConvertConfigToMap = convertConfigToMap();
        this.configMap = mapConvertConfigToMap;
        if (mapConvertConfigToMap.containsKey("contains")) {
            Ref.addStringToReferences(this.configMap.get("contains"), this.references);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public HChain$HAnchor getEnd() {
        return this.mEnd;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public HChain$HAnchor getLeft() {
        return this.mLeft;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public HChain$HAnchor getRight() {
        return this.mRight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public HChain$HAnchor getStart() {
        return this.mStart;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void linkToEnd(Constraint$HAnchor constraint$HAnchor, int i9, int i10) {
        HChain$HAnchor hChain$HAnchor = this.mEnd;
        hChain$HAnchor.mConnection = constraint$HAnchor;
        hChain$HAnchor.mMargin = i9;
        hChain$HAnchor.mGoneMargin = i10;
        this.configMap.put("end", hChain$HAnchor.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void linkToLeft(Constraint$HAnchor constraint$HAnchor, int i9, int i10) {
        HChain$HAnchor hChain$HAnchor = this.mLeft;
        hChain$HAnchor.mConnection = constraint$HAnchor;
        hChain$HAnchor.mMargin = i9;
        hChain$HAnchor.mGoneMargin = i10;
        this.configMap.put("left", hChain$HAnchor.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void linkToRight(Constraint$HAnchor constraint$HAnchor, int i9, int i10) {
        HChain$HAnchor hChain$HAnchor = this.mRight;
        hChain$HAnchor.mConnection = constraint$HAnchor;
        hChain$HAnchor.mMargin = i9;
        hChain$HAnchor.mGoneMargin = i10;
        this.configMap.put("right", hChain$HAnchor.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void linkToStart(Constraint$HAnchor constraint$HAnchor, int i9, int i10) {
        HChain$HAnchor hChain$HAnchor = this.mStart;
        hChain$HAnchor.mConnection = constraint$HAnchor;
        hChain$HAnchor.mMargin = i9;
        hChain$HAnchor.mGoneMargin = i10;
        this.configMap.put("start", hChain$HAnchor.toString());
    }

    public void linkToEnd(Constraint$HAnchor constraint$HAnchor, int i9) {
        linkToEnd(constraint$HAnchor, i9, Integer.MIN_VALUE);
    }

    public void linkToLeft(Constraint$HAnchor constraint$HAnchor, int i9) {
        linkToLeft(constraint$HAnchor, i9, Integer.MIN_VALUE);
    }

    public void linkToRight(Constraint$HAnchor constraint$HAnchor, int i9) {
        linkToRight(constraint$HAnchor, i9, Integer.MIN_VALUE);
    }

    public void linkToStart(Constraint$HAnchor constraint$HAnchor, int i9) {
        linkToStart(constraint$HAnchor, i9, Integer.MIN_VALUE);
    }

    public void linkToEnd(Constraint$HAnchor constraint$HAnchor) {
        linkToEnd(constraint$HAnchor, 0);
    }

    public void linkToLeft(Constraint$HAnchor constraint$HAnchor) {
        linkToLeft(constraint$HAnchor, 0);
    }

    public void linkToRight(Constraint$HAnchor constraint$HAnchor) {
        linkToRight(constraint$HAnchor, 0);
    }

    public void linkToStart(Constraint$HAnchor constraint$HAnchor) {
        linkToStart(constraint$HAnchor, 0);
    }

    public HChain(String str) {
        super(str);
        this.mLeft = new HChain$HAnchor(this, Constraint$HSide.LEFT);
        this.mRight = new HChain$HAnchor(this, Constraint$HSide.RIGHT);
        this.mStart = new HChain$HAnchor(this, Constraint$HSide.START);
        this.mEnd = new HChain$HAnchor(this, Constraint$HSide.END);
        this.type = new Helper$HelperType(Helper.typeMap.get(Helper$Type.HORIZONTAL_CHAIN));
    }
}
