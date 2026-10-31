package org.apache.commons.net.pop3;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class POP3MessageInfo {
    public String identifier;
    public int number;
    public int size;

    private POP3MessageInfo(int i10, String str, int i11) {
        this.number = i10;
        this.size = i11;
        this.identifier = str;
    }

    public String toString() {
        return "Number: " + this.number + ". Size: " + this.size + ". Id: " + this.identifier;
    }

    public POP3MessageInfo(int i10, int i11) {
        this(i10, null, i11);
    }

    public POP3MessageInfo(int i10, String str) {
        this(i10, str, -1);
    }

    public POP3MessageInfo() {
        this(0, null, 0);
    }
}
