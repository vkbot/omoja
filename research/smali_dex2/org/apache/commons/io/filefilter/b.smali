.class public final synthetic Lorg/apache/commons/io/filefilter/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lorg/apache/commons/io/filefilter/b;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/apache/commons/io/filefilter/b;->c:Ljava/lang/Object;

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
    .registers 3

    .line 1
    iget v0, p0, Lorg/apache/commons/io/filefilter/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_38

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/b;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;

    .line 9
    .line 10
    check-cast p1, Lx0/m;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;->N(Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;Lx0/m;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_f
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/b;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lorg/apache/commons/net/io/CopyStreamEvent;

    .line 19
    .line 20
    check-cast p1, Lorg/apache/commons/net/io/CopyStreamListener;

    .line 21
    .line 22
    invoke-static {v0, p1}, Lorg/apache/commons/net/io/CopyStreamAdapter;->a(Lorg/apache/commons/net/io/CopyStreamEvent;Lorg/apache/commons/net/io/CopyStreamListener;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_19
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/b;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;

    .line 29
    .line 30
    check-cast p1, Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->addObserver(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_23
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/b;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lorg/apache/commons/io/filefilter/OrFileFilter;

    .line 39
    .line 40
    check-cast p1, Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lorg/apache/commons/io/filefilter/OrFileFilter;->addFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_2d
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/b;->c:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Lorg/apache/commons/io/filefilter/AndFileFilter;

    .line 49
    .line 50
    check-cast p1, Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Lorg/apache/commons/io/filefilter/AndFileFilter;->addFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_23
        :pswitch_19
        :pswitch_f
    .end packed-switch
.end method
