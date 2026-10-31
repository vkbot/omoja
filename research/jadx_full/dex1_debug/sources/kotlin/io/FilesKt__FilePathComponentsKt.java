package kotlin.io;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0011\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0002¢\u0006\u0002\b\u0003\u001a\f\u0010\u000e\u001a\u00020\u000f*\u00020\u0005H\u0000\u001a\u001c\u0010\u0010\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0001H\u0000\"\u0018\u0010\u0004\u001a\u00020\u0002*\u00020\u00058@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007\"\u0018\u0010\b\u001a\u00020\u0005*\u00020\u00058@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n\"\u0015\u0010\u000b\u001a\u00020\f*\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\r¨\u0006\u0013"}, d2 = {"getRootLength", "", "", "getRootLength$FilesKt__FilePathComponentsKt", "rootName", "Ljava/io/File;", "getRootName", "(Ljava/io/File;)Ljava/lang/String;", "root", "getRoot", "(Ljava/io/File;)Ljava/io/File;", "isRooted", "", "(Ljava/io/File;)Z", "toComponents", "Lkotlin/io/FilePathComponents;", "subPath", "beginIndex", "endIndex", "kotlin-stdlib"}, k = 5, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_EDITOR_ABSOLUTEX, xs = "kotlin/io/FilesKt")
@SourceDebugExtension({"SMAP\nFilePathComponents.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilePathComponents.kt\nkotlin/io/FilesKt__FilePathComponentsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,149:1\n1563#2:150\n1634#2,3:151\n*S KotlinDebug\n*F\n+ 1 FilePathComponents.kt\nkotlin/io/FilesKt__FilePathComponentsKt\n*L\n134#1:150\n134#1:151,3\n*E\n"})
class FilesKt__FilePathComponentsKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final File getRoot(File file) {
        file.getClass();
        return new File(getRootName(file));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final int getRootLength$FilesKt__FilePathComponentsKt(String str) {
        int iV;
        char c = File.separatorChar;
        int iV2 = StringsKt.v(str, c, 0, 4);
        if (iV2 == 0) {
            if (str.length() <= 1 || str.charAt(1) != c || (iV = StringsKt.v(str, c, 2, 4)) < 0) {
                return 1;
            }
            int iV3 = StringsKt.v(str, c, iV + 1, 4);
            return iV3 >= 0 ? iV3 + 1 : str.length();
        }
        if (iV2 > 0 && str.charAt(iV2 - 1) == ':') {
            return iV2 + 1;
        }
        if (iV2 == -1 && StringsKt.q(str, ':')) {
            return str.length();
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final String getRootName(File file) {
        file.getClass();
        String path = file.getPath();
        path.getClass();
        String path2 = file.getPath();
        path2.getClass();
        return path.substring(0, getRootLength$FilesKt__FilePathComponentsKt(path2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final boolean isRooted(File file) {
        file.getClass();
        String path = file.getPath();
        path.getClass();
        return getRootLength$FilesKt__FilePathComponentsKt(path) > 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final File subPath(File file, int i9, int i10) {
        file.getClass();
        return toComponents(file).subPath(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final FilePathComponents toComponents(File file) {
        List listEmptyList;
        file.getClass();
        String path = file.getPath();
        path.getClass();
        int rootLength$FilesKt__FilePathComponentsKt = getRootLength$FilesKt__FilePathComponentsKt(path);
        String strSubstring = path.substring(0, rootLength$FilesKt__FilePathComponentsKt);
        String strSubstring2 = path.substring(rootLength$FilesKt__FilePathComponentsKt);
        if (strSubstring2.length() == 0) {
            listEmptyList = CollectionsKt.emptyList();
        } else {
            List listH = StringsKt.H(strSubstring2, new char[]{File.separatorChar});
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listH, 10));
            Iterator it = listH.iterator();
            while (it.hasNext()) {
                arrayList.add(new File((String) it.next()));
            }
            listEmptyList = arrayList;
        }
        return new FilePathComponents(new File(strSubstring), listEmptyList);
    }
}
