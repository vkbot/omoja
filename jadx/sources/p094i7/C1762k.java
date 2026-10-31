package p094i7;

import java.io.Writer;
import java.util.Objects;
import java.util.function.Predicate;
import org.apache.commons.net.ftp.parser.UnixFTPEntryParser;
import org.apache.commons.p161io.comparator.CompositeFileComparator;
import org.apache.commons.p161io.file.DeleteOption;
import org.apache.commons.p161io.file.PathUtils;
import org.apache.commons.p161io.file.StandardDeleteOption;
import p142n0.InterfaceC2470e;
import p235x0.C3549c;
import p235x0.C3559m;

/* JADX INFO: renamed from: i7.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1762k implements Predicate {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f4611a;

    public /* synthetic */ C1762k(int i10) {
        this.f4611a = i10;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f4611a) {
            case 0:
                return ((Boolean) obj).booleanValue();
            case 1:
                return ((InterfaceC2470e) ((Enum) obj)).mo3818a().booleanValue();
            case 2:
                return CompositeFileComparator.lambda$compare$2((Integer) obj);
            case 3:
                return PathUtils.lambda$overrideReadOnly$3((DeleteOption) obj);
            case 4:
                return StandardDeleteOption.lambda$overrideReadOnly$0((DeleteOption) obj);
            case 5:
                return Objects.nonNull((Writer) obj);
            case 6:
                return UnixFTPEntryParser.lambda$preParse$0((String) obj);
            case 7:
                return C3549c.m5655i((C3559m) obj);
            default:
                return ((C3559m) obj).f10583f;
        }
    }
}
