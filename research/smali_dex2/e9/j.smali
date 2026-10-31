.class public final Le9/j;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final c:Le9/j;

.field public static final d:Le9/j;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Le9/j;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Le9/j;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Le9/j;->c:Le9/j;

    .line 9
    .line 10
    new-instance v0, Le9/j;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v0, v1, v2}, Le9/j;-><init>(II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Le9/j;->d:Le9/j;

    .line 17
    .line 18
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .registers 3

    .line 1
    iput p2, p0, Le9/j;->b:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    iget v0, p0, Le9/j;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_4c

    .line 4
    .line 5
    .line 6
    check-cast p1, Lkotlin/reflect/KClass;

    .line 7
    .line 8
    check-cast p2, Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object v0, Lj9/c;->a:Lj9/a;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-static {v0, p2, v1}, Lcom/bumptech/glide/d;->u(Lj9/b;Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v1, Le9/i;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-direct {v1, p2, v2}, Le9/i;-><init>(Ljava/util/List;I)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0, v1}, Lcom/bumptech/glide/d;->o(Lkotlin/reflect/KClass;Ljava/util/ArrayList;Lkotlin/jvm/functions/Function0;)Le9/b;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_2a

    .line 37
    .line 38
    invoke-static {p1}, Lf9/a;->a(Le9/b;)Le9/b;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    const/4 p1, 0x0

    .line 44
    :goto_2b
    return-object p1

    .line 45
    :pswitch_2c
    check-cast p1, Lkotlin/reflect/KClass;

    .line 46
    .line 47
    check-cast p2, Ljava/util/List;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    sget-object v0, Lj9/c;->a:Lj9/a;

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    invoke-static {v0, p2, v1}, Lcom/bumptech/glide/d;->u(Lj9/b;Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    new-instance v1, Le9/i;

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-direct {v1, p2, v2}, Le9/i;-><init>(Ljava/util/List;I)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1, v0, v1}, Lcom/bumptech/glide/d;->o(Lkotlin/reflect/KClass;Ljava/util/ArrayList;Lkotlin/jvm/functions/Function0;)Le9/b;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    return-object p1

    .line 76
    nop

    .line 77
    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_2c
    .end packed-switch
.end method
