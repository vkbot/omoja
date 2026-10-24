.class public final Lv1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/j;->r:Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;

    iput p2, p0, Lv1/j;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lv1/j;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f1200df

    goto :goto_0

    :cond_0
    const v0, 0x7f1200de

    :goto_0
    iget-object p0, p0, Lv1/j;->r:Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lk2/d;->a(Landroid/content/Context;II)V

    return-void
.end method
