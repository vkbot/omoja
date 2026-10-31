.class public final synthetic Lorg/apache/commons/io/monitor/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lorg/apache/commons/io/monitor/FileAlterationObserver;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/monitor/FileAlterationObserver;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/apache/commons/io/monitor/c;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/monitor/c;->c:Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/io/monitor/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/monitor/c;->c:Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 7
    .line 8
    check-cast p1, Lorg/apache/commons/io/monitor/FileAlterationListener;

    .line 9
    .line 10
    invoke-static {v0, p1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->c(Lorg/apache/commons/io/monitor/FileAlterationObserver;Lorg/apache/commons/io/monitor/FileAlterationListener;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/io/monitor/c;->c:Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 15
    .line 16
    check-cast p1, Lorg/apache/commons/io/monitor/FileAlterationListener;

    .line 17
    .line 18
    invoke-static {v0, p1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->b(Lorg/apache/commons/io/monitor/FileAlterationObserver;Lorg/apache/commons/io/monitor/FileAlterationListener;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/c;->c:Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 23
    .line 24
    check-cast p1, Lorg/apache/commons/io/monitor/FileEntry;

    .line 25
    .line 26
    invoke-static {v0, p1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->a(Lorg/apache/commons/io/monitor/FileAlterationObserver;Lorg/apache/commons/io/monitor/FileEntry;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
