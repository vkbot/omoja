package p130l9;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import kotlin.UByte;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import p140m9.AbstractC2431b;

/* JADX INFO: renamed from: l9.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class C2245o implements Serializable, Comparable {

    /* JADX INFO: renamed from: e */
    public static final C2245o f5879e = new C2245o(new byte[0]);

    /* JADX INFO: renamed from: b */
    public final byte[] f5880b;

    /* JADX INFO: renamed from: c */
    public transient int f5881c;

    /* JADX INFO: renamed from: d */
    public transient String f5882d;

    public C2245o(byte[] bArr) {
        bArr.getClass();
        this.f5880b = bArr;
    }

    /* JADX INFO: renamed from: g */
    public static final C2245o m3635g(byte... bArr) {
        bArr.getClass();
        return new C2245o(Arrays.copyOf(bArr, bArr.length));
    }

    /* JADX INFO: renamed from: a */
    public String mo3583a() {
        byte[] bArr = AbstractC2221a.f5844a;
        byte[] bArr2 = this.f5880b;
        bArr2.getClass();
        bArr.getClass();
        byte[] bArr3 = new byte[((bArr2.length + 2) / 3) * 4];
        int length = bArr2.length - (bArr2.length % 3);
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            byte b10 = bArr2[i10];
            int i12 = i10 + 2;
            byte b11 = bArr2[i10 + 1];
            i10 += 3;
            byte b12 = bArr2[i12];
            bArr3[i11] = bArr[(b10 & UByte.MAX_VALUE) >> 2];
            bArr3[i11 + 1] = bArr[((b10 & 3) << 4) | ((b11 & UByte.MAX_VALUE) >> 4)];
            int i13 = i11 + 3;
            bArr3[i11 + 2] = bArr[((b11 & 15) << 2) | ((b12 & UByte.MAX_VALUE) >> 6)];
            i11 += 4;
            bArr3[i13] = bArr[b12 & 63];
        }
        int length2 = bArr2.length - length;
        if (length2 == 1) {
            byte b13 = bArr2[i10];
            bArr3[i11] = bArr[(b13 & UByte.MAX_VALUE) >> 2];
            bArr3[i11 + 1] = bArr[(b13 & 3) << 4];
            bArr3[i11 + 2] = Base64.padSymbol;
            bArr3[i11 + 3] = Base64.padSymbol;
        } else if (length2 == 2) {
            int i14 = i10 + 1;
            byte b14 = bArr2[i10];
            byte b15 = bArr2[i14];
            bArr3[i11] = bArr[(b14 & UByte.MAX_VALUE) >> 2];
            bArr3[i11 + 1] = bArr[((b14 & 3) << 4) | ((b15 & UByte.MAX_VALUE) >> 4)];
            bArr3[i11 + 2] = bArr[(b15 & 15) << 2];
            bArr3[i11 + 3] = Base64.padSymbol;
        }
        return new String(bArr3, Charsets.UTF_8);
    }

    /* JADX INFO: renamed from: b */
    public C2245o mo3584b(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        messageDigest.update(this.f5880b, 0, mo3585c());
        byte[] bArrDigest = messageDigest.digest();
        bArrDigest.getClass();
        return new C2245o(bArrDigest);
    }

    /* JADX INFO: renamed from: c */
    public int mo3585c() {
        return this.f5880b.length;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        C2245o c2245o = (C2245o) obj;
        c2245o.getClass();
        int iMo3585c = mo3585c();
        int iMo3585c2 = c2245o.mo3585c();
        int iMin = Math.min(iMo3585c, iMo3585c2);
        for (int i10 = 0; i10 < iMin; i10++) {
            int iMo3588f = mo3588f(i10) & UByte.MAX_VALUE;
            int iMo3588f2 = c2245o.mo3588f(i10) & UByte.MAX_VALUE;
            if (iMo3588f != iMo3588f2) {
                return iMo3588f < iMo3588f2 ? -1 : 1;
            }
        }
        if (iMo3585c == iMo3585c2) {
            return 0;
        }
        return iMo3585c < iMo3585c2 ? -1 : 1;
    }

    /* JADX INFO: renamed from: d */
    public String mo3586d() {
        byte[] bArr = this.f5880b;
        char[] cArr = new char[bArr.length * 2];
        int i10 = 0;
        for (byte b10 : bArr) {
            int i11 = i10 + 1;
            char[] cArr2 = AbstractC2431b.f6598a;
            cArr[i10] = cArr2[(b10 >> 4) & 15];
            i10 += 2;
            cArr[i11] = cArr2[b10 & 15];
        }
        return StringsKt.concatToString(cArr);
    }

    /* JADX INFO: renamed from: e */
    public byte[] mo3587e() {
        return this.f5880b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2245o) {
            C2245o c2245o = (C2245o) obj;
            int iMo3585c = c2245o.mo3585c();
            byte[] bArr = this.f5880b;
            if (iMo3585c == bArr.length && c2245o.mo3589h(0, 0, bArr.length, bArr)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: f */
    public byte mo3588f(int i10) {
        return this.f5880b[i10];
    }

    /* JADX INFO: renamed from: h */
    public boolean mo3589h(int i10, int i11, int i12, byte[] bArr) {
        bArr.getClass();
        if (i10 >= 0) {
            byte[] bArr2 = this.f5880b;
            if (i10 <= bArr2.length - i12 && i11 >= 0 && i11 <= bArr.length - i12) {
                for (int i13 = 0; i13 < i12; i13++) {
                    if (bArr2[i13 + i10] == bArr[i13 + i11]) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i10 = this.f5881c;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = Arrays.hashCode(this.f5880b);
        this.f5881c = iHashCode;
        return iHashCode;
    }

    /* JADX INFO: renamed from: i */
    public boolean mo3590i(C2245o c2245o, int i10) {
        c2245o.getClass();
        return c2245o.mo3589h(0, 0, i10, this.f5880b);
    }

    /* JADX INFO: renamed from: j */
    public C2245o mo3591j() {
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f5880b;
            if (i10 >= bArr.length) {
                return this;
            }
            byte b10 = bArr[i10];
            if (b10 >= 65 && b10 <= 90) {
                byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
                bArrCopyOf[i10] = (byte) (b10 + 32);
                for (int i11 = i10 + 1; i11 < bArrCopyOf.length; i11++) {
                    byte b11 = bArrCopyOf[i11];
                    if (b11 >= 65 && b11 <= 90) {
                        bArrCopyOf[i11] = (byte) (b11 + 32);
                    }
                }
                return new C2245o(bArrCopyOf);
            }
            i10++;
        }
    }

    /* JADX INFO: renamed from: k */
    public byte[] mo3592k() {
        byte[] bArr = this.f5880b;
        return Arrays.copyOf(bArr, bArr.length);
    }

    /* JADX INFO: renamed from: l */
    public final String m3636l() {
        String str = this.f5882d;
        if (str != null) {
            return str;
        }
        byte[] bArrMo3587e = mo3587e();
        bArrMo3587e.getClass();
        String str2 = new String(bArrMo3587e, Charsets.UTF_8);
        this.f5882d = str2;
        return str2;
    }

    /* JADX INFO: renamed from: m */
    public void mo3593m(int i10, C2242l c2242l) {
        c2242l.m7551write(this.f5880b, 0, i10);
    }

    /* JADX WARN: Code duplicated, block: B:179:0x01bc A[EDGE_INSN: B:179:0x01bc->B:180:0x01bd BREAK  A[LOOP:0: B:7:0x000e->B:241:0x000e]] */
    public String toString() {
        byte b10;
        int i10;
        byte[] bArr = this.f5880b;
        if (bArr.length == 0) {
            return "[size=0]";
        }
        int length = bArr.length;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        loop0: while (i11 < length) {
            byte b11 = bArr[i11];
            if (b11 < 0) {
                if ((b11 >> 5) != -2) {
                    if ((b11 >> 4) != -2) {
                        if ((b11 >> 3) != -2) {
                            if (i13 == 64) {
                                break;
                            }
                            i12 = -1;
                            break;
                        }
                        int i14 = i11 + 3;
                        if (length > i14) {
                            byte b12 = bArr[i11 + 1];
                            if ((b12 & 192) != 128) {
                                if (i13 == 64) {
                                    break;
                                }
                                i12 = -1;
                                break;
                            }
                            byte b13 = bArr[i11 + 2];
                            if ((b13 & 192) != 128) {
                                if (i13 == 64) {
                                    break;
                                }
                                i12 = -1;
                                break;
                            }
                            byte b14 = bArr[i14];
                            if ((b14 & 192) != 128) {
                                if (i13 == 64) {
                                    break;
                                }
                                i12 = -1;
                                break;
                            }
                            int i15 = (((b14 ^ ByteCompanionObject.MIN_VALUE) ^ (b13 << 6)) ^ (b12 << 12)) ^ (b11 << 18);
                            if (i15 <= 1114111) {
                                if (55296 <= i15 && i15 < 57344) {
                                    if (i13 == 64) {
                                        break;
                                    }
                                    i12 = -1;
                                    break;
                                }
                                if (i15 >= 65536) {
                                    i10 = i13 + 1;
                                    if (i13 == 64) {
                                        break;
                                    }
                                    if ((i15 != 10 && i15 != 13 && ((i15 >= 0 && i15 < 32) || (127 <= i15 && i15 < 160))) || i15 == 65533) {
                                        i12 = -1;
                                        break;
                                    }
                                    i12 += i15 < 65536 ? 1 : 2;
                                    Unit unit = Unit.INSTANCE;
                                    i11 += 4;
                                    i13 = i10;
                                } else {
                                    if (i13 == 64) {
                                        break;
                                    }
                                    i12 = -1;
                                    break;
                                }
                            } else {
                                if (i13 == 64) {
                                    break;
                                }
                                i12 = -1;
                                break;
                            }
                        } else {
                            if (i13 == 64) {
                                break;
                            }
                            i12 = -1;
                            break;
                        }
                    } else {
                        int i16 = i11 + 2;
                        if (length > i16) {
                            byte b15 = bArr[i11 + 1];
                            if ((b15 & 192) != 128) {
                                if (i13 == 64) {
                                    break;
                                }
                                i12 = -1;
                                break;
                            }
                            byte b16 = bArr[i16];
                            if ((b16 & 192) != 128) {
                                if (i13 == 64) {
                                    break;
                                }
                                i12 = -1;
                                break;
                            }
                            int i17 = ((b16 ^ ByteCompanionObject.MIN_VALUE) ^ (b15 << 6)) ^ (b11 << 12);
                            if (i17 >= 2048) {
                                if (55296 <= i17 && i17 < 57344) {
                                    if (i13 == 64) {
                                        break;
                                    }
                                    i12 = -1;
                                    break;
                                }
                                i10 = i13 + 1;
                                if (i13 == 64) {
                                    break;
                                }
                                if ((i17 != 10 && i17 != 13 && ((i17 >= 0 && i17 < 32) || (127 <= i17 && i17 < 160))) || i17 == 65533) {
                                    i12 = -1;
                                    break;
                                }
                                i12 += i17 < 65536 ? 1 : 2;
                                Unit unit2 = Unit.INSTANCE;
                                i11 += 3;
                                i13 = i10;
                            } else {
                                if (i13 == 64) {
                                    break;
                                }
                                i12 = -1;
                                break;
                            }
                        } else {
                            if (i13 == 64) {
                                break;
                            }
                            i12 = -1;
                            break;
                        }
                    }
                } else {
                    int i18 = i11 + 1;
                    if (length > i18) {
                        byte b17 = bArr[i18];
                        if ((b17 & 192) != 128) {
                            if (i13 == 64) {
                                break;
                            }
                            i12 = -1;
                            break;
                        }
                        int i19 = (b17 ^ ByteCompanionObject.MIN_VALUE) ^ (b11 << 6);
                        if (i19 >= 128) {
                            i10 = i13 + 1;
                            if (i13 == 64) {
                                break;
                            }
                            if ((i19 != 10 && i19 != 13 && ((i19 >= 0 && i19 < 32) || (127 <= i19 && i19 < 160))) || i19 == 65533) {
                                i12 = -1;
                                break;
                            }
                            i12 += i19 < 65536 ? 1 : 2;
                            Unit unit3 = Unit.INSTANCE;
                            i11 += 2;
                            i13 = i10;
                        } else {
                            if (i13 == 64) {
                                break;
                            }
                            i12 = -1;
                            break;
                        }
                    } else {
                        if (i13 == 64) {
                            break;
                        }
                        i12 = -1;
                        break;
                    }
                }
            } else {
                int i20 = i13 + 1;
                if (i13 == 64) {
                    break;
                }
                if ((b11 == 10 || b11 == 13 || ((b11 < 0 || b11 >= 32) && (127 > b11 || b11 >= 160))) && b11 != 65533) {
                    i12 += b11 < 65536 ? 1 : 2;
                    i11++;
                    while (true) {
                        i13 = i20;
                        if (i11 < length && (b10 = bArr[i11]) >= 0) {
                            i11++;
                            i20 = i13 + 1;
                            if (i13 == 64) {
                                break loop0;
                            }
                            if ((b10 == 10 || b10 == 13 || ((b10 < 0 || b10 >= 32) && (127 > b10 || b10 >= 160))) && b10 != 65533) {
                                i12 += b10 < 65536 ? 1 : 2;
                            }
                        }
                    }
                }
                i12 = -1;
                break;
            }
        }
        if (i12 != -1) {
            String strM3636l = m3636l();
            String strReplace$default = StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(strM3636l.substring(0, i12), "\\", "\\\\", false, 4, (Object) null), "\n", "\\n", false, 4, (Object) null), "\r", "\\r", false, 4, (Object) null);
            if (i12 >= strM3636l.length()) {
                return "[text=" + strReplace$default + ']';
            }
            return "[size=" + bArr.length + " text=" + strReplace$default + "…]";
        }
        if (bArr.length <= 64) {
            return "[hex=" + mo3586d() + ']';
        }
        StringBuilder sb = new StringBuilder("[size=");
        sb.append(bArr.length);
        sb.append(" hex=");
        if (64 > bArr.length) {
            C2237i.m3595b(bArr.length, 41, "endIndex > length(");
            return null;
        }
        sb.append((64 == bArr.length ? this : new C2245o(ArraysKt.copyOfRange(bArr, 0, 64))).mo3586d());
        sb.append("…]");
        return sb.toString();
    }
}
