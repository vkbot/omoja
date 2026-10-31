.class public final synthetic Landroidx/window/embedding/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/window/embedding/EmbeddingAdapter;

.field public final synthetic c:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/embedding/EmbeddingAdapter;Ljava/util/Set;I)V
    .registers 4

    .line 1
    iput p3, p0, Landroidx/window/embedding/c;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/window/embedding/c;->b:Landroidx/window/embedding/EmbeddingAdapter;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/window/embedding/c;->c:Ljava/util/Set;

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
    .registers 4

    .line 1
    iget v0, p0, Landroidx/window/embedding/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1c

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/window/embedding/c;->c:Ljava/util/Set;

    .line 7
    .line 8
    check-cast p1, Landroid/util/Pair;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/window/embedding/c;->b:Landroidx/window/embedding/EmbeddingAdapter;

    .line 11
    .line 12
    invoke-static {v1, v0, p1}, Landroidx/window/embedding/EmbeddingAdapter;->d(Landroidx/window/embedding/EmbeddingAdapter;Ljava/util/Set;Landroid/util/Pair;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :pswitch_10
    iget-object v0, p0, Landroidx/window/embedding/c;->c:Ljava/util/Set;

    .line 18
    .line 19
    check-cast p1, Landroid/util/Pair;

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/window/embedding/c;->b:Landroidx/window/embedding/EmbeddingAdapter;

    .line 22
    .line 23
    invoke-static {v1, v0, p1}, Landroidx/window/embedding/EmbeddingAdapter;->a(Landroidx/window/embedding/EmbeddingAdapter;Ljava/util/Set;Landroid/util/Pair;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    nop

    .line 29
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method
