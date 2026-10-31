package kotlin.io;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\n\u0010\r\u001a\u0004\u0018\u00010\u0003H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\tX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;", "Lkotlin/io/FileTreeWalk$DirectoryState;", "rootDir", "Ljava/io/File;", "<init>", "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V", "rootVisited", "", "fileList", "", "[Ljava/io/File;", "fileIndex", "", "step", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState extends FileTreeWalk$DirectoryState {
    private int fileIndex;
    private File[] fileList;
    private boolean rootVisited;
    final /* synthetic */ FileTreeWalk$FileTreeWalkIterator this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState(FileTreeWalk$FileTreeWalkIterator fileTreeWalk$FileTreeWalkIterator, File file) {
        super(file);
        file.getClass();
        this.this$0 = fileTreeWalk$FileTreeWalkIterator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007e, code lost:
    
        if (r0.length == 0) goto L31;
     */
    @Override // kotlin.io.FileTreeWalk$WalkState
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public File step() {
        Function2 function2Access$getOnFail$p;
        if (!this.rootVisited) {
            Function1 function1Access$getOnEnter$p = FileTreeWalk.access$getOnEnter$p(this.this$0.this$0);
            if (function1Access$getOnEnter$p != null && !((Boolean) function1Access$getOnEnter$p.invoke(getRoot())).booleanValue()) {
                return null;
            }
            this.rootVisited = true;
            return getRoot();
        }
        File[] fileArr = this.fileList;
        if (fileArr != null) {
            int i9 = this.fileIndex;
            fileArr.getClass();
            if (i9 >= fileArr.length) {
                Function1 function1Access$getOnLeave$p = FileTreeWalk.access$getOnLeave$p(this.this$0.this$0);
                if (function1Access$getOnLeave$p != null) {
                    function1Access$getOnLeave$p.invoke(getRoot());
                }
                return null;
            }
        }
        if (this.fileList == null) {
            File[] fileArrListFiles = getRoot().listFiles();
            this.fileList = fileArrListFiles;
            if (fileArrListFiles == null && (function2Access$getOnFail$p = FileTreeWalk.access$getOnFail$p(this.this$0.this$0)) != null) {
                function2Access$getOnFail$p.invoke(getRoot(), new AccessDeniedException(getRoot(), null, "Cannot list files in a directory", 2, null));
            }
            File[] fileArr2 = this.fileList;
            if (fileArr2 != null) {
                fileArr2.getClass();
            }
            Function1 function1Access$getOnLeave$p2 = FileTreeWalk.access$getOnLeave$p(this.this$0.this$0);
            if (function1Access$getOnLeave$p2 != null) {
                function1Access$getOnLeave$p2.invoke(getRoot());
            }
            return null;
        }
        File[] fileArr3 = this.fileList;
        fileArr3.getClass();
        int i10 = this.fileIndex;
        this.fileIndex = i10 + 1;
        return fileArr3[i10];
    }
}
