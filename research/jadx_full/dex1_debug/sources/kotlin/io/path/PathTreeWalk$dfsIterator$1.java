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
@DebugMetadata(c = "kotlin.io.path.PathTreeWalk$dfsIterator$1", f = "PathTreeWalk.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3}, l = {191, 197, 210, 216}, m = "invokeSuspend", n = {"$this$iterator", "stack", "entriesReader", "startNode", "this_$iv", "$this$yieldIfNeeded$iv", "path$iv", "$i$f$yieldIfNeeded", "$this$iterator", "stack", "entriesReader", "startNode", "this_$iv", "$this$yieldIfNeeded$iv", "path$iv", "$i$f$yieldIfNeeded", "$this$iterator", "stack", "entriesReader", "startNode", "topNode", "topIterator", "pathNode", "this_$iv", "$this$yieldIfNeeded$iv", "path$iv", "$i$f$yieldIfNeeded", "$this$iterator", "stack", "entriesReader", "startNode", "topNode", "topIterator", "pathNode", "this_$iv", "$this$yieldIfNeeded$iv", "path$iv", "$i$f$yieldIfNeeded"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "I$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "I$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "L$9", "I$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "L$9", "I$0"})
@SourceDebugExtension({"SMAP\nPathTreeWalk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$dfsIterator$1\n+ 2 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk\n*L\n1#1,180:1\n44#2,19:181\n44#2,19:200\n*S KotlinDebug\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$dfsIterator$1\n*L\n70#1:181,19\n81#1:200,19\n*E\n"})
public final class PathTreeWalk$dfsIterator$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Path>, Continuation<? super Unit>, Object> {
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    Object L$7;
    Object L$8;
    Object L$9;
    int label;
    final /* synthetic */ PathTreeWalk this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PathTreeWalk$dfsIterator$1(PathTreeWalk pathTreeWalk, Continuation<? super PathTreeWalk$dfsIterator$1> continuation) {
        super(2, continuation);
        this.this$0 = pathTreeWalk;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        PathTreeWalk$dfsIterator$1 pathTreeWalk$dfsIterator$1 = new PathTreeWalk$dfsIterator$1(this.this$0, continuation);
        pathTreeWalk$dfsIterator$1.L$0 = obj;
        return pathTreeWalk$dfsIterator$1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(SequenceScope<? super Path> sequenceScope, Continuation<? super Unit> continuation) {
        return ((PathTreeWalk$dfsIterator$1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:42:0x019f  */
    /* JADX WARN: Code duplicated, block: B:46:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:64:0x025e  */
    /* JADX WARN: Code duplicated, block: B:66:0x0270  */
    /* JADX WARN: Code duplicated, block: B:72:0x024f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x02ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x01b2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x0199 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x024f -> B:40:0x0199). Please report as a decompilation issue!!! */
    /*  JADX ERROR: StackOverflowError in pass: RegionMakerVisitor
        java.lang.StackOverflowError
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:731)
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:749)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r17) {
        /*
            r16 = this;
            r0 = r16
            java.lang.Object r1 = r0.L$0
            kotlin.sequences.SequenceScope r1 = (kotlin.sequences.SequenceScope) r1
            java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r3 = r0.label
            r4 = 4
            r5 = 3
            r6 = 2
            r7 = 0
            r8 = 1
            if (r3 == 0) goto L9e
            if (r3 == r8) goto L81
            if (r3 == r6) goto L64
            if (r3 == r5) goto L3b
            if (r3 != r4) goto L34
            java.lang.Object r3 = r0.L$9
            java.nio.file.Path r3 = (java.nio.file.Path) r3
            java.lang.Object r3 = r0.L$8
            kotlin.sequences.SequenceScope r3 = (kotlin.sequences.SequenceScope) r3
            java.lang.Object r3 = r0.L$7
            kotlin.io.path.PathTreeWalk r3 = (kotlin.io.path.PathTreeWalk) r3
            java.lang.Object r3 = r0.L$6
            kotlin.io.path.PathNode r3 = (kotlin.io.path.PathNode) r3
            java.lang.Object r3 = r0.L$5
            java.util.Iterator r3 = (java.util.Iterator) r3
            java.lang.Object r3 = r0.L$4
            kotlin.io.path.PathNode r3 = (kotlin.io.path.PathNode) r3
            goto L70
        L34:
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            j1.i.l(r1)
            r1 = 0
            return r1
        L3b:
            java.lang.Object r3 = r0.L$9
            java.nio.file.Path r3 = (java.nio.file.Path) r3
            java.lang.Object r6 = r0.L$8
            kotlin.sequences.SequenceScope r6 = (kotlin.sequences.SequenceScope) r6
            java.lang.Object r6 = r0.L$7
            kotlin.io.path.PathTreeWalk r6 = (kotlin.io.path.PathTreeWalk) r6
            java.lang.Object r9 = r0.L$6
            kotlin.io.path.PathNode r9 = (kotlin.io.path.PathNode) r9
            java.lang.Object r10 = r0.L$5
            java.util.Iterator r10 = (java.util.Iterator) r10
            java.lang.Object r10 = r0.L$4
            kotlin.io.path.PathNode r10 = (kotlin.io.path.PathNode) r10
            java.lang.Object r10 = r0.L$3
            kotlin.io.path.PathNode r10 = (kotlin.io.path.PathNode) r10
            java.lang.Object r11 = r0.L$2
            kotlin.io.path.DirectoryEntriesReader r11 = (kotlin.io.path.DirectoryEntriesReader) r11
            java.lang.Object r12 = r0.L$1
            kotlin.collections.ArrayDeque r12 = (kotlin.collections.ArrayDeque) r12
            kotlin.ResultKt.throwOnFailure(r17)
            goto L222
        L64:
            java.lang.Object r3 = r0.L$6
            java.nio.file.Path r3 = (java.nio.file.Path) r3
            java.lang.Object r3 = r0.L$5
            kotlin.sequences.SequenceScope r3 = (kotlin.sequences.SequenceScope) r3
            java.lang.Object r3 = r0.L$4
            kotlin.io.path.PathTreeWalk r3 = (kotlin.io.path.PathTreeWalk) r3
        L70:
            java.lang.Object r3 = r0.L$3
            kotlin.io.path.PathNode r3 = (kotlin.io.path.PathNode) r3
            java.lang.Object r6 = r0.L$2
            kotlin.io.path.DirectoryEntriesReader r6 = (kotlin.io.path.DirectoryEntriesReader) r6
            java.lang.Object r9 = r0.L$1
            kotlin.collections.ArrayDeque r9 = (kotlin.collections.ArrayDeque) r9
            kotlin.ResultKt.throwOnFailure(r17)
            goto L199
        L81:
            java.lang.Object r3 = r0.L$6
            java.nio.file.Path r3 = (java.nio.file.Path) r3
            java.lang.Object r6 = r0.L$5
            kotlin.sequences.SequenceScope r6 = (kotlin.sequences.SequenceScope) r6
            java.lang.Object r6 = r0.L$4
            kotlin.io.path.PathTreeWalk r6 = (kotlin.io.path.PathTreeWalk) r6
            java.lang.Object r9 = r0.L$3
            kotlin.io.path.PathNode r9 = (kotlin.io.path.PathNode) r9
            java.lang.Object r10 = r0.L$2
            kotlin.io.path.DirectoryEntriesReader r10 = (kotlin.io.path.DirectoryEntriesReader) r10
            java.lang.Object r11 = r0.L$1
            kotlin.collections.ArrayDeque r11 = (kotlin.collections.ArrayDeque) r11
            kotlin.ResultKt.throwOnFailure(r17)
            goto L123
        L9e:
            kotlin.ResultKt.throwOnFailure(r17)
            kotlin.collections.ArrayDeque r9 = new kotlin.collections.ArrayDeque
            r9.<init>()
            kotlin.io.path.DirectoryEntriesReader r3 = new kotlin.io.path.DirectoryEntriesReader
            kotlin.io.path.PathTreeWalk r10 = r0.this$0
            boolean r10 = kotlin.io.path.PathTreeWalk.access$getFollowLinks(r10)
            r3.<init>(r10)
            kotlin.io.path.PathNode r10 = new kotlin.io.path.PathNode
            kotlin.io.path.PathTreeWalk r11 = r0.this$0
            java.nio.file.Path r11 = kotlin.io.path.PathTreeWalk.access$getStart$p(r11)
            kotlin.io.path.PathTreeWalk r12 = r0.this$0
            java.nio.file.Path r12 = kotlin.io.path.PathTreeWalk.access$getStart$p(r12)
            kotlin.io.path.PathTreeWalk r13 = r0.this$0
            java.nio.file.LinkOption[] r13 = kotlin.io.path.PathTreeWalk.access$getLinkOptions(r13)
            java.lang.Object r12 = kotlin.io.path.PathTreeWalkKt.access$keyOf(r12, r13)
            r13 = 0
            r10.<init>(r11, r12, r13)
            kotlin.io.path.PathTreeWalk r11 = r0.this$0
            java.nio.file.Path r12 = r10.getPath()
            kotlin.io.path.PathNode r13 = r10.getParent()
            if (r13 == 0) goto Ldc
            kotlin.io.path.PathsKt__PathRecursiveFunctionsKt.checkFileName(r12)
        Ldc:
            java.nio.file.LinkOption[] r13 = kotlin.io.path.PathTreeWalk.access$getLinkOptions(r11)
            int r14 = r13.length
            java.lang.Object[] r13 = java.util.Arrays.copyOf(r13, r14)
            java.nio.file.LinkOption[] r13 = (java.nio.file.LinkOption[]) r13
            int r14 = r13.length
            java.lang.Object[] r13 = java.util.Arrays.copyOf(r13, r14)
            java.nio.file.LinkOption[] r13 = (java.nio.file.LinkOption[]) r13
            boolean r13 = java.nio.file.Files.isDirectory(r12, r13)
            if (r13 == 0) goto L15d
            boolean r6 = kotlin.io.path.PathTreeWalkKt.access$createsCycle(r10)
            if (r6 != 0) goto L151
            boolean r6 = kotlin.io.path.PathTreeWalk.access$getIncludeDirectories(r11)
            if (r6 == 0) goto L128
            r0.L$0 = r1
            r0.L$1 = r9
            r0.L$2 = r3
            r0.L$3 = r10
            r0.L$4 = r11
            java.lang.Object r6 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r1)
            r0.L$5 = r6
            r0.L$6 = r12
            r0.I$0 = r7
            r0.label = r8
            java.lang.Object r6 = r1.yield(r12, r0)
            if (r6 != r2) goto L11e
            goto L2ab
        L11e:
            r6 = r11
            r11 = r9
            r9 = r10
            r10 = r3
            r3 = r12
        L123:
            r12 = r3
            r3 = r10
            r10 = r9
            r9 = r11
            r11 = r6
        L128:
            java.nio.file.LinkOption[] r6 = kotlin.io.path.PathTreeWalk.access$getLinkOptions(r11)
            int r11 = r6.length
            java.lang.Object[] r6 = java.util.Arrays.copyOf(r6, r11)
            java.nio.file.LinkOption[] r6 = (java.nio.file.LinkOption[]) r6
            int r11 = r6.length
            java.lang.Object[] r6 = java.util.Arrays.copyOf(r6, r11)
            java.nio.file.LinkOption[] r6 = (java.nio.file.LinkOption[]) r6
            boolean r6 = java.nio.file.Files.isDirectory(r12, r6)
            if (r6 == 0) goto L14e
            java.util.List r6 = r3.readEntries(r10)
            java.util.Iterator r6 = r6.iterator()
            r10.setContentIterator(r6)
            r9.addLast(r10)
        L14e:
            r6 = r3
            r3 = r10
            goto L199
        L151:
            java.nio.file.FileSystemLoopException r1 = new java.nio.file.FileSystemLoopException
            java.lang.String r1 = r12.toString()
            java.nio.file.FileSystemLoopException r2 = new java.nio.file.FileSystemLoopException
            r2.<init>(r1)
            throw r2
        L15d:
            java.nio.file.LinkOption[] r13 = new java.nio.file.LinkOption[r8]
            java.nio.file.LinkOption r14 = java.nio.file.LinkOption.NOFOLLOW_LINKS
            r13[r7] = r14
            java.lang.Object[] r13 = java.util.Arrays.copyOf(r13, r8)
            java.nio.file.LinkOption[] r13 = (java.nio.file.LinkOption[]) r13
            boolean r13 = java.nio.file.Files.exists(r12, r13)
            if (r13 == 0) goto L14e
            r0.L$0 = r1
            r0.L$1 = r9
            r0.L$2 = r3
            java.lang.Object r13 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r10)
            r0.L$3 = r13
            java.lang.Object r11 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r11)
            r0.L$4 = r11
            java.lang.Object r11 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r1)
            r0.L$5 = r11
            java.lang.Object r11 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r12)
            r0.L$6 = r11
            r0.I$0 = r7
            r0.label = r6
            java.lang.Object r6 = r1.yield(r12, r0)
            if (r6 != r2) goto L14e
            goto L2ab
        L199:
            boolean r10 = r9.isEmpty()
            if (r10 != 0) goto L2b1
            java.lang.Object r10 = r9.last()
            kotlin.io.path.PathNode r10 = (kotlin.io.path.PathNode) r10
            java.util.Iterator r11 = r10.getContentIterator()
            r11.getClass()
            boolean r12 = r11.hasNext()
            if (r12 == 0) goto L2ac
            java.lang.Object r12 = r11.next()
            kotlin.io.path.PathNode r12 = (kotlin.io.path.PathNode) r12
            kotlin.io.path.PathTreeWalk r13 = r0.this$0
            java.nio.file.Path r14 = r12.getPath()
            kotlin.io.path.PathNode r15 = r12.getParent()
            if (r15 == 0) goto L1c7
            kotlin.io.path.PathsKt__PathRecursiveFunctionsKt.checkFileName(r14)
        L1c7:
            java.nio.file.LinkOption[] r15 = kotlin.io.path.PathTreeWalk.access$getLinkOptions(r13)
            int r4 = r15.length
            java.lang.Object[] r4 = java.util.Arrays.copyOf(r15, r4)
            java.nio.file.LinkOption[] r4 = (java.nio.file.LinkOption[]) r4
            int r15 = r4.length
            java.lang.Object[] r4 = java.util.Arrays.copyOf(r4, r15)
            java.nio.file.LinkOption[] r4 = (java.nio.file.LinkOption[]) r4
            boolean r4 = java.nio.file.Files.isDirectory(r14, r4)
            if (r4 == 0) goto L25e
            boolean r4 = kotlin.io.path.PathTreeWalkKt.access$createsCycle(r12)
            if (r4 != 0) goto L252
            boolean r4 = kotlin.io.path.PathTreeWalk.access$getIncludeDirectories(r13)
            if (r4 == 0) goto L229
            r0.L$0 = r1
            r0.L$1 = r9
            r0.L$2 = r6
            java.lang.Object r4 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r3)
            r0.L$3 = r4
            java.lang.Object r4 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r10)
            r0.L$4 = r4
            java.lang.Object r4 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r11)
            r0.L$5 = r4
            r0.L$6 = r12
            r0.L$7 = r13
            java.lang.Object r4 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r1)
            r0.L$8 = r4
            r0.L$9 = r14
            r0.I$0 = r7
            r0.label = r5
            java.lang.Object r4 = r1.yield(r14, r0)
            if (r4 != r2) goto L21b
            goto L2ab
        L21b:
            r10 = r12
            r12 = r9
            r9 = r10
            r10 = r3
            r11 = r6
            r6 = r13
            r3 = r14
        L222:
            r13 = r12
            r12 = r9
            r9 = r13
            r14 = r3
            r13 = r6
            r3 = r10
            r6 = r11
        L229:
            java.nio.file.LinkOption[] r4 = kotlin.io.path.PathTreeWalk.access$getLinkOptions(r13)
            int r10 = r4.length
            java.lang.Object[] r4 = java.util.Arrays.copyOf(r4, r10)
            java.nio.file.LinkOption[] r4 = (java.nio.file.LinkOption[]) r4
            int r10 = r4.length
            java.lang.Object[] r4 = java.util.Arrays.copyOf(r4, r10)
            java.nio.file.LinkOption[] r4 = (java.nio.file.LinkOption[]) r4
            boolean r4 = java.nio.file.Files.isDirectory(r14, r4)
            if (r4 == 0) goto L24f
            java.util.List r4 = r6.readEntries(r12)
            java.util.Iterator r4 = r4.iterator()
            r12.setContentIterator(r4)
            r9.addLast(r12)
        L24f:
            r4 = 4
            goto L199
        L252:
            java.nio.file.FileSystemLoopException r1 = new java.nio.file.FileSystemLoopException
            java.lang.String r1 = r14.toString()
            java.nio.file.FileSystemLoopException r2 = new java.nio.file.FileSystemLoopException
            r2.<init>(r1)
            throw r2
        L25e:
            java.nio.file.LinkOption[] r4 = new java.nio.file.LinkOption[r8]
            java.nio.file.LinkOption r15 = java.nio.file.LinkOption.NOFOLLOW_LINKS
            r4[r7] = r15
            java.lang.Object[] r4 = java.util.Arrays.copyOf(r4, r8)
            java.nio.file.LinkOption[] r4 = (java.nio.file.LinkOption[]) r4
            boolean r4 = java.nio.file.Files.exists(r14, r4)
            if (r4 == 0) goto L24f
            r0.L$0 = r1
            r0.L$1 = r9
            r0.L$2 = r6
            java.lang.Object r4 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r3)
            r0.L$3 = r4
            java.lang.Object r4 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r10)
            r0.L$4 = r4
            java.lang.Object r4 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r11)
            r0.L$5 = r4
            java.lang.Object r4 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r12)
            r0.L$6 = r4
            java.lang.Object r4 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r13)
            r0.L$7 = r4
            java.lang.Object r4 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r1)
            r0.L$8 = r4
            java.lang.Object r4 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r14)
            r0.L$9 = r4
            r0.I$0 = r7
            r4 = 4
            r0.label = r4
            java.lang.Object r10 = r1.yield(r14, r0)
            if (r10 != r2) goto L199
        L2ab:
            return r2
        L2ac:
            r9.removeLast()
            goto L199
        L2b1:
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.path.PathTreeWalk$dfsIterator$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(SequenceScope<? super Path> sequenceScope, Continuation<? super Unit> continuation) {
        return invoke2(sequenceScope, continuation);
    }
}
