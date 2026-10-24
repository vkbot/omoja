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

    iget-object p0, p0, Landroidx/lifecycle/y;->this$1:Landroidx/lifecycle/z;

    iget-object p0, p0, Landroidx/lifecycle/z;->this$0:Landroidx/lifecycle/a0;

    invoke-virtual {p0}, Landroidx/lifecycle/a0;->b()V

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Landroidx/lifecycle/y;->this$1:Landroidx/lifecycle/z;

    iget-object p0, p0, Landroidx/lifecycle/z;->this$0:Landroidx/lifecycle/a0;

    iget p1, p0, Landroidx/lifecycle/a0;->a:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/lifecycle/a0;->a:I

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Landroidx/lifecycle/a0;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/a0;->f:Landroidx/lifecycle/p;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/a0;->d:Z

    :cond_0
    return-void
.end method
