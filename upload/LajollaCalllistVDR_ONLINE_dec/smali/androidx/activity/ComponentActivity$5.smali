.class Landroidx/activity/ComponentActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/ComponentActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/activity/ComponentActivity;


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/ComponentActivity$5;->a:Landroidx/activity/ComponentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/n;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    iget-object p1, p0, Landroidx/activity/ComponentActivity$5;->a:Landroidx/activity/ComponentActivity;

    iget-object p2, p1, Landroidx/activity/ComponentActivity;->f:Landroidx/lifecycle/g0;

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/activity/g;

    if-eqz p2, :cond_0

    iget-object p2, p2, Landroidx/activity/g;->a:Landroidx/lifecycle/g0;

    iput-object p2, p1, Landroidx/activity/ComponentActivity;->f:Landroidx/lifecycle/g0;

    :cond_0
    iget-object p2, p1, Landroidx/activity/ComponentActivity;->f:Landroidx/lifecycle/g0;

    if-nez p2, :cond_1

    new-instance p2, Landroidx/lifecycle/g0;

    invoke-direct {p2}, Landroidx/lifecycle/g0;-><init>()V

    iput-object p2, p1, Landroidx/activity/ComponentActivity;->f:Landroidx/lifecycle/g0;

    :cond_1
    iget-object p1, p1, Landroidx/activity/ComponentActivity;->d:Landroidx/lifecycle/p;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/p;->b(Landroidx/lifecycle/m;)V

    return-void
.end method
