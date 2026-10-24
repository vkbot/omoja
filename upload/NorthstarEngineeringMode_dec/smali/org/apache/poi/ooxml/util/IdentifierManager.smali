.class public Lorg/apache/poi/ooxml/util/IdentifierManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;
    }
.end annotation


# static fields
.field public static final MAX_ID:J = 0x7ffffffffffffffeL

.field public static final MIN_ID:J


# instance fields
.field private final lowerbound:J

.field private segments:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;",
            ">;"
        }
    .end annotation
.end field

.field private final upperbound:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    cmp-long v0, p1, p3

    if-gtz v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x7ffffffffffffffeL

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    iput-wide p1, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->lowerbound:J

    iput-wide p3, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->upperbound:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    new-instance p0, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;-><init>(JJ)V

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "upperbound must be less than or equal to 9223372036854775806 but had "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lowerbound must be greater than or equal to 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lowerbound must not be greater than upperbound, had "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private verifyIdentifiersLeft()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No identifiers left for range ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->lowerbound:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->upperbound:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getRemainingIdentifiers()J
    .locals 5

    iget-object p0, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;

    invoke-static {v2}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$100(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v3

    sub-long/2addr v0, v3

    invoke-static {v2}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$000(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public release(J)Z
    .locals 11

    iget-wide v0, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->lowerbound:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_c

    iget-wide v0, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->upperbound:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_c

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    if-nez v0, :cond_2

    iget-object p1, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;

    invoke-static {p1}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$000(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v5

    iget-wide v7, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->upperbound:J

    sub-long v2, v7, v2

    cmp-long p2, v5, v2

    if-nez p2, :cond_0

    invoke-static {p1, v7, v8}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$002(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;J)J

    return v4

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$000(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide p1

    iget-wide v2, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->upperbound:J

    cmp-long p1, p1, v2

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    new-instance p1, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;

    invoke-direct {p1, v2, v3, v2, v3}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;-><init>(JJ)V

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return v4

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    new-instance v0, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;

    invoke-direct {v0, p1, p2, p1, p2}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;-><init>(JJ)V

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return v4

    :cond_3
    iget-wide v5, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->lowerbound:J

    cmp-long v0, p1, v5

    if-nez v0, :cond_6

    iget-object p1, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;

    invoke-static {p1}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$100(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v5

    iget-wide v7, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->lowerbound:J

    add-long/2addr v2, v7

    cmp-long p2, v5, v2

    if-nez p2, :cond_4

    invoke-static {p1, v7, v8}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$102(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;J)J

    return v4

    :cond_4
    invoke-static {p1}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$100(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide p1

    iget-wide v2, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->lowerbound:J

    cmp-long p1, p1, v2

    if-nez p1, :cond_5

    return v1

    :cond_5
    iget-object p0, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    new-instance p1, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;

    invoke-direct {p1, v2, v3, v2, v3}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;-><init>(JJ)V

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return v4

    :cond_6
    add-long v5, p1, v2

    sub-long v7, p1, v2

    iget-object p0, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$000(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v9

    cmp-long v9, v9, v7

    if-gez v9, :cond_7

    goto :goto_0

    :cond_7
    invoke-static {v0}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$100(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v9

    cmp-long v9, v9, v5

    if-lez v9, :cond_8

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    new-instance v0, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;

    invoke-direct {v0, p1, p2, p1, p2}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;-><init>(JJ)V

    invoke-interface {p0, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return v4

    :cond_8
    invoke-static {v0}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$100(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v9

    cmp-long v5, v9, v5

    if-nez v5, :cond_9

    invoke-static {v0, p1, p2}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$102(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;J)J

    return v4

    :cond_9
    invoke-static {v0}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$000(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-nez v5, :cond_b

    invoke-static {v0, p1, p2}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$002(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;J)J

    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;

    invoke-static {p1}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$100(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v5

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$000(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v7

    add-long/2addr v7, v2

    cmp-long p2, v5, v7

    if-nez p2, :cond_a

    invoke-static {p1}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$000(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide p1

    invoke-static {v0, p1, p2}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$002(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;J)J

    invoke-interface {p0}, Ljava/util/ListIterator;->remove()V

    :cond_a
    return v4

    :cond_b
    return v1

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Value for parameter \'id\' was out of bounds, had "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", but should be within ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->lowerbound:J

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->upperbound:J

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reserve(J)J
    .locals 8

    iget-wide v0, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->lowerbound:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_d

    iget-wide v0, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->upperbound:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_d

    invoke-direct {p0}, Lorg/apache/poi/ooxml/util/IdentifierManager;->verifyIdentifiersLeft()V

    iget-wide v0, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->upperbound:J

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$000(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->upperbound:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    sub-long/2addr v5, v1

    invoke-static {v0, v5, v6}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$002(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;J)J

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$100(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v1

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$000(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_0
    return-wide p1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/util/IdentifierManager;->reserveNew()J

    move-result-wide p0

    return-wide p0

    :cond_2
    iget-wide v3, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->lowerbound:J

    cmp-long v0, p1, v3

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$100(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->lowerbound:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    add-long/2addr v5, v1

    invoke-static {v0, v5, v6}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$102(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;J)J

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$000(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v1

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$100(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-gez v0, :cond_3

    iget-object p0, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_3
    return-wide p1

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/util/IdentifierManager;->reserveNew()J

    move-result-wide p0

    return-wide p0

    :cond_5
    iget-object v0, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;

    invoke-static {v3}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$000(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-gez v4, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {v3}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$100(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-lez v4, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {v3}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$100(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v4

    cmp-long p0, v4, p1

    if-nez p0, :cond_9

    add-long/2addr v1, p1

    invoke-static {v3, v1, v2}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$102(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;J)J

    invoke-static {v3}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$000(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v1

    invoke-static {v3}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$100(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-gez p0, :cond_8

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    :cond_8
    return-wide p1

    :cond_9
    invoke-static {v3}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$000(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v4

    cmp-long p0, v4, p1

    if-nez p0, :cond_b

    sub-long v1, p1, v1

    invoke-static {v3, v1, v2}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$002(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;J)J

    invoke-static {v3}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$100(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v1

    invoke-static {v3}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$000(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-lez p0, :cond_a

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    :cond_a
    return-wide p1

    :cond_b
    new-instance p0, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;

    add-long v4, p1, v1

    invoke-static {v3}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$000(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v6

    invoke-direct {p0, v4, v5, v6, v7}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;-><init>(JJ)V

    invoke-interface {v0, p0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    sub-long v0, p1, v1

    invoke-static {v3, v0, v1}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$002(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;J)J

    return-wide p1

    :cond_c
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/util/IdentifierManager;->reserveNew()J

    move-result-wide p0

    return-wide p0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Value for parameter \'id\' was out of bounds, had "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", but should be within ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->lowerbound:J

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->upperbound:J

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reserveNew()J
    .locals 7

    invoke-direct {p0}, Lorg/apache/poi/ooxml/util/IdentifierManager;->verifyIdentifiersLeft()V

    iget-object v0, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$100(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v1

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$100(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-static {v0, v3, v4}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$102(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;J)J

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$100(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v3

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->access$000(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/ooxml/util/IdentifierManager;->segments:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    return-wide v1
.end method
