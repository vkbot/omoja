.class public final synthetic Li7/k;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Li7/k;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget v0, p0, Li7/k;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_4a

    .line 4
    .line 5
    .line 6
    check-cast p1, Lx0/m;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/example/navistart/SuperWidgets/WidgetBuilderFragment;->M(Lx0/m;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :pswitch_c
    check-cast p1, Lx0/m;

    .line 14
    .line 15
    invoke-static {p1}, Lx0/c;->i(Lx0/m;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :pswitch_13
    check-cast p1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->a(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :pswitch_1a
    check-cast p1, Ljava/io/Writer;

    .line 28
    .line 29
    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    :pswitch_21
    check-cast p1, Lorg/apache/commons/io/file/DeleteOption;

    .line 35
    .line 36
    invoke-static {p1}, Lorg/apache/commons/io/file/StandardDeleteOption;->a(Lorg/apache/commons/io/file/DeleteOption;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :pswitch_28
    check-cast p1, Lorg/apache/commons/io/file/DeleteOption;

    .line 42
    .line 43
    invoke-static {p1}, Lorg/apache/commons/io/file/PathUtils;->f(Lorg/apache/commons/io/file/DeleteOption;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    return p1

    .line 48
    :pswitch_2f
    check-cast p1, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-static {p1}, Lorg/apache/commons/io/comparator/CompositeFileComparator;->a(Ljava/lang/Integer;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    return p1

    .line 55
    :pswitch_36
    check-cast p1, Ljava/lang/Enum;

    .line 56
    .line 57
    check-cast p1, Ln0/e;

    .line 58
    .line 59
    invoke-interface {p1}, Ln0/e;->a()Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    return p1

    .line 68
    :pswitch_43
    check-cast p1, Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    return p1

    .line 75
    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_43
        :pswitch_36
        :pswitch_2f
        :pswitch_28
        :pswitch_21
        :pswitch_1a
        :pswitch_13
        :pswitch_c
    .end packed-switch
.end method
