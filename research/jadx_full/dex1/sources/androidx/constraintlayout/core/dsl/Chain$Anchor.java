package androidx.constraintlayout.core.dsl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Chain$Anchor {
    Constraint$Anchor mConnection = null;
    int mGoneMargin = Integer.MIN_VALUE;
    int mMargin;
    final Constraint$Side mSide;
    final /* synthetic */ Chain this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Chain$Anchor(Chain chain, Constraint$Side constraint$Side) {
        this.this$0 = chain;
        this.mSide = constraint$Side;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void build(StringBuilder sb) {
        if (this.mConnection != null) {
            sb.append(this.mSide.toString().toLowerCase());
            sb.append(":");
            sb.append(this);
            sb.append(",\n");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getId() {
        return this.this$0.name;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb = new StringBuilder("[");
        if (this.mConnection != null) {
            sb.append("'");
            sb.append(this.mConnection.getId());
            sb.append("','");
            sb.append(this.mConnection.mSide.toString().toLowerCase());
            sb.append("'");
        }
        if (this.mMargin != 0) {
            sb.append(",");
            sb.append(this.mMargin);
        }
        if (this.mGoneMargin != Integer.MIN_VALUE) {
            if (this.mMargin == 0) {
                sb.append(",0,");
                sb.append(this.mGoneMargin);
            } else {
                sb.append(",");
                sb.append(this.mGoneMargin);
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
