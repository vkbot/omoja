.class public final synthetic Lorg/apache/commons/io/k;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/commons/io/k;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/apache/commons/io/k;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/apache/commons/io/k;->d:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/io/k;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/k;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lorg/apache/commons/io/monitor/FileEntry;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/apache/commons/io/k;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/io/File;

    .line 13
    .line 14
    check-cast p1, Lorg/apache/commons/io/monitor/FileAlterationListener;

    .line 15
    .line 16
    invoke-static {v0, v1, p1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->d(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;Lorg/apache/commons/io/monitor/FileAlterationListener;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/io/k;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Ljava/util/List;

    .line 23
    .line 24
    iget-object v1, p0, Lorg/apache/commons/io/k;->d:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Ljava/io/FilenameFilter;

    .line 27
    .line 28
    check-cast p1, Ljava/io/File;

    .line 29
    .line 30
    invoke-static {v0, v1, p1}, Lorg/apache/commons/io/FileUtils;->n(Ljava/util/List;Ljava/io/FilenameFilter;Ljava/io/File;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
