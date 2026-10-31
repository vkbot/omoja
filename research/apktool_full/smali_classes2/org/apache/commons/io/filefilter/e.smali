.class public final synthetic Lorg/apache/commons/io/filefilter/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lorg/apache/commons/io/filefilter/AbstractFileFilter;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/filefilter/AbstractFileFilter;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/apache/commons/io/filefilter/e;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/filefilter/e;->c:Lorg/apache/commons/io/filefilter/AbstractFileFilter;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/apache/commons/io/filefilter/e;->b:Ljava/lang/String;

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
    iget v0, p0, Lorg/apache/commons/io/filefilter/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/e;->c:Lorg/apache/commons/io/filefilter/AbstractFileFilter;

    .line 7
    .line 8
    check-cast v0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/apache/commons/io/filefilter/e;->b:Ljava/lang/String;

    .line 11
    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->a(Lorg/apache/commons/io/filefilter/WildcardFileFilter;Ljava/lang/String;Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/e;->c:Lorg/apache/commons/io/filefilter/AbstractFileFilter;

    .line 20
    .line 21
    check-cast v0, Lorg/apache/commons/io/filefilter/SuffixFileFilter;

    .line 22
    .line 23
    iget-object v1, p0, Lorg/apache/commons/io/filefilter/e;->b:Ljava/lang/String;

    .line 24
    .line 25
    check-cast p1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0, v1, p1}, Lorg/apache/commons/io/filefilter/SuffixFileFilter;->a(Lorg/apache/commons/io/filefilter/SuffixFileFilter;Ljava/lang/String;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1

    .line 32
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/e;->c:Lorg/apache/commons/io/filefilter/AbstractFileFilter;

    .line 33
    .line 34
    check-cast v0, Lorg/apache/commons/io/filefilter/PrefixFileFilter;

    .line 35
    .line 36
    iget-object v1, p0, Lorg/apache/commons/io/filefilter/e;->b:Ljava/lang/String;

    .line 37
    .line 38
    check-cast p1, Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0, v1, p1}, Lorg/apache/commons/io/filefilter/PrefixFileFilter;->a(Lorg/apache/commons/io/filefilter/PrefixFileFilter;Ljava/lang/String;Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1

    .line 45
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/e;->c:Lorg/apache/commons/io/filefilter/AbstractFileFilter;

    .line 46
    .line 47
    check-cast v0, Lorg/apache/commons/io/filefilter/NameFileFilter;

    .line 48
    .line 49
    iget-object v1, p0, Lorg/apache/commons/io/filefilter/e;->b:Ljava/lang/String;

    .line 50
    .line 51
    check-cast p1, Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v0, v1, p1}, Lorg/apache/commons/io/filefilter/NameFileFilter;->a(Lorg/apache/commons/io/filefilter/NameFileFilter;Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
