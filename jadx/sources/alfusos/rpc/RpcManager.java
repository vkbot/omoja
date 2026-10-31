package alfusos.rpc;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class RpcManager {

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Holder {
        static RpcManager mInstance = new RpcManager();

        private Holder() {
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public interface OnRpcListener {
        void onCallback(int i10, byte[] bArr);
    }

    public static RpcManager getInstance() {
        return Holder.mInstance;
    }

    public byte[] getMessage(int i10, byte[] bArr) {
        return new byte[0];
    }

    public boolean sendMessage(int i10, byte[] bArr) {
        return false;
    }

    public void registerListener(int i10, byte b10, OnRpcListener onRpcListener) {
    }
}
