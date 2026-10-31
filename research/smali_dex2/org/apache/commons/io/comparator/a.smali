.class public final synthetic Lorg/apache/commons/io/comparator/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/io/Serializable;

.field public final synthetic d:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Ljava/io/Serializable;Ljava/io/Serializable;I)V
    .registers 4

    .line 1
    iput p3, p0, Lorg/apache/commons/io/comparator/a;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/comparator/a;->c:Ljava/io/Serializable;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/apache/commons/io/comparator/a;->d:Ljava/io/Serializable;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Lorg/apache/commons/io/comparator/a;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_24

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/comparator/a;->c:Ljava/io/Serializable;

    .line 7
    .line 8
    check-cast v0, Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/apache/commons/io/comparator/a;->d:Ljava/io/Serializable;

    .line 11
    .line 12
    check-cast v1, Lorg/apache/commons/io/monitor/FileEntry;

    .line 13
    .line 14
    check-cast p1, Ljava/io/File;

    .line 15
    .line 16
    invoke-static {v0, v1, p1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->e(Lorg/apache/commons/io/monitor/FileAlterationObserver;Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :pswitch_14
    iget-object v0, p0, Lorg/apache/commons/io/comparator/a;->c:Ljava/io/Serializable;

    .line 22
    .line 23
    check-cast v0, Ljava/io/File;

    .line 24
    .line 25
    iget-object v1, p0, Lorg/apache/commons/io/comparator/a;->d:Ljava/io/Serializable;

    .line 26
    .line 27
    check-cast v1, Ljava/io/File;

    .line 28
    .line 29
    check-cast p1, Ljava/util/Comparator;

    .line 30
    .line 31
    invoke-static {v0, v1, p1}, Lorg/apache/commons/io/comparator/CompositeFileComparator;->c(Ljava/io/File;Ljava/io/File;Ljava/util/Comparator;)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    nop

    .line 37
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_14
    .end packed-switch
.end method
