.class public final synthetic Lorg/apache/commons/io/filefilter/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/nio/file/Path;

.field public final synthetic c:Ljava/nio/file/attribute/BasicFileAttributes;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/apache/commons/io/filefilter/a;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/filefilter/a;->b:Ljava/nio/file/Path;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/apache/commons/io/filefilter/a;->c:Ljava/nio/file/attribute/BasicFileAttributes;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/io/filefilter/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/a;->b:Ljava/nio/file/Path;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/commons/io/filefilter/a;->c:Ljava/nio/file/attribute/BasicFileAttributes;

    .line 9
    .line 10
    check-cast p1, Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 11
    .line 12
    invoke-static {v0, v1, p1}, Lorg/apache/commons/io/filefilter/OrFileFilter;->a(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;Lorg/apache/commons/io/filefilter/IOFileFilter;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/a;->b:Ljava/nio/file/Path;

    .line 18
    .line 19
    iget-object v1, p0, Lorg/apache/commons/io/filefilter/a;->c:Ljava/nio/file/attribute/BasicFileAttributes;

    .line 20
    .line 21
    check-cast p1, Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 22
    .line 23
    invoke-static {v0, v1, p1}, Lorg/apache/commons/io/filefilter/AndFileFilter;->b(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;Lorg/apache/commons/io/filefilter/IOFileFilter;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
