.class public final Landroidx/lifecycle/y;
.super Landroidx/lifecycle/e;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Landroidx/lifecycle/z;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/z;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/y;->this$1:Landroidx/lifecycle/z;

    invoke-direct {p0}, Landroidx/lifecycle/e;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Landroidx/lifecycle/y;->this$1:Landroidx/lifecycle/z;

    iget-object p1, p1, Landroidx/lifecycle/z;->this$0:Landroidx/lifecycle/a0;

    invoke-virtual {p1}, Landroidx/lifecycle/a0;->b()V

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Landroidx/lifecycle/y;->this$1:Landroidx/lifecycle/z;

    iget-object p1, p1, Landroidx/lifecycle/z;->this$0:Landroidx/lifecycle/a0;

    iget v0, p1, Landroidx/lifecycle/a0;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Landroidx/lifecycle/a0;->b:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Landroidx/lifecycle/a0;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/lifecycle/a0;->g:Landroidx/lifecycle/p;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/p;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/lifecycle/a0;->e:Z

    :cond_0
    return-void
.end method
