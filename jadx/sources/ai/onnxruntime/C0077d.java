package ai.onnxruntime;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.function.Function;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.p161io.ByteOrderMark;
import org.apache.commons.p161io.filefilter.IOFileFilter;
import org.apache.commons.p161io.output.BrokenOutputStream;
import p064f7.C1588e;

/* JADX INFO: renamed from: ai.onnxruntime.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0077d implements Function {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f159b;

    public /* synthetic */ C0077d(int i10) {
        this.f159b = i10;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f159b) {
            case 0:
                return TensorInfo.lambda$toString$0((String) obj);
            case 1:
                return ((Thread) obj).getName();
            case 2:
                return ((C1588e) obj).m2673a();
            case 3:
                IOFileFilter iOFileFilter = (IOFileFilter) obj;
                Objects.requireNonNull(iOFileFilter);
                return iOFileFilter;
            case 4:
                return Integer.valueOf(((ByteOrderMark) obj).length());
            case 5:
                return BrokenOutputStream.lambda$new$0((String) obj);
            case 6:
                return FTPClient.lambda$initFeatureMap$0((String) obj);
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
