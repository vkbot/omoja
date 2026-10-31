package kotlin.io;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\n\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\tX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$BottomUpDirectoryState;", "Lkotlin/io/FileTreeWalk$DirectoryState;", "rootDir", "Ljava/io/File;", "<init>", "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V", "rootVisited", "", "fileList", "", "[Ljava/io/File;", "fileIndex", "", "failed", "step", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class FileTreeWalk$FileTreeWalkIterator$BottomUpDirectoryState extends FileTreeWalk$DirectoryState {
    private boolean failed;
    private int fileIndex;
    private File[] fileList;
    private boolean rootVisited;
    final /* synthetic */ FileTreeWalk$FileTreeWalkIterator this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileTreeWalk$FileTreeWalkIterator$BottomUpDirectoryState(FileTreeWalk$FileTreeWalkIterator fileTreeWalk$FileTreeWalkIterator, File file) {
        super(file);
        file.getClass();
        this.this$0 = fileTreeWalk$FileTreeWalkIterator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.io.FileTreeWalk$WalkState
    public File step() {
        if (!this.failed && this.fileList == null) {
            Function1 function1Access$getOnEnter$p = FileTreeWalk.access$getOnEnter$p(this.this$0.this$0);
            if (function1Access$getOnEnter$p != null && !((Boolean) function1Access$getOnEnter$p.invoke(getRoot())).booleanValue()) {
                return null;
            }
            File[] fileArrListFiles = getRoot().listFiles();
            this.fileList = fileArrListFiles;
            if (fileArrListFiles == null) {
                Function2 function2Access$getOnFail$p = FileTreeWalk.access$getOnFail$p(this.this$0.this$0);
                if (function2Access$getOnFail$p != null) {
                    function2Access$getOnFail$p.invoke(getRoot(), new AccessDeniedException(getRoot(), null, "Cannot list files in a directory", 2, null));
                }
                this.failed = true;
            }
        }
        File[] fileArr = this.fileList;
        if (fileArr != null) {
            int i9 = this.fileIndex;
            fileArr.getClass();
            if (i9 < fileArr.length) {
                File[] fileArr2 = this.fileList;
                fileArr2.getClass();
                int i10 = this.fileIndex;
                this.fileIndex = i10 + 1;
                return fileArr2[i10];
            }
        }
        if (!this.rootVisited) {
            this.rootVisited = true;
            return getRoot();
        }
        Function1 function1Access$getOnLeave$p = FileTreeWalk.access$getOnLeave$p(this.this$0.this$0);
        if (function1Access$getOnLeave$p != null) {
            function1Access$getOnLeave$p.invoke(getRoot());
        }
        return null;
    }
}
