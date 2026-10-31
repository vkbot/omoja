package d5;

import com.google.protobuf.a1;
import com.google.protobuf.x;
import com.google.protobuf.x0;
import com.google.protobuf.y;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class p extends y {
    public static final int BUTTON_HEX_COLOR_FIELD_NUMBER = 2;
    private static final p DEFAULT_INSTANCE;
    private static volatile x0 PARSER = null;
    public static final int TEXT_FIELD_NUMBER = 1;
    private int bitField0_;
    private String buttonHexColor_ = "";
    private u text_;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        p pVar = new p();
        DEFAULT_INSTANCE = pVar;
        y.l(p.class, pVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static p o() {
        return DEFAULT_INSTANCE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.y
    public final Object e(int i9) {
        x0 xVar;
        switch (com.bumptech.glide.g.c(i9)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new a1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002Ȉ", new Object[]{"bitField0_", "text_", "buttonHexColor_"});
            case 3:
                return new p();
            case 4:
                return new a(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                x0 x0Var = PARSER;
                if (x0Var != null) {
                    return x0Var;
                }
                synchronized (p.class) {
                    try {
                        xVar = PARSER;
                        if (xVar == null) {
                            xVar = new x(DEFAULT_INSTANCE);
                            PARSER = xVar;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return xVar;
            default:
                androidx.navigation.b.a();
                return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String n() {
        return this.buttonHexColor_;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final u p() {
        u uVar = this.text_;
        return uVar == null ? u.n() : uVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean q() {
        return (this.bitField0_ & 1) != 0;
    }
}
