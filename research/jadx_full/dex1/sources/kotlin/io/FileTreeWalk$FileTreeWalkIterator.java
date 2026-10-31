package kotlin.io;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.io.File;
import java.util.ArrayDeque;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.AbstractIterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u000e\u000f\u0010B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\b\u001a\u00020\tH\u0014J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0002H\u0002J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0082\u0010R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;", "Lkotlin/collections/AbstractIterator;", "Ljava/io/File;", "<init>", "(Lkotlin/io/FileTreeWalk;)V", "state", "Ljava/util/ArrayDeque;", "Lkotlin/io/FileTreeWalk$WalkState;", "computeNext", "", "directoryState", "Lkotlin/io/FileTreeWalk$DirectoryState;", "root", "gotoNext", "BottomUpDirectoryState", "TopDownDirectoryState", "SingleFileState", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class FileTreeWalk$FileTreeWalkIterator extends AbstractIterator<File> {
    private final ArrayDeque<FileTreeWalk$WalkState> state;
    final /* synthetic */ FileTreeWalk this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public FileTreeWalk$FileTreeWalkIterator(FileTreeWalk fileTreeWalk) {
        this.this$0 = fileTreeWalk;
        ArrayDeque<FileTreeWalk$WalkState> arrayDeque = new ArrayDeque<>();
        this.state = arrayDeque;
        if (FileTreeWalk.access$getStart$p(fileTreeWalk).isDirectory()) {
            arrayDeque.push(directoryState(FileTreeWalk.access$getStart$p(fileTreeWalk)));
        } else if (FileTreeWalk.access$getStart$p(fileTreeWalk).isFile()) {
            arrayDeque.push(new FileTreeWalk$FileTreeWalkIterator$SingleFileState(this, FileTreeWalk.access$getStart$p(fileTreeWalk)));
        } else {
            done();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final FileTreeWalk$DirectoryState directoryState(File root) {
        int i9 = FileTreeWalk$FileTreeWalkIterator$WhenMappings.$EnumSwitchMapping$0[FileTreeWalk.access$getDirection$p(this.this$0).ordinal()];
        if (i9 == 1) {
            return new FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState(this, root);
        }
        if (i9 == 2) {
            return new FileTreeWalk$FileTreeWalkIterator$BottomUpDirectoryState(this, root);
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final File gotoNext() {
        while (true) {
            FileTreeWalk$WalkState fileTreeWalk$WalkStatePeek = this.state.peek();
            if (fileTreeWalk$WalkStatePeek == null) {
                return null;
            }
            File fileStep = fileTreeWalk$WalkStatePeek.step();
            if (fileStep == null) {
                this.state.pop();
            } else {
                if (Intrinsics.areEqual(fileStep, fileTreeWalk$WalkStatePeek.getRoot()) || !fileStep.isDirectory() || this.state.size() >= FileTreeWalk.access$getMaxDepth$p(this.this$0)) {
                    return fileStep;
                }
                this.state.push(directoryState(fileStep));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.collections.AbstractIterator
    public void computeNext() {
        File fileGotoNext = gotoNext();
        if (fileGotoNext != null) {
            setNext(fileGotoNext);
        } else {
            done();
        }
    }
}
