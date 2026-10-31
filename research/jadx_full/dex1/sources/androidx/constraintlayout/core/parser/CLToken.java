package androidx.constraintlayout.core.parser;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CLToken extends CLElement {
    int mIndex;
    char[] mTokenFalse;
    char[] mTokenNull;
    char[] mTokenTrue;
    CLToken$Type mType;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CLToken(char[] cArr) {
        super(cArr);
        this.mIndex = 0;
        this.mType = CLToken$Type.UNKNOWN;
        this.mTokenTrue = "true".toCharArray();
        this.mTokenFalse = "false".toCharArray();
        this.mTokenNull = "null".toCharArray();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static CLElement allocate(char[] cArr) {
        return new CLToken(cArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getBoolean() throws CLParsingException {
        CLToken$Type cLToken$Type = this.mType;
        if (cLToken$Type == CLToken$Type.TRUE) {
            return true;
        }
        if (cLToken$Type == CLToken$Type.FALSE) {
            return false;
        }
        throw new CLParsingException("this token is not a boolean: <" + content() + ">", this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CLToken$Type getType() {
        return this.mType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isNull() throws CLParsingException {
        if (this.mType == CLToken$Type.NULL) {
            return true;
        }
        throw new CLParsingException("this token is not a null: <" + content() + ">", this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toFormattedJSON(int i9, int i10) {
        StringBuilder sb = new StringBuilder();
        addIndent(sb, i9);
        sb.append(content());
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toJSON() {
        if (!CLParser.sDebug) {
            return content();
        }
        return "<" + content() + ">";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean validate(char c, long j9) {
        int iOrdinal = this.mType.ordinal();
        boolean z8 = false;
        if (iOrdinal == 0) {
            char[] cArr = this.mTokenTrue;
            int i9 = this.mIndex;
            if (cArr[i9] == c) {
                this.mType = CLToken$Type.TRUE;
            } else if (this.mTokenFalse[i9] == c) {
                this.mType = CLToken$Type.FALSE;
            } else if (this.mTokenNull[i9] == c) {
                this.mType = CLToken$Type.NULL;
            }
            z8 = true;
        } else if (iOrdinal == 1) {
            char[] cArr2 = this.mTokenTrue;
            int i10 = this.mIndex;
            z8 = cArr2[i10] == c;
            if (z8 && i10 + 1 == cArr2.length) {
                setEnd(j9);
            }
        } else if (iOrdinal == 2) {
            char[] cArr3 = this.mTokenFalse;
            int i11 = this.mIndex;
            z8 = cArr3[i11] == c;
            if (z8 && i11 + 1 == cArr3.length) {
                setEnd(j9);
            }
        } else if (iOrdinal == 3) {
            char[] cArr4 = this.mTokenNull;
            int i12 = this.mIndex;
            z8 = cArr4[i12] == c;
            if (z8 && i12 + 1 == cArr4.length) {
                setEnd(j9);
            }
        }
        this.mIndex++;
        return z8;
    }
}
