.class Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;
.super Ljava/lang/Object;
.source "CompositeByteArray.java"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/util/byteaccess/CompositeByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CursorImpl"
.end annotation


# instance fields
.field private componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

.field private componentIndex:I

.field private componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

.field private index:I

.field private final listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

.field final synthetic this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;


# direct methods
.method public constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)V
    .locals 2

    .line 584
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;ILorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V

    .line 585
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;I)V
    .locals 1
    .param p2, "index"    # I

    .line 588
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;ILorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V

    .line 589
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;ILorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V
    .locals 0
    .param p2, "index"    # I
    .param p3, "listener"    # Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    .line 595
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    iput p2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 597
    iput-object p3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    .line 598
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V
    .locals 1
    .param p2, "listener"    # Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    .line 592
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;ILorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V

    .line 593
    return-void
.end method

.method private checkBounds(II)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "accessSize"    # I

    .line 1078
    move v0, p1

    .line 1079
    .local v0, "lower":I
    add-int v1, p1, p2

    .line 1081
    .local v1, "upper":I
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v2

    const-string v3, "."

    const-string v4, "Index "

    if-lt v0, v2, :cond_1

    .line 1085
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 1088
    return-void

    .line 1086
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " greater than length "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v4}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1082
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " less than start "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v4}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private prepareForAccess(I)V
    .locals 5
    .param p1, "accessSize"    # I

    .line 656
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 658
    iput-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    .line 662
    :cond_0
    iget v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->checkBounds(II)V

    .line 666
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 669
    .local v0, "oldComponentNode":Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    if-nez v1, :cond_2

    .line 670
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    move-result v1

    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v2

    add-int/2addr v1, v2

    .line 672
    .local v1, "basMidpoint":I
    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    if-gt v2, v1, :cond_1

    .line 674
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$100(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Lorg/apache/mina/util/byteaccess/ByteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 675
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v2

    iput v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    .line 677
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    if-eqz v3, :cond_2

    .line 678
    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v4}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;->enteredFirstComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V

    goto :goto_0

    .line 682
    :cond_1
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$100(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Lorg/apache/mina/util/byteaccess/ByteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 683
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    move-result v2

    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v3}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    .line 685
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    if-eqz v3, :cond_2

    .line 686
    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v4}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;->enteredLastComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 692
    .end local v1    # "basMidpoint":I
    :cond_2
    :goto_0
    iget v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    if-ge v1, v2, :cond_3

    .line 693
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getPreviousNode()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 694
    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    .line 696
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    if-eqz v1, :cond_2

    .line 697
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v3}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;->enteredPreviousComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V

    goto :goto_0

    .line 702
    :cond_3
    :goto_1
    iget v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v3}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/mina/util/byteaccess/ByteArray;->length()I

    move-result v3

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_4

    .line 703
    iget v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v2}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    .line 704
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getNextNode()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 706
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    if-eqz v2, :cond_3

    .line 707
    iget v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;->enteredNextComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V

    goto :goto_1

    .line 712
    :cond_4
    iget v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    sub-int/2addr v1, v2

    .line 714
    .local v1, "internalComponentIndex":I
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    if-ne v2, v0, :cond_5

    .line 716
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v2, v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->setIndex(I)V

    goto :goto_2

    .line 719
    :cond_5
    invoke-virtual {v2}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    .line 721
    :goto_2
    return-void
.end method


# virtual methods
.method public get()B
    .locals 3

    .line 744
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 745
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->get()B

    move-result v1

    .line 746
    .local v1, "b":B
    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 748
    return v1
.end method

