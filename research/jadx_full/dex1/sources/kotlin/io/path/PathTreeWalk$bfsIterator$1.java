package kotlin.io.path;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.nio.file.Path;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.SequenceScope;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlin/sequences/SequenceScope;", "Ljava/nio/file/Path;"}, k = 3, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@DebugMetadata(c = "kotlin.io.path.PathTreeWalk$bfsIterator$1", f = "PathTreeWalk.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1}, l = {191, 197}, m = "invokeSuspend", n = {"$this$iterator", "queue", "entriesReader", "pathNode", "this_$iv", "$this$yieldIfNeeded$iv", "path$iv", "$i$f$yieldIfNeeded", "$this$iterator", "queue", "entriesReader", "pathNode", "this_$iv", "$this$yieldIfNeeded$iv", "path$iv", "$i$f$yieldIfNeeded"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "I$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "I$0"})
@SourceDebugExtension({"SMAP\nPathTreeWalk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$bfsIterator$1\n+ 2 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk\n*L\n1#1,180:1\n44#2,19:181\n*S KotlinDebug\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$bfsIterator$1\n*L\n101#1:181,19\n*E\n"})
public final class PathTreeWalk$bfsIterator$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Path>, Continuation<? super Unit>, Object> {
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    int label;
    final /* synthetic */ PathTreeWalk this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PathTreeWalk$bfsIterator$1(PathTreeWalk pathTreeWalk, Continuation<? super PathTreeWalk$bfsIterator$1> continuation) {
        super(2, continuation);
        this.this$0 = pathTreeWalk;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        PathTreeWalk$bfsIterator$1 pathTreeWalk$bfsIterator$1 = new PathTreeWalk$bfsIterator$1(this.this$0, continuation);
        pathTreeWalk$bfsIterator$1.L$0 = obj;
        return pathTreeWalk$bfsIterator$1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(SequenceScope<? super Path> sequenceScope, Continuation<? super Unit> continuation) {
        return ((PathTreeWalk$bfsIterator$1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:13:0x008b  */
    /* JADX WARN: Code duplicated, block: B:15:0x009e  */
    /* JADX WARN: Code duplicated, block: B:20:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:22:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:25:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:29:0x0106  */
    /* JADX WARN: Code duplicated, block: B:30:0x010f  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ba A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0104 -> B:11:0x0085). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0106 -> B:11:0x0085). Please report as a decompilation issue!!! */
    /*  JADX ERROR: StackOverflowError in pass: RegionMakerVisitor
        java.lang.StackOverflowError
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:731)
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:749)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            java.lang.Object r0 = r11.L$0
            kotlin.sequences.SequenceScope r0 = (kotlin.sequences.SequenceScope) r0
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r11.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L52
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2e
            java.lang.Object r2 = r11.L$6
            java.nio.file.Path r2 = (java.nio.file.Path) r2
            java.lang.Object r2 = r11.L$5
            kotlin.sequences.SequenceScope r2 = (kotlin.sequences.SequenceScope) r2
            java.lang.Object r2 = r11.L$4
            kotlin.io.path.PathTreeWalk r2 = (kotlin.io.path.PathTreeWalk) r2
            java.lang.Object r2 = r11.L$3
            kotlin.io.path.PathNode r2 = (kotlin.io.path.PathNode) r2
            java.lang.Object r2 = r11.L$2
            kotlin.io.path.DirectoryEntriesReader r2 = (kotlin.io.path.DirectoryEntriesReader) r2
            java.lang.Object r5 = r11.L$1
            kotlin.collections.ArrayDeque r5 = (kotlin.collections.ArrayDeque) r5
            kotlin.ResultKt.throwOnFailure(r12)
            goto L85
        L2e:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            j1.i.l(r12)
            r12 = 0
            return r12
        L35:
            java.lang.Object r2 = r11.L$6
            java.nio.file.Path r2 = (java.nio.file.Path) r2
            java.lang.Object r5 = r11.L$5
            kotlin.sequences.SequenceScope r5 = (kotlin.sequences.SequenceScope) r5
            java.lang.Object r5 = r11.L$4
            kotlin.io.path.PathTreeWalk r5 = (kotlin.io.path.PathTreeWalk) r5
            java.lang.Object r6 = r11.L$3
            kotlin.io.path.PathNode r6 = (kotlin.io.path.PathNode) r6
            java.lang.Object r7 = r11.L$2
            kotlin.io.path.DirectoryEntriesReader r7 = (kotlin.io.path.DirectoryEntriesReader) r7
            java.lang.Object r8 = r11.L$1
            kotlin.collections.ArrayDeque r8 = (kotlin.collections.ArrayDeque) r8
            kotlin.ResultKt.throwOnFailure(r12)
            goto Le9
        L52:
            kotlin.ResultKt.throwOnFailure(r12)
            kotlin.collections.ArrayDeque r12 = new kotlin.collections.ArrayDeque
            r12.<init>()
            kotlin.io.path.DirectoryEntriesReader r2 = new kotlin.io.path.DirectoryEntriesReader
            kotlin.io.path.PathTreeWalk r5 = r11.this$0
            boolean r5 = kotlin.io.path.PathTreeWalk.access$getFollowLinks(r5)
            r2.<init>(r5)
            kotlin.io.path.PathNode r5 = new kotlin.io.path.PathNode
            kotlin.io.path.PathTreeWalk r6 = r11.this$0
            java.nio.file.Path r6 = kotlin.io.path.PathTreeWalk.access$getStart$p(r6)
            kotlin.io.path.PathTreeWalk r7 = r11.this$0
            java.nio.file.Path r7 = kotlin.io.path.PathTreeWalk.access$getStart$p(r7)
            kotlin.io.path.PathTreeWalk r8 = r11.this$0
            java.nio.file.LinkOption[] r8 = kotlin.io.path.PathTreeWalk.access$getLinkOptions(r8)
            java.lang.Object r7 = kotlin.io.path.PathTreeWalkKt.access$keyOf(r7, r8)
            r8 = 0
            r5.<init>(r6, r7, r8)
            r12.addLast(r5)
            r5 = r12
        L85:
            boolean r12 = r5.isEmpty()
            if (r12 != 0) goto L156
            java.lang.Object r12 = r5.removeFirst()
            r6 = r12
            kotlin.io.path.PathNode r6 = (kotlin.io.path.PathNode) r6
            kotlin.io.path.PathTreeWalk r12 = r11.this$0
            java.nio.file.Path r7 = r6.getPath()
            kotlin.io.path.PathNode r8 = r6.getParent()
            if (r8 == 0) goto La1
            kotlin.io.path.PathsKt__PathRecursiveFunctionsKt.checkFileName(r7)
        La1:
            java.nio.file.LinkOption[] r8 = kotlin.io.path.PathTreeWalk.access$getLinkOptions(r12)
            int r9 = r8.length
            java.lang.Object[] r8 = java.util.Arrays.copyOf(r8, r9)
            java.nio.file.LinkOption[] r8 = (java.nio.file.LinkOption[]) r8
            int r9 = r8.length
            java.lang.Object[] r8 = java.util.Arrays.copyOf(r8, r9)
            java.nio.file.LinkOption[] r8 = (java.nio.file.LinkOption[]) r8
            boolean r8 = java.nio.file.Files.isDirectory(r7, r8)
            r9 = 0
            if (r8 == 0) goto L11b
            boolean r8 = kotlin.io.path.PathTreeWalkKt.access$createsCycle(r6)
            if (r8 != 0) goto L10f
            boolean r8 = kotlin.io.path.PathTreeWalk.access$getIncludeDirectories(r12)
            if (r8 == 0) goto Lee
            r11.L$0 = r0
            r11.L$1 = r5
            r11.L$2 = r2
            r11.L$3 = r6
            r11.L$4 = r12
            java.lang.Object r8 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r0)
            r11.L$5 = r8
            r11.L$6 = r7
            r11.I$0 = r9
            r11.label = r4
            java.lang.Object r8 = r0.yield(r7, r11)
            if (r8 != r1) goto Le4
            goto L155
        Le4:
            r8 = r7
            r7 = r2
            r2 = r8
            r8 = r5
            r5 = r12
        Le9:
            r12 = r7
            r7 = r2
            r2 = r12
            r12 = r5
            r5 = r8
        Lee:
            java.nio.file.LinkOption[] r12 = kotlin.io.path.PathTreeWalk.access$getLinkOptions(r12)
            int r8 = r12.length
            java.lang.Object[] r12 = java.util.Arrays.copyOf(r12, r8)
            java.nio.file.LinkOption[] r12 = (java.nio.file.LinkOption[]) r12
            int r8 = r12.length
            java.lang.Object[] r12 = java.util.Arrays.copyOf(r12, r8)
            java.nio.file.LinkOption[] r12 = (java.nio.file.LinkOption[]) r12
            boolean r12 = java.nio.file.Files.isDirectory(r7, r12)
            if (r12 == 0) goto L85
            java.util.List r12 = r2.readEntries(r6)
            r5.addAll(r12)
            goto L85
        L10f:
            java.nio.file.FileSystemLoopException r12 = new java.nio.file.FileSystemLoopException
            java.lang.String r12 = r7.toString()
            java.nio.file.FileSystemLoopException r0 = new java.nio.file.FileSystemLoopException
            r0.<init>(r12)
            throw r0
        L11b:
            java.nio.file.LinkOption[] r8 = new java.nio.file.LinkOption[r4]
            java.nio.file.LinkOption r10 = java.nio.file.LinkOption.NOFOLLOW_LINKS
            r8[r9] = r10
            java.lang.Object[] r8 = java.util.Arrays.copyOf(r8, r4)
            java.nio.file.LinkOption[] r8 = (java.nio.file.LinkOption[]) r8
            boolean r8 = java.nio.file.Files.exists(r7, r8)
            if (r8 == 0) goto L85
            r11.L$0 = r0
            r11.L$1 = r5
            r11.L$2 = r2
            java.lang.Object r6 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r6)
            r11.L$3 = r6
            java.lang.Object r12 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r12)
            r11.L$4 = r12
            java.lang.Object r12 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r0)
            r11.L$5 = r12
            java.lang.Object r12 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r7)
            r11.L$6 = r12
            r11.I$0 = r9
            r11.label = r3
            java.lang.Object r12 = r0.yield(r7, r11)
            if (r12 != r1) goto L85
        L155:
            return r1
        L156:
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.path.PathTreeWalk$bfsIterator$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(SequenceScope<? super Path> sequenceScope, Continuation<? super Unit> continuation) {
        return invoke2(sequenceScope, continuation);
    }
}
