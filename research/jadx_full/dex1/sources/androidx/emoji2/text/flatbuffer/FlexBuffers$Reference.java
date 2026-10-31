package androidx.emoji2.text.flatbuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FlexBuffers$Reference {
    private static final FlexBuffers$Reference NULL_REFERENCE = new FlexBuffers$Reference(FlexBuffers.access$000(), 0, 1, 0);
    private ReadBuf bb;
    private int byteWidth;
    private int end;
    private int parentWidth;
    private int type;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlexBuffers$Reference(ReadBuf readBuf, int i9, int i10, int i11) {
        this(readBuf, i9, i10, 1 << (i11 & 3), i11 >> 2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ FlexBuffers$Reference access$600() {
        return NULL_REFERENCE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlexBuffers$Blob asBlob() {
        if (!isBlob() && !isString()) {
            return FlexBuffers$Blob.empty();
        }
        ReadBuf readBuf = this.bb;
        return new FlexBuffers$Blob(readBuf, FlexBuffers.access$200(readBuf, this.end, this.parentWidth), this.byteWidth);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean asBoolean() {
        if (isBoolean()) {
            return this.bb.get(this.end) != 0;
        }
        return asUInt() != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double asFloat() {
        int i9 = this.type;
        if (i9 == 3) {
            return FlexBuffers.access$400(this.bb, this.end, this.parentWidth);
        }
        if (i9 == 1) {
            return FlexBuffers.access$100(this.bb, this.end, this.parentWidth);
        }
        if (i9 != 2) {
            if (i9 == 5) {
                return Double.parseDouble(asString());
            }
            if (i9 == 6) {
                ReadBuf readBuf = this.bb;
                return FlexBuffers.access$100(readBuf, FlexBuffers.access$200(readBuf, this.end, this.parentWidth), this.byteWidth);
            }
            if (i9 == 7) {
                ReadBuf readBuf2 = this.bb;
                return FlexBuffers.access$300(readBuf2, FlexBuffers.access$200(readBuf2, this.end, this.parentWidth), this.byteWidth);
            }
            if (i9 == 8) {
                ReadBuf readBuf3 = this.bb;
                return FlexBuffers.access$400(readBuf3, FlexBuffers.access$200(readBuf3, this.end, this.parentWidth), this.byteWidth);
            }
            if (i9 == 10) {
                return asVector().size();
            }
            if (i9 != 26) {
                return 0.0d;
            }
        }
        return FlexBuffers.access$300(this.bb, this.end, this.parentWidth);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int asInt() {
        int i9 = this.type;
        if (i9 == 1) {
            return FlexBuffers.access$100(this.bb, this.end, this.parentWidth);
        }
        if (i9 == 2) {
            return (int) FlexBuffers.access$300(this.bb, this.end, this.parentWidth);
        }
        if (i9 == 3) {
            return (int) FlexBuffers.access$400(this.bb, this.end, this.parentWidth);
        }
        if (i9 == 5) {
            return Integer.parseInt(asString());
        }
        if (i9 == 6) {
            ReadBuf readBuf = this.bb;
            return FlexBuffers.access$100(readBuf, FlexBuffers.access$200(readBuf, this.end, this.parentWidth), this.byteWidth);
        }
        if (i9 == 7) {
            ReadBuf readBuf2 = this.bb;
            return (int) FlexBuffers.access$300(readBuf2, FlexBuffers.access$200(readBuf2, this.end, this.parentWidth), this.parentWidth);
        }
        if (i9 == 8) {
            ReadBuf readBuf3 = this.bb;
            return (int) FlexBuffers.access$400(readBuf3, FlexBuffers.access$200(readBuf3, this.end, this.parentWidth), this.byteWidth);
        }
        if (i9 == 10) {
            return asVector().size();
        }
        if (i9 != 26) {
            return 0;
        }
        return FlexBuffers.access$100(this.bb, this.end, this.parentWidth);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlexBuffers$Key asKey() {
        if (!isKey()) {
            return FlexBuffers$Key.empty();
        }
        ReadBuf readBuf = this.bb;
        return new FlexBuffers$Key(readBuf, FlexBuffers.access$200(readBuf, this.end, this.parentWidth), this.byteWidth);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long asLong() {
        int i9 = this.type;
        if (i9 == 1) {
            return FlexBuffers.access$500(this.bb, this.end, this.parentWidth);
        }
        if (i9 == 2) {
            return FlexBuffers.access$300(this.bb, this.end, this.parentWidth);
        }
        if (i9 == 3) {
            return (long) FlexBuffers.access$400(this.bb, this.end, this.parentWidth);
        }
        if (i9 == 5) {
            try {
                return Long.parseLong(asString());
            } catch (NumberFormatException unused) {
                return 0L;
            }
        }
        if (i9 == 6) {
            ReadBuf readBuf = this.bb;
            return FlexBuffers.access$500(readBuf, FlexBuffers.access$200(readBuf, this.end, this.parentWidth), this.byteWidth);
        }
        if (i9 == 7) {
            ReadBuf readBuf2 = this.bb;
            return FlexBuffers.access$300(readBuf2, FlexBuffers.access$200(readBuf2, this.end, this.parentWidth), this.parentWidth);
        }
        if (i9 == 8) {
            ReadBuf readBuf3 = this.bb;
            return (long) FlexBuffers.access$400(readBuf3, FlexBuffers.access$200(readBuf3, this.end, this.parentWidth), this.byteWidth);
        }
        if (i9 == 10) {
            return asVector().size();
        }
        if (i9 != 26) {
            return 0L;
        }
        return FlexBuffers.access$100(this.bb, this.end, this.parentWidth);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlexBuffers$Map asMap() {
        if (!isMap()) {
            return FlexBuffers$Map.empty();
        }
        ReadBuf readBuf = this.bb;
        return new FlexBuffers$Map(readBuf, FlexBuffers.access$200(readBuf, this.end, this.parentWidth), this.byteWidth);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String asString() {
        if (isString()) {
            int iAccess$200 = FlexBuffers.access$200(this.bb, this.end, this.parentWidth);
            ReadBuf readBuf = this.bb;
            int i9 = this.byteWidth;
            return this.bb.getString(iAccess$200, (int) FlexBuffers.access$300(readBuf, iAccess$200 - i9, i9));
        }
        if (!isKey()) {
            return "";
        }
        int iAccess$201 = FlexBuffers.access$200(this.bb, this.end, this.byteWidth);
        int i10 = iAccess$201;
        while (this.bb.get(i10) != 0) {
            i10++;
        }
        return this.bb.getString(iAccess$201, i10 - iAccess$201);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long asUInt() {
        int i9 = this.type;
        if (i9 == 2) {
            return FlexBuffers.access$300(this.bb, this.end, this.parentWidth);
        }
        if (i9 == 1) {
            return FlexBuffers.access$500(this.bb, this.end, this.parentWidth);
        }
        if (i9 == 3) {
            return (long) FlexBuffers.access$400(this.bb, this.end, this.parentWidth);
        }
        if (i9 == 10) {
            return asVector().size();
        }
        if (i9 == 26) {
            return FlexBuffers.access$100(this.bb, this.end, this.parentWidth);
        }
        if (i9 == 5) {
            return Long.parseLong(asString());
        }
        if (i9 == 6) {
            ReadBuf readBuf = this.bb;
            return FlexBuffers.access$500(readBuf, FlexBuffers.access$200(readBuf, this.end, this.parentWidth), this.byteWidth);
        }
        if (i9 == 7) {
            ReadBuf readBuf2 = this.bb;
            return FlexBuffers.access$300(readBuf2, FlexBuffers.access$200(readBuf2, this.end, this.parentWidth), this.byteWidth);
        }
        if (i9 != 8) {
            return 0L;
        }
        ReadBuf readBuf3 = this.bb;
        return (long) FlexBuffers.access$400(readBuf3, FlexBuffers.access$200(readBuf3, this.end, this.parentWidth), this.parentWidth);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlexBuffers$Vector asVector() {
        if (isVector()) {
            ReadBuf readBuf = this.bb;
            return new FlexBuffers$Vector(readBuf, FlexBuffers.access$200(readBuf, this.end, this.parentWidth), this.byteWidth);
        }
        int i9 = this.type;
        if (i9 == 15) {
            ReadBuf readBuf2 = this.bb;
            return new FlexBuffers$TypedVector(readBuf2, FlexBuffers.access$200(readBuf2, this.end, this.parentWidth), this.byteWidth, 4);
        }
        if (!FlexBuffers.isTypedVector(i9)) {
            return FlexBuffers$Vector.empty();
        }
        ReadBuf readBuf3 = this.bb;
        return new FlexBuffers$TypedVector(readBuf3, FlexBuffers.access$200(readBuf3, this.end, this.parentWidth), this.byteWidth, FlexBuffers.toTypedVectorElementType(this.type));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getType() {
        return this.type;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isBlob() {
        return this.type == 25;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isBoolean() {
        return this.type == 26;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isFloat() {
        int i9 = this.type;
        return i9 == 3 || i9 == 8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isInt() {
        int i9 = this.type;
        return i9 == 1 || i9 == 6;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isIntOrUInt() {
        return isInt() || isUInt();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isKey() {
        return this.type == 4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isMap() {
        return this.type == 9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isNull() {
        return this.type == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isNumeric() {
        return isIntOrUInt() || isFloat();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isString() {
        return this.type == 5;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isTypedVector() {
        return FlexBuffers.isTypedVector(this.type);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isUInt() {
        int i9 = this.type;
        return i9 == 2 || i9 == 7;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isVector() {
        int i9 = this.type;
        return i9 == 10 || i9 == 9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public StringBuilder toString(StringBuilder sb) {
        int i9 = this.type;
        if (i9 != 36) {
            switch (i9) {
                case 0:
                    sb.append("null");
                    return sb;
                case 1:
                case 6:
                    sb.append(asLong());
                    return sb;
                case 2:
                case 7:
                    sb.append(asUInt());
                    return sb;
                case 3:
                case 8:
                    sb.append(asFloat());
                    return sb;
                case 4:
                    FlexBuffers$Key flexBuffers$KeyAsKey = asKey();
                    sb.append('\"');
                    StringBuilder string = flexBuffers$KeyAsKey.toString(sb);
                    string.append('\"');
                    return string;
                case 5:
                    sb.append('\"');
                    sb.append(asString());
                    sb.append('\"');
                    return sb;
                case 9:
                    return asMap().toString(sb);
                case 10:
                    return asVector().toString(sb);
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                    break;
                case 16:
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                    throw new FlexBuffers$FlexBufferException("not_implemented:" + this.type);
                case 25:
                    return asBlob().toString(sb);
                case 26:
                    sb.append(asBoolean());
                    return sb;
                default:
                    return sb;
            }
        }
        sb.append(asVector());
        return sb;
    }

    public FlexBuffers$Reference(ReadBuf readBuf, int i9, int i10, int i11, int i12) {
        this.bb = readBuf;
        this.end = i9;
        this.parentWidth = i10;
        this.byteWidth = i11;
        this.type = i12;
    }

    public String toString() {
        return toString(new StringBuilder(128)).toString();
    }
}
