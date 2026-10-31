package i7;

import com.example.navistart.SuperWidgets.WidgetBuilderFragment;
import java.io.Writer;
import java.util.Objects;
import java.util.function.Predicate;
import org.apache.commons.io.comparator.CompositeFileComparator;
import org.apache.commons.io.file.DeleteOption;
import org.apache.commons.io.file.PathUtils;
import org.apache.commons.io.file.StandardDeleteOption;
import org.apache.commons.net.ftp.parser.UnixFTPEntryParser;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class k implements Predicate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2695a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ k(int i9) {
        this.f2695a = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f2695a) {
            case 0:
                return ((Boolean) obj).booleanValue();
            case 1:
                return ((n0.e) ((Enum) obj)).a().booleanValue();
            case 2:
                return CompositeFileComparator.a((Integer) obj);
            case 3:
                return PathUtils.f((DeleteOption) obj);
            case 4:
                return StandardDeleteOption.a((DeleteOption) obj);
            case 5:
                return Objects.nonNull((Writer) obj);
            case 6:
                return UnixFTPEntryParser.a((String) obj);
            case 7:
                return x0.c.i((x0.m) obj);
            default:
                return WidgetBuilderFragment.M((x0.m) obj);
        }
    }
}
