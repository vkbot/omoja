.class public final synthetic Ln1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/display/DisplayActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/display/DisplayActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/b;->a:Lcom/mega/engineeringmode/function/display/DisplayActivity;

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 1

    sget v0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->v:I

    iget-object p0, p0, Ln1/b;->a:Lcom/mega/engineeringmode/function/display/DisplayActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    const-string p1, "DisplayActivity"

    const-string/jumbo v0, "systemui is visible"

    invoke-static {p1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;

    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->b1:Lcom/mega/engineeringmode/ui/MegaSwitch;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/ui/MegaSwitch;->setChecked(Z)V

    :cond_0
    return-void
.end method
