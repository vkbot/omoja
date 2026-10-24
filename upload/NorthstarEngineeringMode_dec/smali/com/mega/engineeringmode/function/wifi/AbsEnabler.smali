.class public abstract Lcom/mega/engineeringmode/function/wifi/AbsEnabler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Landroid/widget/CompoundButton;

.field public final c:Lg1/g;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/widget/CompoundButton;Landroidx/lifecycle/Lifecycle;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/CompoundButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/lifecycle/Lifecycle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg1/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lg1/g;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/wifi/AbsEnabler;->c:Lg1/g;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/wifi/AbsEnabler;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/mega/engineeringmode/function/wifi/AbsEnabler;->b:Landroid/widget/CompoundButton;

    invoke-virtual {p3, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public abstract a(Z)V
.end method

.method public final b(Z)V
    .locals 3

    iget-object p0, p0, Lcom/mega/engineeringmode/function/wifi/AbsEnabler;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public abstract onDestroy()V
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation
.end method

.method public abstract onStart()V
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation
.end method
