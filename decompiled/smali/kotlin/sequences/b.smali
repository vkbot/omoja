.class public final synthetic Lkotlin/sequences/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/sequences/b;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lkotlin/sequences/b;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/sequences/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkotlin/sequences/b;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/util/List;

    .line 9
    .line 10
    invoke-static {v0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt$minus$4;->a(Ljava/util/List;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :pswitch_0
    iget-object v0, p0, Lkotlin/sequences/b;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/Collection;

    .line 22
    .line 23
    invoke-static {v0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt$minus$3;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :pswitch_1
    iget-object v0, p0, Lkotlin/sequences/b;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-static {v0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt$minus$2;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    :pswitch_2
    iget-object v0, p0, Lkotlin/sequences/b;->c:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 48
    .line 49
    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->h(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :pswitch_3
    iget-object v0, p0, Lkotlin/sequences/b;->c:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 57
    .line 58
    check-cast p1, Lkotlin/collections/IndexedValue;

    .line 59
    .line 60
    invoke-static {v0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->i(Lkotlin/jvm/functions/Function2;Lkotlin/collections/IndexedValue;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :pswitch_4
    iget-object v0, p0, Lkotlin/sequences/b;->c:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Lkotlin/sequences/Sequence;

    .line 72
    .line 73
    invoke-static {v0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->k(Lkotlin/sequences/Sequence;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1

    .line 78
    :pswitch_5
    iget-object v0, p0, Lkotlin/sequences/b;->c:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Ljava/lang/Class;

    .line 81
    .line 82
    invoke-static {v0, p1}, Lkotlin/sequences/SequencesKt___SequencesJvmKt;->f(Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    return-object p1

    .line 91
    :pswitch_6
    iget-object v0, p0, Lkotlin/sequences/b;->c:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 94
    .line 95
    invoke-static {v0, p1}, Lkotlin/sequences/SequencesKt__SequencesKt;->c(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    return-object p1

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
