.class Landroidx/savedstate/SavedStateRegistry$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/l;


# instance fields
.field public final synthetic a:Landroidx/savedstate/c;


# direct methods
.method public constructor <init>(Landroidx/savedstate/c;)V
    .locals 0

    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Landroidx/savedstate/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/n;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Landroidx/savedstate/c;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/savedstate/c;->e:Z

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, v0, Landroidx/savedstate/c;->e:Z

    :cond_1
    :goto_0
    return-void
.end method
