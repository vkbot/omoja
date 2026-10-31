package androidx.profileinstaller;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY})
public class ProfileVerifier$Cache {
    private static final int SCHEMA = 1;
    final long mInstalledCurrentProfileSize;
    final long mPackageLastUpdateTime;
    final int mResultCode;
    final int mSchema;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ProfileVerifier$Cache(int i9, int i10, long j9, long j10) {
        this.mSchema = i9;
        this.mResultCode = i10;
        this.mPackageLastUpdateTime = j9;
        this.mInstalledCurrentProfileSize = j10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ProfileVerifier$Cache readFromFile(@NonNull File file) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
        try {
            ProfileVerifier$Cache profileVerifier$Cache = new ProfileVerifier$Cache(dataInputStream.readInt(), dataInputStream.readInt(), dataInputStream.readLong(), dataInputStream.readLong());
            dataInputStream.close();
            return profileVerifier$Cache;
        } catch (Throwable th) {
            try {
                dataInputStream.close();
                throw th;
            } catch (Throwable th2) {
                th.addSuppressed(th2);
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof ProfileVerifier$Cache)) {
            ProfileVerifier$Cache profileVerifier$Cache = (ProfileVerifier$Cache) obj;
            if (this.mResultCode == profileVerifier$Cache.mResultCode && this.mPackageLastUpdateTime == profileVerifier$Cache.mPackageLastUpdateTime && this.mSchema == profileVerifier$Cache.mSchema && this.mInstalledCurrentProfileSize == profileVerifier$Cache.mInstalledCurrentProfileSize) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mResultCode), Long.valueOf(this.mPackageLastUpdateTime), Integer.valueOf(this.mSchema), Long.valueOf(this.mInstalledCurrentProfileSize));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeOnFile(@NonNull File file) throws IOException {
        file.delete();
        DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
        try {
            dataOutputStream.writeInt(this.mSchema);
            dataOutputStream.writeInt(this.mResultCode);
            dataOutputStream.writeLong(this.mPackageLastUpdateTime);
            dataOutputStream.writeLong(this.mInstalledCurrentProfileSize);
            dataOutputStream.close();
        } catch (Throwable th) {
            try {
                dataOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
