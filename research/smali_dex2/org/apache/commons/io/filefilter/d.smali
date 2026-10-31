.class public final synthetic Lorg/apache/commons/io/filefilter/d;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;ILjava/lang/String;)V
    .registers 4

    .line 1
    iput p2, p0, Lorg/apache/commons/io/filefilter/d;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/filefilter/d;->b:Ljava/io/File;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/apache/commons/io/filefilter/d;->c:Ljava/lang/String;

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
    .registers 4

    .line 1
    iget v0, p0, Lorg/apache/commons/io/filefilter/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1c

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/d;->c:Ljava/lang/String;

    .line 7
    .line 8
    check-cast p1, Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/apache/commons/io/filefilter/d;->b:Ljava/io/File;

    .line 11
    .line 12
    invoke-static {v1, v0, p1}, Lorg/apache/commons/io/filefilter/OrFileFilter;->c(Ljava/io/File;Ljava/lang/String;Lorg/apache/commons/io/filefilter/IOFileFilter;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :pswitch_10
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/d;->c:Ljava/lang/String;

    .line 18
    .line 19
    check-cast p1, Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 20
    .line 21
    iget-object v1, p0, Lorg/apache/commons/io/filefilter/d;->b:Ljava/io/File;

    .line 22
    .line 23
    invoke-static {v1, v0, p1}, Lorg/apache/commons/io/filefilter/AndFileFilter;->a(Ljava/io/File;Ljava/lang/String;Lorg/apache/commons/io/filefilter/IOFileFilter;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    nop

    .line 29
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method
