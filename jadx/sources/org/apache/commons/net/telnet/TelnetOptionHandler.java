package org.apache.commons.net.telnet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class TelnetOptionHandler {
    private boolean acceptLocal;
    private boolean acceptRemote;
    private boolean doFlag;
    private boolean initialLocal;
    private boolean initialRemote;
    private int optionCode;
    private boolean willFlag;

    public TelnetOptionHandler(int i10, boolean z9, boolean z10, boolean z11, boolean z12) {
        this.optionCode = i10;
        this.initialLocal = z9;
        this.initialRemote = z10;
        this.acceptLocal = z11;
        this.acceptRemote = z12;
    }

    public int[] answerSubnegotiation(int[] iArr, int i10) {
        return null;
    }

    public boolean getAcceptLocal() {
        return this.acceptLocal;
    }

    public boolean getAcceptRemote() {
        return this.acceptRemote;
    }

    public boolean getDo() {
        return this.doFlag;
    }

    public boolean getInitLocal() {
        return this.initialLocal;
    }

    public boolean getInitRemote() {
        return this.initialRemote;
    }

    public int getOptionCode() {
        return this.optionCode;
    }

    public boolean getWill() {
        return this.willFlag;
    }

    public void setAcceptLocal(boolean z9) {
        this.acceptLocal = z9;
    }

    public void setAcceptRemote(boolean z9) {
        this.acceptRemote = z9;
    }

    public void setDo(boolean z9) {
        this.doFlag = z9;
    }

    public void setInitLocal(boolean z9) {
        this.initialLocal = z9;
    }

    public void setInitRemote(boolean z9) {
        this.initialRemote = z9;
    }

    public void setWill(boolean z9) {
        this.willFlag = z9;
    }

    public int[] startSubnegotiationLocal() {
        return null;
    }

    public int[] startSubnegotiationRemote() {
        return null;
    }
}
