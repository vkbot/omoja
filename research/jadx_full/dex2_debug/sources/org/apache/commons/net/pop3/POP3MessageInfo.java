package org.apache.commons.net.pop3;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class POP3MessageInfo {
    public String identifier;
    public int number;
    public int size;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private POP3MessageInfo(int i, String str, int i2) {
        this.number = i;
        this.size = i2;
        this.identifier = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "Number: " + this.number + ". Size: " + this.size + ". Id: " + this.identifier;
    }

    public POP3MessageInfo(int i, int i2) {
        this(i, null, i2);
    }

    public POP3MessageInfo(int i, String str) {
        this(i, str, -1);
    }

    public POP3MessageInfo() {
        this(0, null, 0);
    }
}
