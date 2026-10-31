package alfusos.rpc;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class RpcManager {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static RpcManager getInstance() {
        return RpcManager$Holder.mInstance;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public byte[] getMessage(int i9, byte[] bArr) {
        return new byte[0];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean sendMessage(int i9, byte[] bArr) {
        return false;
    }

    public void registerListener(int i9, byte b9, RpcManager$OnRpcListener rpcManager$OnRpcListener) {
    }
}
