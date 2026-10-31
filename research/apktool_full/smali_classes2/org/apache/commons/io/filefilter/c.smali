.class public final synthetic Lorg/apache/commons/io/filefilter/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/apache/commons/io/filefilter/c;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/filefilter/c;->b:Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/io/filefilter/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/c;->b:Ljava/io/File;

    .line 7
    .line 8
    check-cast p1, Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0, p1}, Lorg/apache/commons/io/filefilter/WildcardFilter;->c(Ljava/io/File;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/c;->b:Ljava/io/File;

    .line 16
    .line 17
    check-cast p1, Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 18
    .line 19
    invoke-static {v0, p1}, Lorg/apache/commons/io/filefilter/OrFileFilter;->b(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/c;->b:Ljava/io/File;

    .line 25
    .line 26
    check-cast p1, Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 27
    .line 28
    invoke-static {v0, p1}, Lorg/apache/commons/io/filefilter/AndFileFilter;->c(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
