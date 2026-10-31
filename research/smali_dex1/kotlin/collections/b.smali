.class public final synthetic Lkotlin/collections/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lkotlin/collections/b;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lkotlin/collections/b;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    iget v0, p0, Lkotlin/collections/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_60

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkotlin/collections/b;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Iterable;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->b(Ljava/lang/Iterable;)Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :pswitch_e
    iget-object v0, p0, Lkotlin/collections/b;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, [B

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->f([B)Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :pswitch_17
    iget-object v0, p0, Lkotlin/collections/b;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, [J

    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->a([J)Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :pswitch_20
    iget-object v0, p0, Lkotlin/collections/b;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, [Z

    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->g([Z)Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0

    .line 42
    :pswitch_29
    iget-object v0, p0, Lkotlin/collections/b;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, [F

    .line 45
    .line 46
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->b([F)Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    :pswitch_32
    iget-object v0, p0, Lkotlin/collections/b;->c:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, [S

    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->i([S)Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0

    .line 60
    :pswitch_3b
    iget-object v0, p0, Lkotlin/collections/b;->c:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, [C

    .line 63
    .line 64
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->h([C)Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    return-object v0

    .line 69
    :pswitch_44
    iget-object v0, p0, Lkotlin/collections/b;->c:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, [D

    .line 72
    .line 73
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->e([D)Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    return-object v0

    .line 78
    :pswitch_4d
    iget-object v0, p0, Lkotlin/collections/b;->c:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, [I

    .line 81
    .line 82
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->c([I)Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0

    .line 87
    :pswitch_56
    iget-object v0, p0, Lkotlin/collections/b;->c:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, [Ljava/lang/Object;

    .line 90
    .line 91
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->d([Ljava/lang/Object;)Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    return-object v0

    .line 96
    nop

    .line 97
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_56
        :pswitch_4d
        :pswitch_44
        :pswitch_3b
        :pswitch_32
        :pswitch_29
        :pswitch_20
        :pswitch_17
        :pswitch_e
    .end packed-switch
.end method
