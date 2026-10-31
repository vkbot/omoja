package androidx.constraintlayout.core.dsl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class Guideline extends Helper {
    private int mEnd;
    private float mPercent;
    private int mStart;

    public Guideline(String str) {
        super(str, new Helper.HelperType(""));
        this.mStart = Integer.MIN_VALUE;
        this.mEnd = Integer.MIN_VALUE;
        this.mPercent = Float.NaN;
    }

    public int getEnd() {
        return this.mEnd;
    }

    public float getPercent() {
        return this.mPercent;
    }

    public int getStart() {
        return this.mStart;
    }

    public void setEnd(int i10) {
        this.mEnd = i10;
        this.configMap.put("end", String.valueOf(i10));
    }

    public void setPercent(float f8) {
        this.mPercent = f8;
        this.configMap.put("percent", String.valueOf(f8));
    }

    public void setStart(int i10) {
        this.mStart = i10;
        this.configMap.put("start", String.valueOf(i10));
    }
}
