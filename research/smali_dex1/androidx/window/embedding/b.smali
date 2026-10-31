.class public final synthetic Landroidx/window/embedding/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Landroidx/window/embedding/SplitRule;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/embedding/SplitRule;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/window/embedding/b;->a:Landroidx/window/embedding/SplitRule;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/window/embedding/b;->a:Landroidx/window/embedding/SplitRule;

    .line 2
    .line 3
    check-cast p1, Landroid/view/WindowMetrics;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/window/embedding/EmbeddingAdapter;->e(Landroidx/window/embedding/SplitRule;Landroid/view/WindowMetrics;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
