package ai.onnxruntime;

import f7.e;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.function.Function;
import org.apache.commons.io.ByteOrderMark;
import org.apache.commons.io.filefilter.IOFileFilter;
import org.apache.commons.io.output.BrokenOutputStream;
import org.apache.commons.net.ftp.FTPClient;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f58b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(int i9) {
        this.f58b = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f58b) {
            case 0:
                return TensorInfo.a((String) obj);
            case 1:
                return ((Thread) obj).getName();
            case 2:
                return ((e) obj).a();
            case 3:
                IOFileFilter iOFileFilter = (IOFileFilter) obj;
                Objects.requireNonNull(iOFileFilter);
                return iOFileFilter;
            case 4:
                return Integer.valueOf(((ByteOrderMark) obj).length());
            case 5:
                return BrokenOutputStream.c((String) obj);
            case 6:
                return FTPClient.a((String) obj);
            case 7:
                return new ArrayList();
            case 8:
                return new ArrayList();
            case 9:
                return new HashSet();
            case 10:
                return new ArrayList();
            default:
                return new LinkedHashSet();
        }
    }
}
