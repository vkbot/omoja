.class public final Li9/r;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Li9/r;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Li9/r;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Li9/r;->d:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Li9/r;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li9/r;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Li9/b0;

    .line 9
    .line 10
    iget-object v1, p0, Li9/r;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/lang/String;

    .line 13
    .line 14
    new-instance v2, Li9/a0;

    .line 15
    .line 16
    iget-object v0, v0, Li9/b0;->a:[Ljava/lang/Enum;

    .line 17
    .line 18
    array-length v3, v0

    .line 19
    invoke-direct {v2, v1, v3}, Li9/a0;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    array-length v1, v0

    .line 23
    const/4 v3, 0x0

    .line 24
    move v4, v3

    .line 25
    :goto_0
    if-ge v4, v1, :cond_2

    .line 26
    .line 27
    aget-object v5, v0, v4

    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget v6, v2, Li9/f1;->d:I

    .line 37
    .line 38
    add-int/lit8 v6, v6, 0x1

    .line 39
    .line 40
    iput v6, v2, Li9/f1;->d:I

    .line 41
    .line 42
    iget-object v7, v2, Li9/f1;->e:[Ljava/lang/String;

    .line 43
    .line 44
    aput-object v5, v7, v6

    .line 45
    .line 46
    iget-object v5, v2, Li9/f1;->g:[Z

    .line 47
    .line 48
    aput-boolean v3, v5, v6

    .line 49
    .line 50
    iget-object v5, v2, Li9/f1;->f:[Ljava/util/List;

    .line 51
    .line 52
    const/4 v8, 0x0

    .line 53
    aput-object v8, v5, v6

    .line 54
    .line 55
    iget v5, v2, Li9/f1;->c:I

    .line 56
    .line 57
    add-int/lit8 v5, v5, -0x1

    .line 58
    .line 59
    if-ne v6, v5, :cond_1

    .line 60
    .line 61
    new-instance v5, Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 64
    .line 65
    .line 66
    array-length v6, v7

    .line 67
    move v8, v3

    .line 68
    :goto_1
    if-ge v8, v6, :cond_0

    .line 69
    .line 70
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    aget-object v10, v7, v8

    .line 75
    .line 76
    invoke-virtual {v5, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    add-int/lit8 v8, v8, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_0
    iput-object v5, v2, Li9/f1;->h:Ljava/util/Map;

    .line 83
    .line 84
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    return-object v2

    .line 88
    :pswitch_0
    new-instance v0, Li9/k;

    .line 89
    .line 90
    iget-object v1, p0, Li9/r;->c:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v1, Landroid/support/v4/media/h;

    .line 93
    .line 94
    iget-object v1, v1, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 97
    .line 98
    iget-object v2, p0, Li9/r;->d:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v2, Lkotlin/reflect/KClass;

    .line 101
    .line 102
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Le9/b;

    .line 107
    .line 108
    invoke-direct {v0, v1}, Li9/k;-><init>(Le9/b;)V

    .line 109
    .line 110
    .line 111
    return-object v0

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
