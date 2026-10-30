.class public final synthetic Landroidx/window/layout/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic b:Lx8/b;


# direct methods
.method public synthetic constructor <init>(Lx8/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/window/layout/a;->b:Lx8/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/window/layout/a;->b:Lx8/b;

    .line 2
    .line 3
    check-cast p1, Landroidx/window/layout/WindowLayoutInfo;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->c(Lx8/b;Landroidx/window/layout/WindowLayoutInfo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
