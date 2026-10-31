.class public final Le9/d;
.super Lkotlin/jvm/internal/Lambda;
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
    iput p1, p0, Le9/d;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Le9/d;->c:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 6

    .line 1
    iget v0, p0, Le9/d;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Le9/d;->c:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_52

    .line 7
    .line 8
    .line 9
    sget-object v0, Lg9/j;->g:Lg9/j;

    .line 10
    .line 11
    new-array v1, v1, [Lg9/e;

    .line 12
    .line 13
    new-instance v3, Ld9/h;

    .line 14
    .line 15
    check-cast v2, Li9/b1;

    .line 16
    .line 17
    const/4 v4, 0x3

    .line 18
    invoke-direct {v3, v4, v2}, Ld9/h;-><init>(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const-string v2, "kotlin.Unit"

    .line 22
    .line 23
    invoke-static {v2, v0, v1, v3}, Lcom/bumptech/glide/c;->b(Ljava/lang/String;Lcom/bumptech/glide/d;[Lg9/e;Lkotlin/jvm/functions/Function1;)Lg9/f;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :pswitch_1b
    check-cast v2, Lg9/f;

    .line 29
    .line 30
    iget-object v0, v2, Lg9/f;->k:[Lg9/e;

    .line 31
    .line 32
    invoke-static {v2, v0}, Li9/d1;->e(Lg9/e;[Lg9/e;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0

    .line 41
    :pswitch_28
    check-cast v2, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lkotlin/reflect/KType;

    .line 48
    .line 49
    invoke-interface {v0}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    :pswitch_35
    sget-object v0, Lg9/c;->d:Lg9/c;

    .line 55
    .line 56
    new-array v1, v1, [Lg9/e;

    .line 57
    .line 58
    new-instance v3, Ld9/h;

    .line 59
    .line 60
    check-cast v2, Le9/e;

    .line 61
    .line 62
    const/4 v4, 0x1

    .line 63
    invoke-direct {v3, v4, v2}, Ld9/h;-><init>(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const-string v4, "e9.c"

    .line 67
    .line 68
    invoke-static {v4, v0, v1, v3}, Lcom/bumptech/glide/c;->b(Ljava/lang/String;Lcom/bumptech/glide/d;[Lg9/e;Lkotlin/jvm/functions/Function1;)Lg9/f;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, v2, Le9/e;->a:Lkotlin/reflect/KClass;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    new-instance v2, Lg9/b;

    .line 78
    .line 79
    invoke-direct {v2, v0, v1}, Lg9/b;-><init>(Lg9/f;Lkotlin/reflect/KClass;)V

    .line 80
    .line 81
    .line 82
    return-object v2

    .line 83
    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_35
        :pswitch_28
        :pswitch_1b
    .end packed-switch
.end method
