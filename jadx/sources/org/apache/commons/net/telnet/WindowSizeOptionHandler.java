package org.apache.commons.net.telnet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class WindowSizeOptionHandler extends TelnetOptionHandler {
    protected static final int WINDOW_SIZE = 31;
    private int height;
    private int width;

    public WindowSizeOptionHandler(int i10, int i11) {
        super(31, false, false, false, false);
        this.width = i10;
        this.height = i11;
    }

    @Override // org.apache.commons.net.telnet.TelnetOptionHandler
    public int[] startSubnegotiationLocal() {
        int i10 = this.width;
        int i11 = this.height;
        int i12 = (65536 * i10) + i11;
        int i13 = i10 % 256 == 255 ? 6 : 5;
        if (i10 / 256 == 255) {
            i13++;
        }
        if (i11 % 256 == 255) {
            i13++;
        }
        if (i11 / 256 == 255) {
            i13++;
        }
        int[] iArr = new int[i13];
        iArr[0] = 31;
        int i14 = 24;
        int i15 = 1;
        while (i15 < i13) {
            int i16 = ((255 << i14) & i12) >>> i14;
            iArr[i15] = i16;
            if (i16 == 255) {
                i15++;
                iArr[i15] = 255;
            }
            i15++;
            i14 -= 8;
        }
        return iArr;
    }

    public WindowSizeOptionHandler(int i10, int i11, boolean z9, boolean z10, boolean z11, boolean z12) {
        super(31, z9, z10, z11, z12);
        this.width = i10;
        this.height = i11;
    }
}
