.class public final Li9/s0;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iput p1, p0, Li9/s0;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Li9/s0;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Li9/s0;->d:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Li9/s0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_58

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Throwable;

    .line 7
    .line 8
    iget-object p1, p0, Li9/s0;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Ld9/e;

    .line 11
    .line 12
    iget-object v0, p0, Li9/s0;->d:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ld9/e;->c(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p1

    .line 20
    :pswitch_13
    check-cast p1, Lg9/a;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Li9/s0;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Le9/b;

    .line 28
    .line 29
    invoke-interface {v0}, Le9/h;->a()Lg9/e;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "first"

    .line 34
    .line 35
    invoke-static {p1, v1, v0}, Lg9/a;->a(Lg9/a;Ljava/lang/String;Lg9/e;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Li9/s0;->d:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Le9/b;

    .line 41
    .line 42
    invoke-interface {v0}, Le9/h;->a()Lg9/e;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "second"

    .line 47
    .line 48
    invoke-static {p1, v1, v0}, Lg9/a;->a(Lg9/a;Ljava/lang/String;Lg9/e;)V

    .line 49
    .line 50
    .line 51
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p1

    .line 54
    :pswitch_35
    check-cast p1, Lg9/a;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Li9/s0;->c:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Le9/b;

    .line 62
    .line 63
    invoke-interface {v0}, Le9/h;->a()Lg9/e;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "key"

    .line 68
    .line 69
    invoke-static {p1, v1, v0}, Lg9/a;->a(Lg9/a;Ljava/lang/String;Lg9/e;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Li9/s0;->d:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v0, Le9/b;

    .line 75
    .line 76
    invoke-interface {v0}, Le9/h;->a()Lg9/e;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v1, "value"

    .line 81
    .line 82
    invoke-static {p1, v1, v0}, Lg9/a;->a(Lg9/a;Ljava/lang/String;Lg9/e;)V

    .line 83
    .line 84
    .line 85
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 86
    .line 87
    return-object p1

    .line 88
    nop

    .line 89
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_35
        :pswitch_13
    .end packed-switch
.end method
