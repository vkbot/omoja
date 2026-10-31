package androidx.versionedparcelable;

import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class VersionedParcel$1 extends ObjectInputStream {
    final /* synthetic */ VersionedParcel this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VersionedParcel$1(VersionedParcel versionedParcel, InputStream inputStream) {
        super(inputStream);
        this.this$0 = versionedParcel;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.ObjectInputStream
    public Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws ClassNotFoundException {
        Class<?> cls = Class.forName(objectStreamClass.getName(), false, getClass().getClassLoader());
        return cls != null ? cls : super.resolveClass(objectStreamClass);
    }
}
