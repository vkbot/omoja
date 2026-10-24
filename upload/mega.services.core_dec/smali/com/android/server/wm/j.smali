.class public final synthetic Lcom/android/server/wm/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/server/wm/v;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/j;->a:Lcom/android/server/wm/v;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/j;->a:Lcom/android/server/wm/v;

    invoke-virtual {p0}, Lcom/android/server/wm/v;->z()V

    return-void
.end method
