.class public final synthetic Landroidx/core/util/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroidx/core/util/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/core/util/Predicate;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;I)V
    .locals 0

    .line 12
    iput p3, p0, Landroidx/core/util/a;->a:I

    iput-object p1, p0, Landroidx/core/util/a;->b:Landroidx/core/util/Predicate;

    iput-object p2, p0, Landroidx/core/util/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;Landroidx/core/util/Predicate;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Landroidx/core/util/a;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/core/util/a;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/core/util/a;->b:Landroidx/core/util/Predicate;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/core/util/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/core/util/a;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Class;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/core/util/a;->b:Landroidx/core/util/Predicate;

    .line 11
    .line 12
    invoke-static {v0, v1, p1}, Landroidx/core/content/IntentSanitizer$Builder;->e(Ljava/lang/Class;Landroidx/core/util/Predicate;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :pswitch_0
    iget-object v0, p0, Landroidx/core/util/a;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Landroidx/core/util/Predicate;

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/core/util/a;->b:Landroidx/core/util/Predicate;

    .line 22
    .line 23
    invoke-static {v1, v0, p1}, Landroidx/core/util/Predicate;->e(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :pswitch_1
    iget-object v0, p0, Landroidx/core/util/a;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Landroidx/core/util/Predicate;

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/core/util/a;->b:Landroidx/core/util/Predicate;

    .line 33
    .line 34
    invoke-static {v1, v0, p1}, Landroidx/core/util/Predicate;->c(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
