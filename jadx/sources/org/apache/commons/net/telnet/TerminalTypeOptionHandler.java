package org.apache.commons.net.telnet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class TerminalTypeOptionHandler extends TelnetOptionHandler {
    protected static final int TERMINAL_TYPE = 24;
    protected static final int TERMINAL_TYPE_IS = 0;
    protected static final int TERMINAL_TYPE_SEND = 1;
    private final String termType;

    public TerminalTypeOptionHandler(String str) {
        super(24, false, false, false, false);
        this.termType = str;
    }

    @Override // org.apache.commons.net.telnet.TelnetOptionHandler
    public int[] answerSubnegotiation(int[] iArr, int i10) {
        String str;
        if (iArr == null || i10 <= 1 || (str = this.termType) == null) {
            return null;
        }
        if (iArr[0] != 24 || iArr[1] != 1) {
            return null;
        }
        int[] iArr2 = new int[str.length() + 2];
        iArr2[0] = 24;
        iArr2[1] = 0;
        for (int i11 = 0; i11 < this.termType.length(); i11++) {
            iArr2[i11 + 2] = this.termType.charAt(i11);
        }
        return iArr2;
    }

    public TerminalTypeOptionHandler(String str, boolean z9, boolean z10, boolean z11, boolean z12) {
        super(24, z9, z10, z11, z12);
        this.termType = str;
    }
}
