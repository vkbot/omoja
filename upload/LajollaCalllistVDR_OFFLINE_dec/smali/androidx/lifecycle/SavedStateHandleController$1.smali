.class Landroidx/lifecycle/SavedStateHandleController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/l;


# virtual methods
.method public final b(Landroidx/lifecycle/n;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    if-eq p2, p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method
