package android.net.netlink;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class NetlinkErrorMessage extends NetlinkMessage {
    private StructNlMsgErr mNlMsgErr;

    public static NetlinkErrorMessage parse(StructNlMsgHdr header, ByteBuffer byteBuffer) {
        NetlinkErrorMessage errorMsg = new NetlinkErrorMessage(header);
        StructNlMsgErr structNlMsgErr = StructNlMsgErr.parse(byteBuffer);
        errorMsg.mNlMsgErr = structNlMsgErr;
        if (structNlMsgErr == null) {
            return null;
        }
        return errorMsg;
    }

    NetlinkErrorMessage(StructNlMsgHdr header) {
        super(header);
        this.mNlMsgErr = null;
    }

    public StructNlMsgErr getNlMsgError() {
        return this.mNlMsgErr;
    }

    @Override // android.net.netlink.NetlinkMessage
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("NetlinkErrorMessage{ nlmsghdr{");
        sb.append(this.mHeader == null ? "" : this.mHeader.toString());
        sb.append("}, nlmsgerr{");
        StructNlMsgErr structNlMsgErr = this.mNlMsgErr;
        sb.append(structNlMsgErr != null ? structNlMsgErr.toString() : "");
        sb.append("} }");
        return sb.toString();
    }
}
