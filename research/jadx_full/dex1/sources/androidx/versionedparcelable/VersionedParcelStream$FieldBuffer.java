package androidx.versionedparcelable;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class VersionedParcelStream$FieldBuffer {
    final DataOutputStream mDataStream;
    private final int mFieldId;
    final ByteArrayOutputStream mOutput;
    private final DataOutputStream mTarget;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public VersionedParcelStream$FieldBuffer(int i9, DataOutputStream dataOutputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.mOutput = byteArrayOutputStream;
        this.mDataStream = new DataOutputStream(byteArrayOutputStream);
        this.mFieldId = i9;
        this.mTarget = dataOutputStream;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void flushField() throws IOException {
        this.mDataStream.flush();
        int size = this.mOutput.size();
        this.mTarget.writeInt((this.mFieldId << 16) | (size >= 65535 ? 65535 : size));
        if (size >= 65535) {
            this.mTarget.writeInt(size);
        }
        this.mOutput.writeTo(this.mTarget);
    }
}