.method public get(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 4
    .param p1, "bb"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .line 766
    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    .line 768
    .local v0, "remainingBefore":I
    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 769
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->get(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 770
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    .line 773
    .local v1, "remainingAfter":I
    sub-int v2, v0, v1

    .line 774
    .local v2, "chunkSize":I
    iget v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 775
    .end local v0    # "remainingBefore":I
    .end local v1    # "remainingAfter":I
    .end local v2    # "chunkSize":I
    goto :goto_0

    .line 776
    :cond_0
    return-void
.end method

.method public getChar()C
    .locals 4

    .line 1030
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 1032
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 1033
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getChar()C

    move-result v1

    .line 1034
    .local v1, "c":C
    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 1036
    return v1

    .line 1038
    .end local v1    # "c":C
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v0

    .line 1039
    .local v0, "b0":B
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v1

    .line 1041
    .local v1, "b1":B
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$200(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1042
    shl-int/lit8 v2, v0, 0x8

    and-int/lit16 v3, v1, 0xff

    or-int/2addr v2, v3

    int-to-char v2, v2

    return v2

    .line 1044
    :cond_1
    shl-int/lit8 v2, v1, 0x8

    and-int/lit16 v3, v0, 0xff

    or-int/2addr v2, v3

    int-to-char v2, v2

    return v2
.end method

.method public getDouble()D
    .locals 4

    .line 995
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 997
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 998
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getDouble()D

    move-result-wide v1

    .line 999
    .local v1, "d":D
    iget v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 1001
    return-wide v1

    .line 1003
    .end local v1    # "d":D
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->getLong()J

    move-result-wide v0

    .line 1005
    .local v0, "l":J
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method

.method public getFloat()F
    .locals 3

    .line 961
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 963
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 964
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getFloat()F

    move-result v1

    .line 965
    .local v1, "f":F
    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 966
    return v1

    .line 968
    .end local v1    # "f":F
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->getInt()I

    move-result v0

    .line 970
    .local v0, "i":I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method

.method public getIndex()I
    .locals 1

    .line 605
    iget v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    return v0
.end method

.method public getInt()I
    .locals 6

    .line 845
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 847
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 848
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getInt()I

    move-result v1

    .line 849
    .local v1, "i":I
    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 851
    return v1

    .line 853
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v0

    .line 854
    .local v0, "b0":B
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v1

    .line 855
    .local v1, "b1":B
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v2

    .line 856
    .local v2, "b2":B
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v3

    .line 858
    .local v3, "b3":B
    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v4}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$200(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 859
    shl-int/lit8 v4, v0, 0x18

    and-int/lit16 v5, v1, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    and-int/lit16 v5, v3, 0xff

    or-int/2addr v4, v5

    return v4

    .line 861
    :cond_1
    shl-int/lit8 v4, v3, 0x18

    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    and-int/lit16 v5, v1, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    and-int/lit16 v5, v0, 0xff

    or-int/2addr v4, v5

    return v4
.end method

.method public getLong()J
    .locals 20

    .line 896
    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 898
    iget-object v2, v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 899
    iget-object v2, v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getLong()J

    move-result-wide v2

    .line 900
    .local v2, "l":J
    iget v4, v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v4, v1

    iput v4, v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 902
    return-wide v2

    .line 904
    .end local v2    # "l":J
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v2

    .line 905
    .local v2, "b0":B
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v3

    .line 906
    .local v3, "b1":B
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v4

    .line 907
    .local v4, "b2":B
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v5

    .line 908
    .local v5, "b3":B
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v6

    .line 909
    .local v6, "b4":B
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v7

    .line 910
    .local v7, "b5":B
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v8

    .line 911
    .local v8, "b6":B
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v9

    .line 913
    .local v9, "b7":B
    iget-object v10, v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v10}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$200(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v10

    sget-object v11, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/16 v13, 0x20

    const/16 v14, 0x28

    const/16 v15, 0x30

    const/16 v16, 0x38

    const-wide/16 v17, 0xff

    if-eqz v10, :cond_1

    .line 914
    int-to-long v11, v2

    and-long v11, v11, v17

    shl-long v11, v11, v16

    move/from16 v19, v2

    .end local v2    # "b0":B
    .local v19, "b0":B
    int-to-long v1, v3

    and-long v1, v1, v17

    shl-long/2addr v1, v15

    or-long/2addr v1, v11

    int-to-long v11, v4

    and-long v11, v11, v17

    shl-long/2addr v11, v14

    or-long/2addr v1, v11

    int-to-long v11, v5

    and-long v11, v11, v17

    shl-long/2addr v11, v13

    or-long/2addr v1, v11

    int-to-long v11, v6

    and-long v11, v11, v17

    const/16 v13, 0x18

    shl-long/2addr v11, v13

    or-long/2addr v1, v11

    int-to-long v11, v7

    and-long v11, v11, v17

    const/16 v10, 0x10

    shl-long v10, v11, v10

    or-long/2addr v1, v10

    int-to-long v10, v8

    and-long v10, v10, v17

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    or-long/2addr v1, v10

    int-to-long v10, v9

    and-long v10, v10, v17

    or-long/2addr v1, v10

    return-wide v1

    .line 917
    .end local v19    # "b0":B
    .restart local v2    # "b0":B
    :cond_1
    move/from16 v19, v2

    .end local v2    # "b0":B
    .restart local v19    # "b0":B
    int-to-long v1, v9

    and-long v1, v1, v17

    shl-long v1, v1, v16

    int-to-long v11, v8

    and-long v11, v11, v17

    shl-long/2addr v11, v15

    or-long/2addr v1, v11

    int-to-long v11, v7

    and-long v11, v11, v17

    shl-long/2addr v11, v14

    or-long/2addr v1, v11

    int-to-long v11, v6

    and-long v11, v11, v17

    shl-long/2addr v11, v13

    or-long/2addr v1, v11

    int-to-long v11, v5

    and-long v11, v11, v17

    const/16 v13, 0x18

    shl-long/2addr v11, v13

    or-long/2addr v1, v11

    int-to-long v11, v4

    and-long v11, v11, v17

    const/16 v10, 0x10

    shl-long v10, v11, v10

    or-long/2addr v1, v10

    int-to-long v10, v3

    and-long v10, v10, v17

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    or-long/2addr v1, v10

    move/from16 v10, v19

    .end local v19    # "b0":B
    .local v10, "b0":B
    int-to-long v11, v10

    and-long v11, v11, v17

    or-long/2addr v1, v11

    return-wide v1
.end method

.method public getRemaining()I
    .locals 2

    .line 728
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    move-result v0

    iget v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getShort()S
    .locals 4

    .line 800
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 802
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 803
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getShort()S

    move-result v1

    .line 804
    .local v1, "s":S
    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 806
    return v1

    .line 808
    .end local v1    # "s":S
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v0

    .line 809
    .local v0, "b0":B
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v1

    .line 811
    .local v1, "b1":B
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$200(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 812
    shl-int/lit8 v2, v0, 0x8

    and-int/lit16 v3, v1, 0xff

    or-int/2addr v2, v3

    int-to-short v2, v2

    return v2

    .line 814
    :cond_1
    shl-int/lit8 v2, v1, 0x8

    and-int/lit16 v3, v0, 0xff

    or-int/2addr v2, v3

    int-to-short v2, v2

    return v2
.end method

.method public hasRemaining()Z
    .locals 1

    .line 736
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->getRemaining()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 650
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public put(B)V
    .locals 2
    .param p1, "b"    # B

    .line 756
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 757
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->put(B)V

    .line 758
    iget v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 759
    return-void
.end method

.method public put(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 4
    .param p1, "bb"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .line 783
    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    .line 785
    .local v0, "remainingBefore":I
    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 786
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->put(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 787
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    .line 790
    .local v1, "remainingAfter":I
    sub-int v2, v0, v1

    .line 791
    .local v2, "chunkSize":I
    iget v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 792
    .end local v0    # "remainingBefore":I
    .end local v1    # "remainingAfter":I
    .end local v2    # "chunkSize":I
    goto :goto_0

    .line 793
    :cond_0
    return-void
.end method

.method public putChar(C)V
    .locals 3
    .param p1, "c"    # C

    .line 1054
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 1057
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 1058
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putChar(C)V

    .line 1059
    iget v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    goto :goto_1

    .line 1064
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$200(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1065
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 1066
    .local v0, "b0":B
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    .local v1, "b1":B
    goto :goto_0

    .line 1068
    .end local v0    # "b0":B
    .end local v1    # "b1":B
    :cond_1
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    .line 1069
    .restart local v0    # "b0":B
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 1072
    .restart local v1    # "b1":B
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 1073
    invoke-virtual {p0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 1075
    .end local v0    # "b0":B
    .end local v1    # "b1":B
    :goto_1
    return-void
.end method

.method public putDouble(D)V
    .locals 3
    .param p1, "d"    # D

    .line 1014
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 1016
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 1017
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1, p1, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putDouble(D)V

    .line 1018
    iget v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    goto :goto_0

    .line 1020
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 1021
    .local v0, "l":J
    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->putLong(J)V

    .line 1023
    .end local v0    # "l":J
    :goto_0
    return-void
.end method

.method public putFloat(F)V
    .locals 2
    .param p1, "f"    # F

    .line 979
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 981
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 982
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putFloat(F)V

    .line 983
    iget v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    goto :goto_0

    .line 985
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 986
    .local v0, "i":I
    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->putInt(I)V

    .line 988
    .end local v0    # "i":I
    :goto_0
    return-void
.end method

.method public putInt(I)V
    .locals 2
    .param p1, "i"    # I

    .line 871
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 873
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 874
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putInt(I)V

    .line 875
    iget v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    goto :goto_0

    .line 877
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$200(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 878
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 879
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 880
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 881
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    goto :goto_0

    .line 883
    :cond_1
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 884
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 885
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 886
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 889
    :goto_0
    return-void
.end method

.method public putLong(J)V
    .locals 12
    .param p1, "l"    # J

    .line 928
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 930
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 931
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1, p1, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putLong(J)V

    .line 932
    iget v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    goto/16 :goto_0

    .line 934
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$200(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x38

    const/16 v3, 0x30

    const/16 v4, 0x28

    const/16 v5, 0x20

    const/16 v6, 0x18

    const/16 v7, 0x10

    const-wide/16 v8, 0xff

    if-eqz v1, :cond_1

    .line 935
    shr-long v1, p1, v2

    and-long/2addr v1, v8

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 936
    shr-long v1, p1, v3

    and-long/2addr v1, v8

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 937
    shr-long v1, p1, v4

    and-long/2addr v1, v8

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 938
    shr-long v1, p1, v5

    and-long/2addr v1, v8

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 939
    shr-long v1, p1, v6

    and-long/2addr v1, v8

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 940
    shr-long v1, p1, v7

    and-long/2addr v1, v8

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 941
    shr-long v0, p1, v0

    and-long/2addr v0, v8

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 942
    and-long v0, p1, v8

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    goto :goto_0

    .line 944
    :cond_1
    and-long v10, p1, v8

    long-to-int v1, v10

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 945
    shr-long v0, p1, v0

    and-long/2addr v0, v8

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 946
    shr-long v0, p1, v7

    and-long/2addr v0, v8

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 947
    shr-long v0, p1, v6

    and-long/2addr v0, v8

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 948
    shr-long v0, p1, v5

    and-long/2addr v0, v8

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 949
    shr-long v0, p1, v4

    and-long/2addr v0, v8

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 950
    shr-long v0, p1, v3

    and-long/2addr v0, v8

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 951
    shr-long v0, p1, v2

    and-long/2addr v0, v8

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 954
    :goto_0
    return-void
.end method

.method public putShort(S)V
    .locals 3
    .param p1, "s"    # S

    .line 824
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 826
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 827
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putShort(S)V

    .line 828
    iget v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    goto :goto_0

    .line 830
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$200(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 831
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 832
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    goto :goto_0

    .line 834
    :cond_1
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 835
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 838
    :goto_0
    return-void
.end method

.method public setIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .line 613
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->checkBounds(II)V

    .line 614
    iput p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 615
    return-void
.end method

.method public skip(I)V
    .locals 1
    .param p1, "length"    # I

    .line 622
    iget v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->setIndex(I)V

    .line 623
    return-void
.end method

.method public slice(I)Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 5
    .param p1, "length"    # I

    .line 630
    new-instance v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$000(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;-><init>(Lorg/apache/mina/util/byteaccess/ByteArrayFactory;)V

    .line 631
    .local v0, "slice":Lorg/apache/mina/util/byteaccess/CompositeByteArray;
    move v1, p1

    .line 633
    .local v1, "remaining":I
    :goto_0
    if-lez v1, :cond_0

    .line 634
    invoke-direct {p0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 635
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 636
    .local v2, "componentSliceSize":I
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v3, v2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->slice(I)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v3

    .line 637
    .local v3, "componentSlice":Lorg/apache/mina/util/byteaccess/ByteArray;
    invoke-virtual {v0, v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 638
    iget v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 639
    sub-int/2addr v1, v2

    .line 640
    .end local v2    # "componentSliceSize":I
    .end local v3    # "componentSlice":Lorg/apache/mina/util/byteaccess/ByteArray;
    goto :goto_0

    .line 642
    :cond_0
    return-object v0
.end method
