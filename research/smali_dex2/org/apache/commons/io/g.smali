.class public final synthetic Lorg/apache/commons/io/g;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOFunction;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lorg/apache/commons/io/filefilter/IOFileFilter;

.field public final synthetic d:Lorg/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;I)V
    .registers 4

    .line 1
    iput p3, p0, Lorg/apache/commons/io/g;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/g;->c:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/apache/commons/io/g;->d:Lorg/apache/commons/io/filefilter/IOFileFilter;

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
    iget v0, p0, Lorg/apache/commons/io/g;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1c

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/g;->d:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 7
    .line 8
    check-cast p1, Ljava/io/File;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/apache/commons/io/g;->c:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 11
    .line 12
    invoke-static {v1, v0, p1}, Lorg/apache/commons/io/FileUtils;->u(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/io/File;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :pswitch_10
    iget-object v0, p0, Lorg/apache/commons/io/g;->d:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 18
    .line 19
    check-cast p1, Ljava/io/File;

    .line 20
    .line 21
    iget-object v1, p0, Lorg/apache/commons/io/g;->c:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 22
    .line 23
    invoke-static {v1, v0, p1}, Lorg/apache/commons/io/FileUtils;->s(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;Ljava/io/File;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    nop

    .line 29
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method
