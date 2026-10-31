package androidx.constraintlayout.core.parser;

import ai.onnxruntime.AbstractC0074a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class CLNumber extends CLElement {
    float mValue;

    public CLNumber(char[] cArr) {
        super(cArr);
        this.mValue = Float.NaN;
    }

    public static CLElement allocate(char[] cArr) {
        return new CLNumber(cArr);
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CLNumber) {
            float f8 = getFloat();
            float f10 = ((CLNumber) obj).getFloat();
            if ((Float.isNaN(f8) && Float.isNaN(f10)) || f8 == f10) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public float getFloat() {
        if (Float.isNaN(this.mValue) && hasContent()) {
            this.mValue = Float.parseFloat(content());
        }
        return this.mValue;
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public int getInt() {
        if (Float.isNaN(this.mValue) && hasContent()) {
            this.mValue = Integer.parseInt(content());
        }
        return (int) this.mValue;
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public int hashCode() {
        int iHashCode = super.hashCode() * 31;
        float f8 = this.mValue;
        return iHashCode + (f8 != 0.0f ? Float.floatToIntBits(f8) : 0);
    }

    public boolean isInt() {
        float f8 = getFloat();
        return ((float) ((int) f8)) == f8;
    }

    public void putValue(float f8) {
        this.mValue = f8;
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toFormattedJSON(int i10, int i11) {
        StringBuilder sb = new StringBuilder();
        addIndent(sb, i10);
        float f8 = getFloat();
        int i12 = (int) f8;
        if (i12 == f8) {
            sb.append(i12);
        } else {
            sb.append(f8);
        }
        return sb.toString();
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toJSON() {
        float f8 = getFloat();
        int i10 = (int) f8;
        if (i10 == f8) {
            return AbstractC0074a.m154e(i10, "");
        }
        return "" + f8;
    }

    public CLNumber(float f8) {
        super(null);
        this.mValue = f8;
    }
}
